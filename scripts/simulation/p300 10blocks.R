library(MASS)
library(Matrix)
library(igraph)
library(beam)
library(matrixcalc)

##################################################
###### true precision matrix 및 자료 생성 ########
##################################################

# 블록 수, 전체 크기, sparsity 설정
p_total     <- 300
n_blocks    <- 10
block_size  <- p_total / n_blocks   # = 30
sparsity    <- 0.10                 # 10% non-zero off-diagonals

set.seed(101010001)  # 재현 가능하도록 시드 고정

# 한 개 블록 생성 함수
create_one_block <- function(size, sparsity, diag_val = 1, offdiag_min = 0.3, offdiag_max = 0.6) {
  B <- matrix(0, nrow = size, ncol = size)
  diag(B) <- diag_val
  
  # 비대각 원소 개수와, 0으로 셋팅할 개수 계산
  n_off <- size * (size - 1) / 2
  n_zero <- round(n_off * (1 - sparsity))
  
  # 절반(상삼각) random values 생성
  vals <- runif(n_off, min = offdiag_min, max = offdiag_max)
  zero_idx <- sample(seq_len(n_off), n_zero)
  vals[zero_idx] <- 0
  
  # 상삼각에 채우고, 대칭 복사
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

# 블록들 생성
blocks <- lapply(seq_len(n_blocks),
                 function(i) create_one_block(block_size, sparsity))

# 전체 precision matrix 조립
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

true_precision_p300_10blocks <- create_block_precision_matrix(blocks)

# positive-definite 보정(최소 고유값이 1e-2 이상이 되도록)
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

true_precision_p300_10blocks <- pd_matrix(true_precision_p300_10blocks)
is.positive.definite(true_precision_p300_10blocks)
true_covariance_p300_10blocks <- solve(true_precision_p300_10blocks)

binary_matrix <- function(matrix) {
  matrix[matrix != 0] <- 1
  diag(matrix) <- 0
  return(matrix)
}

heatmap(binary_matrix(true_precision_p300_10blocks),
        Rowv = NA, Colv = NA,
        col = c("white", "black"),
        scale = "none")

##################################################################
######################### sampling ###############################
##################################################################
# n=100
# 데이터셋 1 생성
set.seed(1000)
p300_10blocks_n100_1 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 2 생성
set.seed(1001)
p300_10blocks_n100_2 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 3 생성
set.seed(1002)
p300_10blocks_n100_3 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 4 생성
set.seed(1003)
p300_10blocks_n100_4 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 5 생성
set.seed(1004)
p300_10blocks_n100_5 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 6 생성
set.seed(1005)
p300_10blocks_n100_6 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 7 생성
set.seed(1006)
p300_10blocks_n100_7 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 8 생성
set.seed(1007)
p300_10blocks_n100_8 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 9 생성
set.seed(1008)
p300_10blocks_n100_9 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 10 생성
set.seed(1009)
p300_10blocks_n100_10 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 11 생성
set.seed(1010)
p300_10blocks_n100_11 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 12 생성
set.seed(1011)
p300_10blocks_n100_12 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 13 생성
set.seed(1012)
p300_10blocks_n100_13 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 14 생성
set.seed(1013)
p300_10blocks_n100_14 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 15 생성
set.seed(1014)
p300_10blocks_n100_15 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 16 생성
set.seed(1015)
p300_10blocks_n100_16 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 17 생성
set.seed(1016)
p300_10blocks_n100_17 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 18 생성
set.seed(1017)
p300_10blocks_n100_18 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 19 생성
set.seed(1018)
p300_10blocks_n100_19 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 20 생성
set.seed(1019)
p300_10blocks_n100_20 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 21 생성
set.seed(1020)
p300_10blocks_n100_21 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 22 생성
set.seed(1021)
p300_10blocks_n100_22 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 23 생성
set.seed(1022)
p300_10blocks_n100_23 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 24 생성
set.seed(1023)
p300_10blocks_n100_24 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 25 생성
set.seed(1024)
p300_10blocks_n100_25 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 26 생성
set.seed(1025)
p300_10blocks_n100_26 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 27 생성
set.seed(1026)
p300_10blocks_n100_27 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 28 생성
set.seed(1027)
p300_10blocks_n100_28 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 29 생성
set.seed(1028)
p300_10blocks_n100_29 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 30 생성
set.seed(1029)
p300_10blocks_n100_30 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 31 생성
set.seed(1030)
p300_10blocks_n100_31 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 32 생성
set.seed(1031)
p300_10blocks_n100_32 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 33 생성
set.seed(1032)
p300_10blocks_n100_33 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 34 생성
set.seed(1033)
p300_10blocks_n100_34 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 35 생성
set.seed(1034)
p300_10blocks_n100_35 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 36 생성
set.seed(1035)
p300_10blocks_n100_36 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 37 생성
set.seed(1036)
p300_10blocks_n100_37 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 38 생성
set.seed(1037)
p300_10blocks_n100_38 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 39 생성
set.seed(1038)
p300_10blocks_n100_39 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 40 생성
set.seed(1039)
p300_10blocks_n100_40 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 41 생성
set.seed(1040)
p300_10blocks_n100_41 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 42 생성
set.seed(1041)
p300_10blocks_n100_42 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 43 생성
set.seed(1042)
p300_10blocks_n100_43 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 44 생성
set.seed(1043)
p300_10blocks_n100_44 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 45 생성
set.seed(1044)
p300_10blocks_n100_45 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 46 생성
set.seed(1045)
p300_10blocks_n100_46 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 47 생성
set.seed(1046)
p300_10blocks_n100_47 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 48 생성
set.seed(1047)
p300_10blocks_n100_48 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 49 생성
set.seed(1048)
p300_10blocks_n100_49 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 50 생성
set.seed(1049)
p300_10blocks_n100_50 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 51 생성
set.seed(1050)
p300_10blocks_n100_51 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 52 생성
set.seed(1051)
p300_10blocks_n100_52 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 53 생성
set.seed(1052)
p300_10blocks_n100_53 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 54 생성
set.seed(1053)
p300_10blocks_n100_54 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 55 생성
set.seed(1054)
p300_10blocks_n100_55 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 56 생성
set.seed(1055)
p300_10blocks_n100_56 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 57 생성
set.seed(1056)
p300_10blocks_n100_57 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 58 생성
set.seed(1057)
p300_10blocks_n100_58 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 59 생성
set.seed(1058)
p300_10blocks_n100_59 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 60 생성
set.seed(1059)
p300_10blocks_n100_60 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 61 생성
set.seed(1060)
p300_10blocks_n100_61 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 62 생성
set.seed(1061)
p300_10blocks_n100_62 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 63 생성
set.seed(1062)
p300_10blocks_n100_63 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 64 생성
set.seed(1063)
p300_10blocks_n100_64 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 65 생성
set.seed(1064)
p300_10blocks_n100_65 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 66 생성
set.seed(1065)
p300_10blocks_n100_66 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 67 생성
set.seed(1066)
p300_10blocks_n100_67 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 68 생성
set.seed(1067)
p300_10blocks_n100_68 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 69 생성
set.seed(1068)
p300_10blocks_n100_69 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 70 생성
set.seed(1069)
p300_10blocks_n100_70 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 71 생성
set.seed(1070)
p300_10blocks_n100_71 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 72 생성
set.seed(1071)
p300_10blocks_n100_72 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 73 생성
set.seed(1072)
p300_10blocks_n100_73 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 74 생성
set.seed(1073)
p300_10blocks_n100_74 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 75 생성
set.seed(1074)
p300_10blocks_n100_75 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 76 생성
set.seed(1075)
p300_10blocks_n100_76 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 77 생성
set.seed(1076)
p300_10blocks_n100_77 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 78 생성
set.seed(1077)
p300_10blocks_n100_78 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 79 생성
set.seed(1078)
p300_10blocks_n100_79 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 80 생성
set.seed(1079)
p300_10blocks_n100_80 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 81 생성
set.seed(1080)
p300_10blocks_n100_81 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 82 생성
set.seed(1081)
p300_10blocks_n100_82 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 83 생성
set.seed(1082)
p300_10blocks_n100_83 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 84 생성
set.seed(1083)
p300_10blocks_n100_84 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 85 생성
set.seed(1084)
p300_10blocks_n100_85 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 86 생성
set.seed(1085)
p300_10blocks_n100_86 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 87 생성
set.seed(1086)
p300_10blocks_n100_87 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 88 생성
set.seed(1087)
p300_10blocks_n100_88 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 89 생성
set.seed(1088)
p300_10blocks_n100_89 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 90 생성
set.seed(1089)
p300_10blocks_n100_90 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 91 생성
set.seed(1090)
p300_10blocks_n100_91 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 92 생성
set.seed(1091)
p300_10blocks_n100_92 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 93 생성
set.seed(1092)
p300_10blocks_n100_93 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 94 생성
set.seed(1093)
p300_10blocks_n100_94 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 95 생성
set.seed(1094)
p300_10blocks_n100_95 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 96 생성
set.seed(1095)
p300_10blocks_n100_96 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 97 생성
set.seed(1096)
p300_10blocks_n100_97 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 98 생성
set.seed(1097)
p300_10blocks_n100_98 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 99 생성
set.seed(1098)
p300_10blocks_n100_99 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 100 생성
set.seed(1099)
p300_10blocks_n100_100 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)


# n=200
# 데이터셋 1 생성
set.seed(2000)
p300_10blocks_n200_1 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 2 생성
set.seed(2001)
p300_10blocks_n200_2 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 3 생성
set.seed(2002)
p300_10blocks_n200_3 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 4 생성
set.seed(2003)
p300_10blocks_n200_4 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 5 생성
set.seed(2004)
p300_10blocks_n200_5 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 6 생성
set.seed(2005)
p300_10blocks_n200_6 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 7 생성
set.seed(2006)
p300_10blocks_n200_7 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 8 생성
set.seed(2007)
p300_10blocks_n200_8 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 9 생성
set.seed(2008)
p300_10blocks_n200_9 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 10 생성
set.seed(2009)
p300_10blocks_n200_10 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 11 생성
set.seed(2010)
p300_10blocks_n200_11 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 12 생성
set.seed(2011)
p300_10blocks_n200_12 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 13 생성
set.seed(2012)
p300_10blocks_n200_13 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 14 생성
set.seed(2013)
p300_10blocks_n200_14 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 15 생성
set.seed(2014)
p300_10blocks_n200_15 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 16 생성
set.seed(2015)
p300_10blocks_n200_16 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 17 생성
set.seed(2016)
p300_10blocks_n200_17 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 18 생성
set.seed(2017)
p300_10blocks_n200_18 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 19 생성
set.seed(2018)
p300_10blocks_n200_19 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 20 생성
set.seed(2019)
p300_10blocks_n200_20 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 21 생성
set.seed(2020)
p300_10blocks_n200_21 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 22 생성
set.seed(2021)
p300_10blocks_n200_22 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 23 생성
set.seed(2022)
p300_10blocks_n200_23 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 24 생성
set.seed(2023)
p300_10blocks_n200_24 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 25 생성
set.seed(2024)
p300_10blocks_n200_25 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 26 생성
set.seed(2025)
p300_10blocks_n200_26 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 27 생성
set.seed(2026)
p300_10blocks_n200_27 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 28 생성
set.seed(2027)
p300_10blocks_n200_28 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 29 생성
set.seed(2028)
p300_10blocks_n200_29 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 30 생성
set.seed(2029)
p300_10blocks_n200_30 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 31 생성
set.seed(2030)
p300_10blocks_n200_31 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 32 생성
set.seed(2031)
p300_10blocks_n200_32 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 33 생성
set.seed(2032)
p300_10blocks_n200_33 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 34 생성
set.seed(2033)
p300_10blocks_n200_34 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 35 생성
set.seed(2034)
p300_10blocks_n200_35 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 36 생성
set.seed(2035)
p300_10blocks_n200_36 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 37 생성
set.seed(2036)
p300_10blocks_n200_37 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 38 생성
set.seed(2037)
p300_10blocks_n200_38 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 39 생성
set.seed(2038)
p300_10blocks_n200_39 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 40 생성
set.seed(2039)
p300_10blocks_n200_40 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 41 생성
set.seed(2040)
p300_10blocks_n200_41 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 42 생성
set.seed(2041)
p300_10blocks_n200_42 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 43 생성
set.seed(2042)
p300_10blocks_n200_43 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 44 생성
set.seed(2043)
p300_10blocks_n200_44 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 45 생성
set.seed(2044)
p300_10blocks_n200_45 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 46 생성
set.seed(2045)
p300_10blocks_n200_46 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 47 생성
set.seed(2046)
p300_10blocks_n200_47 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 48 생성
set.seed(2047)
p300_10blocks_n200_48 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 49 생성
set.seed(2048)
p300_10blocks_n200_49 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 50 생성
set.seed(2049)
p300_10blocks_n200_50 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 51 생성
set.seed(2050)
p300_10blocks_n200_51 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 52 생성
set.seed(2051)
p300_10blocks_n200_52 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 53 생성
set.seed(2052)
p300_10blocks_n200_53 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 54 생성
set.seed(2053)
p300_10blocks_n200_54 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 55 생성
set.seed(2054)
p300_10blocks_n200_55 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 56 생성
set.seed(2055)
p300_10blocks_n200_56 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 57 생성
set.seed(2056)
p300_10blocks_n200_57 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 58 생성
set.seed(2057)
p300_10blocks_n200_58 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 59 생성
set.seed(2058)
p300_10blocks_n200_59 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 60 생성
set.seed(2059)
p300_10blocks_n200_60 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 61 생성
set.seed(2060)
p300_10blocks_n200_61 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 62 생성
set.seed(2061)
p300_10blocks_n200_62 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 63 생성
set.seed(2062)
p300_10blocks_n200_63 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 64 생성
set.seed(2063)
p300_10blocks_n200_64 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 65 생성
set.seed(2064)
p300_10blocks_n200_65 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 66 생성
set.seed(2065)
p300_10blocks_n200_66 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 67 생성
set.seed(2066)
p300_10blocks_n200_67 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 68 생성
set.seed(2067)
p300_10blocks_n200_68 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 69 생성
set.seed(2068)
p300_10blocks_n200_69 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 70 생성
set.seed(2069)
p300_10blocks_n200_70 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 71 생성
set.seed(2070)
p300_10blocks_n200_71 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 72 생성
set.seed(2071)
p300_10blocks_n200_72 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 73 생성
set.seed(2072)
p300_10blocks_n200_73 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 74 생성
set.seed(2073)
p300_10blocks_n200_74 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 75 생성
set.seed(2074)
p300_10blocks_n200_75 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 76 생성
set.seed(2075)
p300_10blocks_n200_76 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 77 생성
set.seed(2076)
p300_10blocks_n200_77 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 78 생성
set.seed(2077)
p300_10blocks_n200_78 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 79 생성
set.seed(2078)
p300_10blocks_n200_79 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 80 생성
set.seed(2079)
p300_10blocks_n200_80 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 81 생성
set.seed(2080)
p300_10blocks_n200_81 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 82 생성
set.seed(2081)
p300_10blocks_n200_82 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 83 생성
set.seed(2082)
p300_10blocks_n200_83 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 84 생성
set.seed(2083)
p300_10blocks_n200_84 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 85 생성
set.seed(2084)
p300_10blocks_n200_85 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 86 생성
set.seed(2085)
p300_10blocks_n200_86 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 87 생성
set.seed(2086)
p300_10blocks_n200_87 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 88 생성
set.seed(2087)
p300_10blocks_n200_88 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 89 생성
set.seed(2088)
p300_10blocks_n200_89 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 90 생성
set.seed(2089)
p300_10blocks_n200_90 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 91 생성
set.seed(2090)
p300_10blocks_n200_91 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 92 생성
set.seed(2091)
p300_10blocks_n200_92 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 93 생성
set.seed(2092)
p300_10blocks_n200_93 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 94 생성
set.seed(2093)
p300_10blocks_n200_94 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 95 생성
set.seed(2094)
p300_10blocks_n200_95 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 96 생성
set.seed(2095)
p300_10blocks_n200_96 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 97 생성
set.seed(2096)
p300_10blocks_n200_97 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 98 생성
set.seed(2097)
p300_10blocks_n200_98 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 99 생성
set.seed(2098)
p300_10blocks_n200_99 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)

# 데이터셋 100 생성
set.seed(2099)
p300_10blocks_n200_100 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_10blocks)


