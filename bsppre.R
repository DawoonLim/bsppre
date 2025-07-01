library(mvnfast)
# library(CovTools) # CovTools::PreEst.glasso(X)
library(Matrix)
library(ks)

##################################################################
######################### function ###############################
##################################################################

bmsppre <- function(X, Omega, prior = list(), nsample = list()) {
  # Estimate a sparse precision matrix using beta-mixture shrinkage prior
  
  n <- nrow(X)
  p <- ncol(X)
  # p>1 case & p=1 case should be considered respectively
  if(p > 1){
  
  ind_noi_all <- matrix(0, p-1, p)
  for (i in 1:p) {
    if (i == 1) {
      ind_noi <- 2:p
    } else if (i==p) {
      ind_noi <- 1:(p-1)
    } else {
      ind_noi <- c(1:(i-1), (i+1):p)
    }
    ind_noi_all[,i] <- ind_noi
  }
  
  
  # prior tau 값 중요
  privals <- list(a = 1/2, b = 1/2, lambda = 1, tau1sq = 10^4/(n*p^4))
  privals[names(prior)] <- prior
  a <- privals$a
  b <- privals$b
  lambda <- privals$lambda
  tau1sq <- privals$tau1sq
  
  
  # mcmc parameters
  mcvals <- list(burnin = 1000, nmc = 1000)
  mcvals[names(nsample)] <- nsample
  burnin <- mcvals$burnin
  nmc <- mcvals$nmc
  
  # fixed parameters
  S <- crossprod(X)
  
  # initial values
  if(min(eigen(Omega)$val) <= 1e-15) {
    Omega <- Omega + (-min(eigen(Omega)$values) + 0.001)*diag(p)
  }
  W <- solve(Omega) # Omega inverse 처음 한번만 계산
  Phi <- matrix(1, p, p)
  Psi <- matrix(1, p, p)
  tau <- matrix(tau1sq, p, p)
  
  
  # an array for posterior samples
  Omega_save <- matrix(0, nrow = nmc, ncol = p*(p+1)/2)
  Phi_save <- matrix(0, nrow = nmc, ncol = p*(p+1)/2)
  
  
  # blocked gibbs sampler
  nmcmc <- burnin + nmc
  elapsed.time <- system.time({
    pb <- progress::progress_bar$new(total = nmcmc)
    for (iter in 1:nmcmc) {
      pb$tick()
      
      for (i in 1:p) {
        ind_noi <- ind_noi_all[,i]
        tau_temp <- tau[ind_noi, i]
        
        W11 <- W[ind_noi, ind_noi, drop = FALSE] # Omega_(1,1) inverse
        W12 <- W[ind_noi, i, drop = FALSE] # Omega_(1,2) inverse
        S11 <- S[ind_noi, ind_noi, drop = FALSE]
        S12 <- S[ind_noi, i, drop = FALSE]
        
        invOme11 <- W11 - tcrossprod(W12)/W[i,i] # Omega 1,1 inverse
        invD <- diag(1/tau_temp) # D^{-1}
        
        
        C1 <- (S[i,i] + lambda) * invOme11 # first term of  C
        
        
        # Sample gamma (scalar v)
        beta <- Omega[ind_noi, i, drop = FALSE] # W_12
        gam <- rgamma(n=1, shape = n/2+1, rate = (S[i,i]+lambda)/2 ) # W_22
        
        if (length(tau_temp) == 1) {
          C <- C1 + matrix(1/tau_temp, nrow = 1, ncol = 1)
        } else {
          C <- C1 + diag(1/tau_temp)
        }
        
        # Sample beta (p-1 vector u)
        C <- (C + t(C))/2
        tryCatch(
          {
            C_chol <- chol(C) # Cholsky decomp. C = L^{T}L
          },
          error = function(cond) {
            C <- C + (-min(eigen(C)$values) + 0.001)*diag(ncol(C)) 
            C_chol <- chol(C)
          }
        )
        C_i <- chol2inv(C_chol) # inverse of L = inverse of C
        beta <- mvnfast::rmvn(n=1, mu= -C_i%*%S12, sigma= C_i)[,,drop=TRUE]
        
        # Omega update
        Omega[ind_noi, i] <- beta
        Omega[i, ind_noi] <- t(beta)
        invOme11beta <- invOme11 %*% beta # Omega 1,1 inverse * u
        Omega[i,i] <- gam + crossprod(beta, invOme11beta) # w_22 <- v + u^{T}* Omega11 inverse * u
        
        # Off-diagonal variance update
        for(j in ind_noi) {
          chi.phi <- Omega[j,i]^2/tau1sq
          if (chi.phi <= 1e-06) {
            chi.phi <- 1e-06
          }
          Phi[j,i] <- GIGrvg::rgig(n=1, lambda = a-1/2, chi = chi.phi, psi = 2*Psi[j,i])
          Phi[i,j] <- Phi[j,i]
          
          Psi[j,i] <- stats::rgamma(n=1, a+b, Phi[j,i]+1)
          Psi[i,j] <- Psi[j,i]
        }
        # phi = rho / (1 - rho) , v^2 = phi * tau
        tau[ind_noi,i] <- Phi[ind_noi,i] * tau1sq
        tau[i,ind_noi] <- tau[ind_noi,i]
        
        
        # Updating inverse of precision matrix according to one-column change of precision matrix
        W[ind_noi, ind_noi] <- invOme11 + tcrossprod(invOme11beta)/gam
        W12 <- -invOme11beta/gam
        W[ind_noi, i] <- W12
        W[i, ind_noi] <- t(W12)
        W[i, i] <- 1/gam
      }
      
      # checking positive definiteness
      if(!matrixcalc::is.positive.definite(Omega)) {
        Omega <- Omega + (-min(eigen(Omega)$values) + 0.001)*diag(p)
      }
      
      if (iter > burnin) {
        Omega_save[iter-burnin,] <- Omega[!upper.tri(Omega)]
        Phi_save[iter-burnin,] <- Phi[!upper.tri(Phi)]
      }
    }
  })}
  
  else{
    # p=1 case
    # prior
    privals <- list(a = 1/2, b = 1/2, lambda = 1, tau1sq = 10^4/(n*p^4))
    privals[names(prior)] <- prior
    lambda <- privals$lambda
    
    # fixed parameters
    S <- crossprod(X)
    
    # posterior distribution (gamma)
    a <- (n - 4)/2
    b <- (S + lambda)/2
    
    # posterior samples
    elapsed.time <- system.time({
    Omega_save <- matrix(rgamma(n = 1000, a, rate = b))
   })}
  
  out <- list()
  out$prior <- 'bmsp'
  out$Omega <- Omega_save
  if (exists("Phi_save")) {
    out$Phi <- Phi_save
  }
  out$p <- p
  out$mcmctime <- elapsed.time
  class(out) <- 'bsppre'
  out
}


##################################################################
######################### function ###############################
##################################################################
estimate.bsppre <- function(object, ...) {
  stopifnot(!is.null(object$Omega))
  
  # posterior samples
  post.sample <- object$Omega
  if (is.null(dim(post.sample))) {
    post.sample <- matrix(post.sample, ncol = 1)
  }
  p <- object$p
  nsample <- nrow(post.sample)
  
  # posterior mean
  post.est.m <- ks::invvech(colMeans(post.sample))
  
  class(post.est.m) <- 'postmean.bsppre'
  post.est.m
}



##################################################################
####################### inference to each block ########################
##################################################################
#block_p100_1_50 <- p100_50_50_n50_1[ ,1:50]
#block_p100_2_50 <- p100_50_50_n50_1[ ,51:100]
block_p100_1_50 <- p100_50_50_n50_1[ ,which(community_membership == 1)]
block_p100_2_50 <- p100_50_50_n50_1[ ,which(community_membership == 2)]


is.positive.definite(cov(block_p100_1_50))
min(eigen(cov(block_p100_1_50))$values)

sample_cov_block_p100_1_50 <- pd_matrix(cov(block_p100_1_50))
is.positive.definite(sample_cov_block_p100_1_50)


is.positive.definite(cov(block_p100_2_50))
min(eigen(cov(block_p100_2_50))$values)

sample_cov_block_p100_2_50 <- pd_matrix(cov(block_p100_2_50))
is.positive.definite(sample_cov_block_p100_2_50)


res_block_p100_1_50 <- bmsppre(block_p100_1_50, Omega =  diag(diag(solve(sample_cov_block_p100_1_50))))
post.est.m_block_p100_1_50 <- estimate.bsppre(res_block_p100_1_50)



matrix_3x3 <- matrix(1:30, nrow = 5, ncol = 6)

Omega_matrices3x3 <- apply(matrix_3x3, 1, function(x) {
  Omega_matrix <- matrix(0, 3, 3)
  Omega_matrix[upper.tri(Omega_matrix, diag = TRUE)] <- x
  Omega_matrix <- Omega_matrix + t(Omega_matrix) - diag(diag(Omega_matrix))
  return(Omega_matrix)
})
community_Omega_samples3x3 <- array(Omega_matrices3x3, dim = c(3, 3, 5))

###################
array_3x3x5 <- array(0, dim = c(3, 3, 5))
for (i in 1:5) {
  # 각 행의 원소 추출
  row_values <- matrix_3x3[i, ]
  
  
  # 3x3 행렬을 배열의 i번째 슬라이스에 할당
  array_3x3x5[, , i] <- ks::invvech(row_values)
}
###############################333



Omega_matrices1 <- apply(res_block_p100_1_50$Omega, 1, function(x) {
  Omega_matrix <- matrix(0, 50, 50)
  Omega_matrix[upper.tri(Omega_matrix, diag = TRUE)] <- x
  Omega_matrix <- Omega_matrix + t(Omega_matrix) - diag(diag(Omega_matrix))
  return(Omega_matrix)
})
community_Omega_samples1 <- array(Omega_matrices1, dim = c(50, 50, 1))
community_results[[1]] <- list(indices = c(1:50), Omega = community_Omega_samples1)


res_block_p100_2_50 <- bmsppre(block_p100_2_50, Omega =  diag(diag(solve(sample_cov_block_p100_2_50))))
post.est.m_block_p100_2_50 <- estimate.bsppre(res_block_p100_2_50)


Omega_matrices2 <- apply(res_block_p100_2_50$Omega, 1, function(x) {
  Omega_matrix <- matrix(0, 50, 50)
  Omega_matrix[upper.tri(Omega_matrix, diag = TRUE)] <- x
  Omega_matrix <- Omega_matrix + t(Omega_matrix) - diag(diag(Omega_matrix))
  return(Omega_matrix)
})
community_Omega_samples2 <- array(Omega_matrices2, dim = c(50, 50, 1))
community_results[[2]] <- list(indices = c(51:100), Omega = community_Omega_samples2)

res <- lapply(community_results, function(x) {
  list(indices = x$indices, Omega = x$Omega)
})
#### Omega_mean1 의 결과가 final matrix에 제대로 쌓이는지....?
Omega_mean1 <- apply(res [[1]]$Omega, c(1, 2), mean)
final_matrix_trial1 <- matrix(0, nrow = 50, ncol = 50)
final_matrix_trial1[1:50,1:50] <- Omega_mean1


res_p100_50_50_n50_1 <- integrate_community_results(res, p = 100)
diff_res_p100_final_matrix_trial1 <- true_precision_matrix_p100 - res_p100_50_50_n50_1
norm_f_diff_res_p100_final_trial1 <- norm(diff_res_p100_final_matrix_trial1, type="f") 
norm_1_diff_res_p100_final_trial1 <- norm(diff_res_p100_final_matrix_trial1, type="1") 
norm_2_diff_res_p100_final_trial1 <- norm(diff_res_p100_final_matrix_trial1, type="2") 
norm_m_diff_res_p100_final_trial1 <- norm(diff_res_p100_final_matrix_trial1, type="m") 






# 100x100 행렬을 0으로 초기화
res_p100_final_matrix <- matrix(0, nrow = 100, ncol = 100)

# 1~50번째 행과 열에 첫 번째 50x50 행렬을 삽입
res_p100_final_matrix[1:50, 1:50] <- post.est.m_block_p100_1_50

# 51~100번째 행과 열에 두 번째 50x50 행렬을 삽입
res_p100_final_matrix[51:100, 51:100] <- post.est.m_block_p100_2_50


diff_res_p100_final_matrix <- true_precision_matrix_p100 - res_p100_final_matrix
norm_f_diff_res_p100_final_matrix <- norm(diff_res_p100_final_matrix, type="f") 
norm_1_diff_res_p100_final_matrix <- norm(diff_res_p100_final_matrix, type="1") 
norm_2_diff_res_p100_final_matrix <- norm(diff_res_p100_final_matrix, type="2") 
norm_m_diff_res_p100_final_matrix <- norm(diff_res_p100_final_matrix, type="m") 

true_precision_matrix_p100[43,40]

just_pre_vs_parallel <- res_p100_final_matrix - estimated_p100_50_50_n50_1 
which(just_pre_vs_parallel > 0.1  , arr.ind = TRUE)
#precision[2,2]
res_block_p100_1_50$Omega [1000,51] 
result_p100_50_50_n50_1 $ result[[1]]$ Omega[5,44,590]


res_p100_final_matrix[7,2]
estimated_p100_50_50_n50_1[7,2]


##################################################################
####################### example p>=2 case ########################
##################################################################
set.seed(1331)
n <- 10
p <- 30

# generate a sparse precision matrix:
True.Omega <- matrix(0, nrow = p, ncol = p)
diag(True.Omega) <- runif(n = p, min = 0.2, max = 0.8)
Values <- runif(n = p*(p-1)/2, min = 0.2, max = 0.8) # off-diagonal negative
nonzeroIND <- which(rbinom(n=p*(p-1)/2,1,prob=1/p)==1)
zeroIND = (1:(p*(p-1)/2))[-nonzeroIND]
Values[zeroIND] <- 0
True.Omega[lower.tri(True.Omega)] <- Values
True.Omega[upper.tri(True.Omega)] <- t(True.Omega)[upper.tri(True.Omega)]
if(min(eigen(True.Omega)$values) <= 0){
  delta <- -min(eigen(True.Omega)$values) + 1.0e-5
  True.Omega <- True.Omega + delta*diag(p)
}


# generate a data
X <- MASS::mvrnorm(n = n, mu = rep(0, p), Sigma = solve(True.Omega))
sample_cov <- cov(X)

# result
if(min(eigen(sample_cov)$values) <= 0){
  delta <- -min(eigen(sample_cov)$values) + 1.0e-5
  sample_cov <- sample_cov + delta*diag(p)
}
sample_cov <- sample_cov + 1.0e-5 * diag(p)

set.seed(1331)
fout <- bmsppre(X, Omega =  diag(diag(solve(sample_cov))))
post.est.m <- estimate.bsppre(fout)

# graphical lasso
# CovTools::PreEst.glasso(X)
# image(True.Omega)
# image(g.lasso)
# image(post.est.m)
g.lasso <- PreEst.glasso(X) $ C


# norm comparison
diff_bsppre <- True.Omega - post.est.m
norm(diff_bsppre, type="f") 
norm(diff_bsppre, type="1") 
norm(diff_bsppre, type="2") 
norm(diff_bsppre, type="m") 


diff_glasso <- True.Omega - g.lasso
norm(diff_glasso, type="f") 
norm(diff_glasso, type="1") 
norm(diff_glasso, type="2") 
norm(diff_glasso, type="m") 


##################################################################
#################### example p =1  ###############################
##################################################################
set.seed(2214)
n <- 5
p <- 1
True.Omega_p1 <- runif(n = 1, min = 0.2, max = 0.8)
True.Sigma_p1 <- matrix(1/True.Omega_p1, nrow = 1, ncol = 1)

# generate a data
X1 <- MASS::mvrnorm(n = 5, mu = rep(0, 1), Sigma = True.Sigma_p1)

# result
fout_p1 <- bmsppre(X1, Omega =  diag(diag(solve(cov(X1)))))
post.est.m_p1 <- estimate.bsppre(fout_p1)

# RMSE
sqrt(mean((post.est.m_p1 - True.Omega_p1)^2))
sqrt(mean((solve(cov(X1)) - True.Omega_p1)^2))