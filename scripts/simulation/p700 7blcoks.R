# 전체 변수 수, 블록 수, sparsity 설정
p_total     <- 700
n_blocks    <- 7
block_size  <- p_total / n_blocks   # = 100
sparsity    <- 0.10                 # 10% non-zero off-diagonals

set.seed(101010001)  # 재현 가능하도록 시드 고정

# 한 개 블록 생성 함수 (변경 없음)
create_one_block <- function(size, sparsity, diag_val = 1, offdiag_min = 0.3, offdiag_max = 0.6) {
  B <- matrix(0, nrow = size, ncol = size)
  diag(B) <- diag_val
  
  n_off <- size * (size - 1) / 2
  n_zero <- round(n_off * (1 - sparsity))
  
  vals <- runif(n_off, min = offdiag_min, max = offdiag_max)
  zero_idx <- sample(seq_len(n_off), n_zero)
  vals[zero_idx] <- 0
  
  idx <- 1
  for (i in 1:(size-1)) {
    for (j in (i+1):size) {
      B[i, j] <- vals[idx]
      B[j, i] <- vals[idx]
      idx <- idx + 1
    }
  }
  return(B)
}

# 블록들 생성 (7개 × 100변수)
blocks <- lapply(seq_len(n_blocks),
                 function(i) create_one_block(block_size, sparsity))

# 전체 precision matrix 조립 함수 (변경 없음)
create_block_precision_matrix <- function(blocks) {
  sizes <- sapply(blocks, nrow)
  P <- matrix(0, sum(sizes), sum(sizes))
  idx <- 1
  for (b in blocks) {
    sz <- nrow(b)
    P[idx:(idx+sz-1), idx:(idx+sz-1)] <- b
    idx <- idx + sz
  }
  return(P)
}

# precision matrix 생성
true_precision_p700_7blocks <- create_block_precision_matrix(blocks)

# positive-definite 보정 함수 (변경 없음)
pd_matrix <- function(matrix) {
  ev <- eigen(matrix, symmetric = TRUE)
  min_eig <- min(ev$values)
  if (min_eig <= 1e-2) {
    adjustment <- (abs(min_eig) + 1e-2) * diag(nrow(matrix))
    matrix <- matrix + adjustment
  }
  return(matrix)
}

# PD 보정 적용
true_precision_p700_7blocks <- pd_matrix(true_precision_p700_7blocks)

is.positive.definite(true_precision_p700_7blocks)

# 대응되는 covariance matrix
true_covariance_p700_7blocks <- solve(true_precision_p700_7blocks)

# 이진 adjacency 행렬 및 히트맵
binary_matrix <- function(mat) {
  mat_bin <- mat
  mat_bin[mat_bin != 0] <- 1
  diag(mat_bin) <- 0
  return(mat_bin)
}

heatmap(binary_matrix(true_precision_p700_7blocks),
        Rowv = NA, Colv = NA,
        col = c("white", "black"),
        scale = "none")

##################################################################
######################### sampling ###############################
##################################################################
# n=300
# 데이터셋 1 생성
set.seed(1000)
p700_7blocks_n300_1 <- MASS::mvrnorm(n = 300, mu = rep(0, 700), Sigma = true_covariance_p700_7blocks)



result_p700_7blocks_n300_1 <- community_bsppre(p700_7blocks_n300_1, cluster_louvain, seed = 1)
estimated_p700_7blocks_n300_1 <- integrate_community_results(result_p700_7blocks_n300_1$result, p = 700)
diff_p700_7blocks_n300_1 <- true_precision_p700_7blocks - estimated_p700_7blocks_n300_1
norm_f_diff_p700_7blocks_n300_1 <- norm(diff_p700_7blocks_n300_1, type = "f")
norm_1_diff_p700_7blocks_n300_1 <- norm(diff_p700_7blocks_n300_1, type = "1")
norm_2_diff_p700_7blocks_n300_1 <- norm(diff_p700_7blocks_n300_1, type = "2")
norm_m_diff_p700_7blocks_n300_1 <- norm(diff_p700_7blocks_n300_1, type = "m")
result_p700_7blocks_n300_1$time
visualize_result_p700_7blocks_n300_1 <- visualize_communities(true_precision_p700_7blocks, result_p700_7blocks_n300_1$detected_communities, estimated_p700_7blocks_n300_1)




shock_SHDJ_p700_7blocks_n300_1 <- community_shock_bsppre(p700_7blocks_n300_1, "SHDJ", seed = 1)
estimated_shock_SHDJ_p700_7blocks_n300_1 <- integrate_community_results(shock_SHDJ_p700_7blocks_n300_1$result, p = 700)
diff_shock_SHDJ_p700_7blocks_n300_1 <- true_precision_p700_7blocks - estimated_shock_SHDJ_p700_7blocks_n300_1
norm_f_diff_shock_SHDJ_p700_7blocks_n300_1 <- norm(diff_shock_SHDJ_p700_7blocks_n300_1, type = "f")
norm_1_diff_shock_SHDJ_p700_7blocks_n300_1 <- norm(diff_shock_SHDJ_p700_7blocks_n300_1, type = "1")
norm_2_diff_shock_SHDJ_p700_7blocks_n300_1 <- norm(diff_shock_SHDJ_p700_7blocks_n300_1, type = "2")
norm_m_diff_shock_SHDJ_p700_7blocks_n300_1 <- norm(diff_shock_SHDJ_p700_7blocks_n300_1, type = "m")
shock_SHDJ_p700_7blocks_n300_1$time
visualize_shock_SHDJ_p700_7blocks_n300_1 <- visualize_communities(true_precision_p700_7blocks, shock_SHDJ_p700_7blocks_n300_1$detected_communities, estimated_shock_SHDJ_p700_7blocks_n300_1)

shock_SHRR_p700_7blocks_n300_1 <- community_shock_bsppre(p700_7blocks_n300_1, "SHRR", seed = 1)
estimated_shock_SHRR_p700_7blocks_n300_1 <- integrate_community_results(shock_SHRR_p700_7blocks_n300_1$result, p = 700)
diff_shock_SHRR_p700_7blocks_n300_1 <- true_precision_p700_7blocks - estimated_shock_SHRR_p700_7blocks_n300_1
norm_f_diff_shock_SHRR_p700_7blocks_n300_1 <- norm(diff_shock_SHRR_p700_7blocks_n300_1, type = "f")
norm_1_diff_shock_SHRR_p700_7blocks_n300_1 <- norm(diff_shock_SHRR_p700_7blocks_n300_1, type = "1")
norm_2_diff_shock_SHRR_p700_7blocks_n300_1 <- norm(diff_shock_SHRR_p700_7blocks_n300_1, type = "2")
norm_m_diff_shock_SHRR_p700_7blocks_n300_1 <- norm(diff_shock_SHRR_p700_7blocks_n300_1, type = "m")
shock_SHRR_p700_7blocks_n300_1$time
visualize_shock_SHRR_p700_7blocks_n300_1 <- visualize_communities(true_precision_p700_7blocks, shock_SHRR_p700_7blocks_n300_1$detected_communities, estimated_shock_SHRR_p700_7blocks_n300_1)



