library(mvnfast)
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

