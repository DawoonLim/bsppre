library(MASS)
library (glmnet)
library(glasso)
library(expm)
library(flare) # CLIME, TIGER
library(POET)
library(foreach)
library(doParallel)

# large precision matrix estrimation with unknown group structure
######################## simulation version #############################
Group_Detect=function(X, K, lambda1, lambda2, theta, Sigmatrue){
  # OUR method
  # input:
  # X: data
  # K: number of groups
  # theta: threshold for stop
  # lambda1: parameter for glmnet
  # lambda2: parameter for glasso regression
  
  # output:
  # Omega: estimated precision matrix
  # error: estimation error
  
  n=nrow(X)
  p=ncol(X)
  
 
  # centralize each row
  Y=sweep(X,1,rowMeans(X))
  
  # PCA
  eiv=eigen(t(Y)%*%Y/p)$vectors
  V=as.matrix(eiv[,1:(K-1)],ncol=K-1)
  
  # Kmeans
  clusterinf=kmeans(V, K)$cluster
  
  # detect orders based on cluster size
  B_count=c()
  for (i in 1:K) {
    B_count=c(B_count,length(which(clusterinf==i)))
  }
  seq1=order(B_count,decreasing = FALSE)
  
  # reorder sample X
  Bcluster=list()
  C=c()
  for (i in seq1) {
    Bcluster=c(Bcluster,list(which(clusterinf==i)))
    C=c(C,length(which(clusterinf==i)))
  }
  B=matrix(0,nrow = n,ncol = p)
  B[,1:C[1]]=X[,Bcluster[[1]]]
  for (i in 2:K) {
    B[, (sum(C[1:(i-1)])+1) : sum(C[1:i])] = X[,Bcluster[[i]]]
  }
  
  inverD=matrix(0,nrow=p,ncol=p)
  A=matrix(0,nrow=p,ncol=p)
  
  # for block 1
  X1=B[,1:C[1]]
  S1=t(X1)%*%(X1)
  S1=S1/n
  inverD1=glasso::glasso(S1,rho = lambda2)$wi
  inverD[1:C[1],1:C[1]]=inverD1
  
  # for other blocks
  for (i in 2:K) {
    numrepeat=1 # number of repeat times
    Zi=B[,1:sum(C[1:(i-1)])]
    Xi=B[,(sum(C[1:(i-1)])+1):(sum(C[1:i]))]
    
    # initial Ai0 (Di0^-1 is indentity matrix)
    wildX=c(Xi%*%diag(C[i]))
    wildX=as.matrix(wildX)
    
    wildZ=as.matrix(kronecker(diag(C[i]),Zi))
    
    if(ncol(wildZ)==1){
      lasso.mod=lm( wildX ~ 0+ wildZ)$coefficients
      newAi=t(matrix(lasso.mod,ncol=C[i]))
    }else{
      lasso.mod=glmnet::glmnet (wildZ, wildX, alpha=1, lambda=lambda1,intercept=FALSE)
      newAi=t(matrix(coef(lasso.mod)[-1],ncol=C[i]))
    }
    
    # initial Di1^-1 by Ai0
    Si=t(Xi-Zi%*%t(newAi))%*%(Xi-Zi%*%t(newAi))
    Si=Si/n
    newinverDi=glasso::glasso(Si,rho = lambda2)$wi
    
    # second time to calculate Ai and Di
    numrepeat=numrepeat+1
    oldAi=newAi
    oldinverDi=newinverDi
    wildX=c(Xi%*%expm::sqrtm(oldinverDi))
    wildX=as.matrix(wildX)
    
    wildZ=as.matrix(kronecker(expm::sqrtm(oldinverDi),Zi))
    
    if(ncol(wildZ)==1){
      lasso.mod=lm( wildX ~ 0+ wildZ)$coefficients
      newAi=t(matrix(lasso.mod,ncol=C[i]))
    }else{
      lasso.mod=glmnet::glmnet (wildZ, wildX, alpha=1, lambda=lambda1,intercept=FALSE)
      newAi=t(matrix(coef(lasso.mod)[-1],ncol=C[i]))
    }
    
    Si=t(Xi-Zi%*%t(newAi))%*%(Xi-Zi%*%t(newAi))
    Si=Si/n
    newinverDi=glasso::glasso(Si,rho = lambda2)$wi
    
    # judge whether converge
    conAi=sqrt(sum((oldAi-newAi)^2))
    coninverDi=sqrt(sum((oldinverDi-newinverDi)^2))
    
    while (numrepeat<100) {
      numrepeat=numrepeat+1
      oldAi=newAi
      oldinverDi=newinverDi
      wildX=c(Xi%*%expm::sqrtm(oldinverDi))
      wildX=as.matrix(wildX)
      
      wildZ=as.matrix(kronecker(expm::sqrtm(oldinverDi),Zi))
      
      if(ncol(wildZ)==1){
        lasso.mod=lm( wildX ~ 0+ wildZ)$coefficients
        newAi=t(matrix(lasso.mod,ncol=C[i]))
      }else{
        lasso.mod=glmnet::glmnet (wildZ, wildX, alpha=1, lambda=lambda1,intercept=FALSE)
        newAi=t(matrix(coef(lasso.mod)[-1],ncol=C[i]))
      }
      
      Si=t(Xi-Zi%*%t(newAi))%*%(Xi-Zi%*%t(newAi))
      Si=Si/n
      newinverDi=glasso::glasso(Si,rho = lambda2)$wi
      
      # judge whether converge
      conAi=sqrt(sum((oldAi-newAi)^2))
      coninverDi=sqrt(sum((oldinverDi-newinverDi)^2))
      
      if(conAi<theta && coninverDi<theta){
        break
      }
      
    }
    
    # insert Ai to A and inverDi to inverD
    A[(sum(C[1:(i-1)])+1):(sum(C[1:i])),1:(sum(C[1:(i-1)]))]=newAi
    inverD[(sum(C[1:(i-1)])+1):(sum(C[1:i])),(sum(C[1:(i-1)])+1):(sum(C[1:i]))]=newinverDi
  }
  
  hatT=diag(p)-A
  newOmega=t(hatT)%*%inverD%*%hatT
  
  Bcluster=c()
  for (i in seq1) {
    Bcluster=c(Bcluster,which(clusterinf==i))
  }
  new_Sigmatrue=Sigmatrue[,Bcluster]
  new_Sigmatrue=new_Sigmatrue[Bcluster,]
  
  
  # 계산 대상 행렬: 오차 행렬
  error_matrix <- new_Sigmatrue - newOmega
  
  # Frobenius norm (현재 계산 중인 방식)
  error_F <- norm(error_matrix, type = "f")
  
  # 1-norm: 열 합의 최댓값
  error_1 <- norm(error_matrix, type = "1")
  
  # 2-norm: 최대 특이값 (spectral norm)
  error_2 <- norm(error_matrix, type = "2")
  
  # M-norm: 행렬 내 원소의 절대값 최댓값
  error_M <- norm(error_matrix, type = "m")
  
  # 최종적으로 여러 norm 값을 반환
  return(list(Omega = newOmega, 
              error_F = error_F, 
              error_1 = error_1, 
              error_2 = error_2, 
              error_M = error_M))
}



######################## real data version #############################
Group_Detect = function(X, K, lambda1, lambda2, theta) {
  # OUR method with original-order precision matrix output
  # input:
  # X: data (n x p)
  # K: number of groups
  # lambda1: parameter for glmnet
  # lambda2: parameter for glasso regression
  # theta: threshold for convergence
  # output:
  # Omega: estimated precision matrix (reordered)
  # Omega_orig: estimated precision matrix (original variable order)
  # orderB: list of clusters (reordered indices)
  
  n = nrow(X)
  p = ncol(X)
  
  # 1. Center each row
  Y = sweep(X, 1, rowMeans(X))
  
  # 2. PCA for dimension reduction
  eiv = eigen(t(Y) %*% Y / p)$vectors
  V   = eiv[, 1:(K-1), drop = FALSE]
  
  # 3. K-means clustering on principal components
  clusterinf = kmeans(V, K)$cluster
  
  # 4. Order clusters by size (ascending)
  sizes = sapply(1:K, function(i) sum(clusterinf == i))
  seq1  = order(sizes)
  
  # 5. Reorder variables (columns of X)
  Bcluster = lapply(seq1, function(i) which(clusterinf == i))
  C        = sapply(Bcluster, length)
  B        = matrix(0, nrow = n, ncol = p)
  start    = 1
  for (i in seq_along(C)) {
    end       = start + C[i] - 1
    B[, start:end] = X[, Bcluster[[i]]]
    start = end + 1
  }
  
  # 6. Initialize precision components
  inverD = matrix(0, p, p)
  A      = matrix(0, p, p)
  
  # 6a. First block with glasso
  X1    = B[, 1:C[1], drop = FALSE]
  S1    = t(X1) %*% X1 / n
  invD1 = glasso::glasso(S1, rho = lambda2)$wi
  inverD[1:C[1], 1:C[1]] = invD1
  
  # 6b. Remaining blocks
  for (i in 2:K) {
    # block indices
    prev_idx = sum(C[1:(i-1)])
    Zi       = B[, 1:prev_idx, drop = FALSE]
    Xi       = B[, (prev_idx+1):(prev_idx + C[i]), drop = FALSE]
    numrepeat = 1
    # initial A
    wildX = as.numeric(Xi %*% diag(C[i]))
    wildZ = as.matrix(kronecker(diag(C[i]), Zi))
    if (ncol(wildZ) == 1) {
      coef0 = lm(wildX ~ 0 + wildZ)$coefficients
      newAi = t(matrix(coef0, ncol = C[i]))
    } else {
      mod    = glmnet::glmnet(wildZ, wildX, alpha = 1, lambda = lambda1, intercept = FALSE)
      newAi  = t(matrix(coef(mod)[-1], ncol = C[i]))
    }
    
    # initial D inverse
    Si         = t(Xi - Zi %*% t(newAi)) %*% (Xi - Zi %*% t(newAi)) / n
    newInvDi   = glasso::glasso(Si, rho = lambda2)$wi
    
    # alternating updates
    while (numrepeat < 100) {
      numrepeat   = numrepeat + 1
      oldAi       = newAi
      oldInvDi    = newInvDi
      sqrtInvDi   = expm::sqrtm(oldInvDi)
      wildX       = as.numeric(Xi %*% sqrtInvDi)
      wildZ       = as.matrix(kronecker(sqrtInvDi, Zi))
      if (ncol(wildZ) == 1) {
        coef1    = lm(wildX ~ 0 + wildZ)$coefficients
        newAi    = t(matrix(coef1, ncol = C[i]))
      } else {
        mod2     = glmnet::glmnet(wildZ, wildX, alpha = 1, lambda = lambda1, intercept = FALSE)
        newAi    = t(matrix(coef(mod2)[-1], ncol = C[i]))
      }
      
      Si       = t(Xi - Zi %*% t(newAi)) %*% (Xi - Zi %*% t(newAi)) / n
      newInvDi = glasso::glasso(Si, rho = lambda2)$wi
      
      # convergence check
      if (sqrt(sum((oldAi - newAi)^2)) < theta && sqrt(sum((oldInvDi - newInvDi)^2)) < theta) {
        break
      }
    }
    # assign final block
    A[(prev_idx+1):(prev_idx+C[i]), 1:prev_idx]      = newAi
    inverD[(prev_idx+1):(prev_idx+C[i]), (prev_idx+1):(prev_idx+C[i])] = newInvDi
  }
  
  # 7. Compute precision matrix (reordered)
  hatT     = diag(p) - A
  Omega    = t(hatT) %*% inverD %*% hatT
  
  # 8. Restore original variable order
  perm     = unlist(Bcluster)
  inv_perm = order(perm)
  Omega_orig = Omega[inv_perm, inv_perm]
  
  return(
    list(
      Omega      = Omega_orig,
      orderB     = Bcluster
    )
  )
}















############################################################################
Group_Precision=function(X,K,lambda1,lambda2,theta, Sigmatrue){
  # ORACLE method
  # when K=P, it becomes NO-GROUP method 
  # input:
  # X: data
  # K: number of groups
  # theta: judge when to stop
  # lambda1: parameter for glmnet
  # lambda2: parameter for glasso regression
  
  # output:
  # Omega: estimated precision matrix
  # error: estimation error
  
  n=nrow(X)
  p=ncol(X)
  numblock=K
  sizeblock=p/numblock
  
  inverD=matrix(0,nrow=p,ncol=p)
  A=matrix(0,nrow=p,ncol=p)
  # for block 1
  X1=X[,1:sizeblock]
  S1=t(X1)%*%(X1)
  S1=S1/n
  inverD1=glasso::glasso(S1,rho = lambda2)$wi
  inverD[1:sizeblock,1:sizeblock]=inverD1
  
  
  # for other blocks
  for (i in 2:numblock) {
    numrepeat=1 # number of repeat times
    Zi=X[,1:((i-1)*sizeblock)]
    Xi=X[,((i-1)*sizeblock+1):(i*sizeblock)]
    
    # initial Ai0 (Di0^-1 is indentity matrix)
    wildX=c(Xi%*%diag(sizeblock))
    wildX=as.vector(wildX)
    
    wildZ=kronecker(diag(sizeblock),Zi)
    
    if(ncol(wildZ)==1){
      lasso.mod=lm( wildX ~ 0+ wildZ)$coefficients
      newAi=t(matrix(lasso.mod,ncol=sizeblock))
    }else{
      lasso.mod=glmnet::glmnet (wildZ, wildX, alpha=1, lambda=lambda1,intercept=FALSE)
      newAi=t(matrix(coef(lasso.mod)[-1],ncol=sizeblock))
    }
    
    # initial Di1^-1 by Ai0
    Si=t(Xi-Zi%*%t(newAi))%*%(Xi-Zi%*%t(newAi))
    Si=Si/n
    newinverDi=glasso::glasso(Si,rho = lambda2)$wi
    
    # second time to calculate Ai and Di
    numrepeat=numrepeat+1
    oldAi=newAi
    oldinverDi=newinverDi
    wildX=c(Xi%*%expm::sqrtm(oldinverDi))
    wildX=as.vector(wildX)
    
    wildZ=kronecker(expm::sqrtm(oldinverDi),Zi)
    
    if(ncol(wildZ)==1){
      lasso.mod=lm( wildX ~ 0+ wildZ)$coefficients
      newAi=t(matrix(lasso.mod,ncol=sizeblock))
    }else{
      lasso.mod=glmnet::glmnet (wildZ, wildX, alpha=1, lambda=lambda1,intercept=FALSE)
      newAi=t(matrix(coef(lasso.mod)[-1],ncol=sizeblock))
    }
    
    Si=t(Xi-Zi%*%t(newAi))%*%(Xi-Zi%*%t(newAi))
    Si=Si/n
    newinverDi=glasso::glasso(Si,rho = lambda2)$wi
    
    # judge whether converge
    conAi=sqrt(sum((oldAi-newAi)^2))
    coninverDi=sqrt(sum((oldinverDi-newinverDi)^2))
    
    while (numrepeat<100) {
      if(conAi<theta && coninverDi<theta){
        break
      }
      
      numrepeat=numrepeat+1
      oldAi=newAi
      oldinverDi=newinverDi
      wildX=c(Xi%*%expm::sqrtm(oldinverDi))
      wildX=as.vector(wildX)
      
      wildZ=kronecker(expm::sqrtm(oldinverDi),Zi)
      
      if(ncol(wildZ)==1){
        lasso.mod=lm( wildX ~ 0+ wildZ)$coefficients
        newAi=t(matrix(lasso.mod,ncol=sizeblock))
      }else{
        lasso.mod=glmnet::glmnet (wildZ, wildX, alpha=1, lambda=lambda1,intercept=FALSE)
        newAi=t(matrix(coef(lasso.mod)[-1],ncol=sizeblock))
      }
      
      Si=t(Xi-Zi%*%t(newAi))%*%(Xi-Zi%*%t(newAi))
      Si=Si/n
      newinverDi=glasso::glasso(Si,rho = lambda2)$wi
      
      conAi=sqrt(sum((oldAi-newAi)^2))
      coninverDi=sqrt(sum((oldinverDi-newinverDi)^2))
      
    }
    
    # insert Ai to A and inverDi to inverD
    A[((i-1)*sizeblock+1):(i*sizeblock),1:((i-1)*sizeblock)]=newAi
    inverD[((i-1)*sizeblock+1):(i*sizeblock),((i-1)*sizeblock+1):(i*sizeblock)]=newinverDi
  }
  
  hatT=diag(p)-A
  newOmega=t(hatT)%*%inverD%*%hatT
  serror=sqrt(sum((solve(Sigmatrue)-newOmega)^2))
  
  return(list(Omega=newOmega,error=serror))
}

##########################
### n=50 p=200        ###
##########################
n=50
p=200
K=4 # number of groups 
sizeblock=p/K # size of blocks

lambda1=0.01 
lambda2=0.01 
theta=0.01 # judge when to stop the loop

# Model 1; true covariance
CSblock=matrix(0.9,nrow = sizeblock,ncol = sizeblock)+diag(sizeblock)*0.1
Sigmatrue1=kronecker(diag(K),CSblock) # true covariance matrix

compare_par=function(i, Sigmatrue, n, p){
  set.seed(i)
  X=as.matrix(MASS::mvrnorm(n=n,mu=rep(0,p),Sigma = Sigmatrue))
  
  error1=Group_Detect(X,K,lambda1,lambda2,theta, Sigmatrue)$error # true block number 그대로 적용함
  error2=Group_Precision(X,K,lambda1,lambda2,theta, Sigmatrue)$error
  error3=Group_Precision(X,p,lambda1,lambda2,theta, Sigmatrue)$error
  error5=sqrt(sum((solve(Sigmatrue)-glasso::glasso(cov(X), rho=.1)$wi)^2))
  error6=sqrt(sum((solve(Sigmatrue)-flare::sugm(X,nlambda=1,method = "tiger")$icov[[1]])^2))
  error7=sqrt(sum((solve(Sigmatrue)-flare::sugm(X,nlambda=1,method = "clime")$icov[[1]])^2))
  error8=sqrt(sum((solve(Sigmatrue)-solve(POET::POET(t(X))$SigmaY))^2))
  
  result_error=c(error1,error2,error3,error5,error6,error7,error8)
  result_error
}

# The environment and setup of the computer cluster may have an impact on the random number generating process of R.
x <- foreach(i=1:200,.combine='rbind') %dopar% compare_par(i, Sigmatrue1, n, p)
colnames(x)=c("OUR","ORACLE","NO-GROUP","G-LASSO","TIGER","CLIME","POET")
x=rbind(x,apply(x,2,mean))
x=rbind(x,apply(x,2,sd))
x[201,]

Group_Detect(x,K,lambda1,lambda2,theta, Sigmatrue1)$ Omega_matrix





#################################################################
################### 그룹수 추정 함수 M hat ######################
#################################################################
estimate_M_and_groups <- function(X) {
  # X: n x p 행렬, 각 열이 표준화되어 있다고 가정
  
  # 1. 기본 변수 설정
  n <- nrow(X)
  p <- ncol(X)
  
  # 2. 샘플 공분산 행렬 계산: S = (n-1)^(-1) * X^T X
  S <- cov(X)  # cov 함수는 1/(n-1)을 사용
  
  # 3. S의 고윳값과 고유벡터 계산
  eig <- eigen(S)
  # eigen()는 대칭행렬의 경우 고윳값을 내림차순으로 반환합니다.
  lambda <- eig$values    # lambda1 >= lambda2 >= ... >= lambda_p
  V <- eig$vectors        # 각 열이 해당 고유벡터
  
  # 4. M_max와 C_M 설정 (Xia, Xu, Zhu (2015)의 추천)
  M_max <- floor(p / 2)
  C_M <- log(p) / (10 * p)
  
  # 5. 식 (2.4): 각 m에 대해 (lambda_{m+1} + C_M) / (lambda_m + C_M) 계산
  ratio <- (lambda[2:(M_max+1)] + C_M) / (lambda[1:M_max] + C_M)
  
  # 6. ratio가 최소가 되는 m을 hat{M}으로 추정
  hat_M <- which.min(ratio)
  
  # 7. 그룹 구조 복원: p개의 변수(행)를 leading (hat_M - 1) 고유벡터 공간에 투영 후,
  #    hat_M 개의 군집으로 k-평균 클러스터링 수행.
  #    (hat_M가 1이면 클러스터링 대신 모두 하나의 그룹으로 처리)
  if (hat_M > 1) {
    # S는 p x p 행렬이므로, V는 p x p이며 각 행은 변수에 해당합니다.
    V_leading <- V[, 1:(hat_M - 1), drop = FALSE]  # p x (hat_M-1) 행렬
    set.seed(123)  # 재현성을 위해
    km <- kmeans(V_leading, centers = hat_M, nstart = 25)
    groups <- km$cluster  # 각 변수의 군집 할당 (길이 p)
  } else {
    groups <- rep(1, p)
  }
  
  # 결과 반환: 추정된 hat_M, 계산된 ratio, 그룹 할당, 고윳값 및 고유벡터
  return(list(hat_M = hat_M,
              ratio = ratio,
              groups = groups,
              eigenvalues = lambda,
              eigenvectors = V))
}

M_hat_p300_10blocks_SBM_n100_1 <- estimate_M_and_groups(p300_10blocks_SBM_n100_1) $ hat_M
M_hat_p300_100_100_100_n100_1 <- estimate_M_and_groups(p300_100_100_100_n100_1) $ hat_M
M_hat_p300_100_100_100_n200_1 <- estimate_M_and_groups(p300_100_100_100_n200_1) $ hat_M
M_hat_p300_n100_random_1 <- estimate_M_and_groups(p300_n100_random_1) $ hat_M
M_hat_p300_n200_random_1 <- estimate_M_and_groups(p300_n200_random_1) $ hat_M
M_hat_p500_5block_n200_1 <- estimate_M_and_groups(p500_5block_n200_1) $ hat_M
M_hat_p500_5block_n300_1 <- estimate_M_and_groups(p500_5block_n300_1) $ hat_M
M_hat_p500_n200_random_1 <- estimate_M_and_groups(p500_n200_random_1) $ hat_M
M_hat_p500_n300_random_1 <- estimate_M_and_groups(p500_n300_random_1) $ hat_M


estimate_M(p300_30blocks_SBM_n200_1)


estimate_M <- function(X) {
  # X: n x p 데이터 행렬 (각 변수는 이미 표준화되어 있다고 가정)
  p <- ncol(X)              # 변수의 개수
  Mmax <- floor(p / 2)       # 최대 그룹 수: p/2 (논문 제안)
  C <- log(p) / (10 * p)     # C 값: ln(p)/(10*p) (논문 제안)
  
  S <- cov(X)             # 샘플 공분산 행렬 계산
  ev <- eigen(S, symmetric = TRUE)
  lambda <- ev$values      # 고유값 (내림차순 정렬됨)
  
  # m = 1부터 Mmax까지 (lambda[m+1] + C) / (lambda[m] + C) 비율 계산
  ratios <- (lambda[2:(Mmax + 1)] + C) / (lambda[1:Mmax] + C)
  
  # 비율이 최소인 m을 추정된 그룹 수로 선택
  Mhat <- which.min(ratios)
  return(Mhat)
}

estimate_M(scale(p300_100_100_100_n100_1))
estimate_M(scale(p300_100_100_100_n200_1))
estimate_M(scale(p300_n100_random_1))



#################################################################
################### 그룹수 추정 scree plot ######################
#################################################################
pca <- prcomp(p300_n100_random_1, scale = TRUE)
variance = pca $sdev^2 / sum(pca $sdev^2)
p1=ggplot() + 
  aes(c(1:10), variance[1:10])+
  geom_line() + 
  geom_point(size=4)+
  xlab("Principal Components") + 
  ylab("Eigenvalues") +
  ylim(0, 0.7)+ scale_x_continuous(breaks=1:10)

pcaData <- as.data.frame(pca$x[, 1:2])
colnames(pcaData) <- c("PC1", "PC2") 
p2=ggplot(pcaData) +theme(aspect.ratio=1)+
  aes(PC1, PC2) + # define plot area
  geom_point(size = 2) + # adding data points
  coord_fixed()+ # fixing coordinates
  xlab("First Principle Component") + 
  ylab("Second Principle Component")

p1+p2

###############################################################
