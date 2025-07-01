library(igraph)
library(beam)
library(matrixcalc)
library(parallel)
library(doParallel)
library(foreach)
library(doRNG)
# library(stats)
library(GIGrvg)
library(mvnfast)




#########################################################
################# posterior sampling ####################
#########################################################
community_bsppre <- function(X, community_detection_func, numCores = NULL, seed = 123, ...) {
  set.seed(seed)
  # computing time
  elapsed.time <- system.time({
    
    # Edge selection (finding the support by screening)
    sample_fit_select <- beam::beam.select(beam(X),thres = 0.1, method = "BH")
    
    #sample_fit <- beam(X, type="conditional")
    #partial_corr <- cond(sample_fit)
    
    # binary matrix function
    binary_matrix <- function(matrix) {
      matrix[matrix != 0] <- 1
      diag(matrix) <- 0
      return(matrix)
    }
    
    # pd_matrix fuction
    pd_matrix <- function(matrix) {
      eigenvalues <- eigen(matrix)$values
      min_eigenvalue <- min(eigenvalues)
      
      if (min_eigenvalue <= 1e-2) {
        adjustment <- (abs(min_eigenvalue) + 1e-2) * diag(nrow(matrix))
        adjusted_matrix <- matrix + adjustment
        return(adjusted_matrix)
      } else {
        return(matrix)
      }
    }
    
    # Screen 결과를 binary로 변환
    screened_matrix <- pcor(sample_fit_select)
    screened_binary_matrix <- binary_matrix(screened_matrix)
    
    # community detection function
    find_community <- function(matrix, community_detection_func) {
      graph <- igraph::graph_from_adjacency_matrix(matrix, mode = "undirected")
      communities <- community_detection_func(graph)
      return(communities)
    }
    
    community_result <- find_community(screened_binary_matrix, community_detection_func)
    community_membership <- c(igraph::membership(community_result))
    
    
    
    # Estimate a sparse precision matrix using beta-mixture shrinkage prior
    bmsppre <- function(X, Omega, prior = list(), nsample = list()) {
      # Estimate a sparse precision matrix using beta-mixture shrinkage prior
      
      n <- nrow(X)
      p <- ncol(X)
      #nmc <- nmc
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
        
        

        # prior
        # tau value : 10^4/(p^4) or 10^4/(n*p^4) or community_tau1sq or 10^5/(n*p^4)
        # min tau value 10 works
        # so far... 10^4/(p^6), 10^4/(p^5) is best
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
        #pb <- progress::progress_bar$new(total = nmcmc)
        for (iter in 1:nmcmc) {
          #pb$tick()
          
          for (i in 1:p) {
            ind_noi <- ind_noi_all[,i]
            tau_temp <- tau[ind_noi,i]
            
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
            Omega[i,i] <- gam + crossprod(beta, invOme11beta) # w_22 <- v + u^{T} Omega11 inverse u
            
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
      }
      
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
        Omega_save <- matrix(rgamma(n = 1000, a, rate = b))
      }
      
      out <- list()
      #out$prior <- 'bmsp'
      out$Omega <- Omega_save
      #if (exists("Phi_save")) {
      #  out$Phi <- Phi_save
      #}
      #out$p <- p
      class(out) <- 'bsppre'
      out
    }
    
    
    # 병렬 처리를 위한 코어 수 설정
    if (is.null(numCores)) {
      numCores <- parallel::detectCores() - 1
    }
    
    cl <- parallel::makeCluster(numCores)
    registerDoParallel(cl)
    
    nmc <- 1000
    # doRNG를 통해 난수 시드 설정
    doRNG::registerDoRNG(seed)
    
    community_results <- foreach::foreach(comm = unique(community_membership),
                                          .packages = c("igraph", "mvnfast", "GIGrvg", "matrixcalc", "MASS", "ks", "stats")
                                          ) %dopar% {
                                            
                                            tryCatch({
                                              community_indices <- which(community_membership == comm)
                                              community_data <- X[, community_indices, drop = FALSE]
                                              p_k <- length(community_indices)
                                              
                                              cov_community_data <- pd_matrix(stats::cov(community_data))
                                              bsppre_result <- bmsppre(community_data, Omega = diag(diag(solve(cov_community_data))))
                                              
                                              community_results <- list()
                                              if (p_k == 1) {
                                                variable_index <- community_indices[1]
                                                for (i in 1:nmc) {
                                                  community_results[[i]] <- matrix(
                                                    c(variable_index, variable_index, bsppre_result$Omega[i, ]),
                                                    ncol = 3, byrow = TRUE
                                                  )
                                                }
                                              } else {
                                                for (i in 1:nmc) {
                                                  omega_sample <- ks::invvech(bsppre_result$Omega[i, ])
                                                  nonzero_indices <- which(omega_sample != 0, arr.ind = TRUE)
                                                  nonzero_values <- omega_sample[nonzero_indices]
                                                  
                                                  community_results[[i]] <- cbind(
                                                    community_indices[nonzero_indices[, 1]],
                                                    community_indices[nonzero_indices[, 2]],
                                                    nonzero_values
                                                  )
                                                }
                                              }
                                              community_results
                                            }, error = function(e) {
                                              message("error (community ", comm, "): ", e)
                                              return(NULL)
                                            })
                                          }
    
    # Stop the cluster
    stopCluster(cl)  
    closeAllConnections() 
    
    
    # 모든 커뮤니티 결과를 병합 (단계별 유지)
    final_results <- vector("list", nmc)  # 각 MCMC 단계별 결과를 저장할 리스트
    
    for (i in 1:nmc) {
      # i번째 MCMC 단계의 결과 병합
      temp_result <- do.call(rbind, lapply(community_results, `[[`, i))
      
      # 상삼각 원소만 필터링 (중복 제거)
      temp_result <- temp_result[temp_result[, 1] <= temp_result[, 2], ]
      
      # i번째 단계의 결과를 리스트에 저장
      final_results[[i]] <- temp_result
    }
    
    
  })
  return(list(result = final_results, time = elapsed.time, detected_communities = community_membership))
}


#########################################################
################# integrating result ####################
#########################################################
integrate_community_results <- function(mcmc_results, p) {
  # mcmc_results: 이전 함수의 결과 (MCMC 샘플 리스트)
  # p: 변수의 개수 (최종 정밀도 행렬의 크기)
  
  # 초기화: 행렬 크기를 지정하고 0으로 채움
  precision_matrix <- matrix(0, nrow = p, ncol = p)
  count_matrix <- matrix(0, nrow = p, ncol = p)
  
  # 각 단계별 결과를 순회하며 평균 계산
  for (sample in mcmc_results) {
    for (row in 1:nrow(sample)) {
      i <- sample[row, 1]  # 행 인덱스
      j <- sample[row, 2]  # 열 인덱스
      value <- sample[row, 3]  # 값
      
      # 상삼각 행렬만 사용하므로 대칭성 유지
      precision_matrix[i, j] <- precision_matrix[i, j] + value
      if (i != j) {
        precision_matrix[j, i] <- precision_matrix[j, i] + value
      }
      
      # 각 위치의 등장 횟수를 기록
      count_matrix[i, j] <- count_matrix[i, j] + 1
      if (i != j) {
        count_matrix[j, i] <- count_matrix[j, i] + 1
      }
    }
  }
  
  # 등장 횟수가 0인 곳은 그대로 두고 평균 계산
  nonzero_indices <- count_matrix > 0
  precision_matrix[nonzero_indices] <- 
    precision_matrix[nonzero_indices] / count_matrix[nonzero_indices]
  
  return(precision_matrix)
}

