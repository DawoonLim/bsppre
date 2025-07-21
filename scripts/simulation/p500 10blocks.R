library(MASS)
library(Matrix)
library(igraph)
library(beam)
library(matrixcalc)

##################################################
###### true precision matrix 및 자료 생성 ########
##################################################

# 블록 수, 전체 크기, sparsity 설정
p_total     <- 500
n_blocks    <- 10
block_size  <- p_total / n_blocks   # = 50
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

true_precision_p500_10blocks <- create_block_precision_matrix(blocks)

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

true_precision_p500_10blocks <- pd_matrix(true_precision_p500_10blocks)
is.positive.definite(true_precision_p500_10blocks)
true_covariance_p500_10blocks <- solve(true_precision_p500_10blocks)

binary_matrix <- function(matrix) {
  matrix[matrix != 0] <- 1
  diag(matrix) <- 0
  return(matrix)
}

heatmap(binary_matrix(true_precision_p500_10blocks),
        Rowv = NA, Colv = NA,
        col = c("white", "black"),
        scale = "none")

##################################################################
######################### sampling ###############################
##################################################################
# n=200
# 1번째 데이터셋 생성
set.seed(1000)
p500_10blocks_n200_1 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 2번째 데이터셋 생성
set.seed(1001)
p500_10blocks_n200_2 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 3번째 데이터셋 생성
set.seed(1002)
p500_10blocks_n200_3 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 4번째 데이터셋 생성
set.seed(1003)
p500_10blocks_n200_4 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 5번째 데이터셋 생성
set.seed(1004)
p500_10blocks_n200_5 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 6번째 데이터셋 생성
set.seed(1005)
p500_10blocks_n200_6 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 7번째 데이터셋 생성
set.seed(1006)
p500_10blocks_n200_7 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 8번째 데이터셋 생성
set.seed(1007)
p500_10blocks_n200_8 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 9번째 데이터셋 생성
set.seed(1008)
p500_10blocks_n200_9 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 10번째 데이터셋 생성
set.seed(1009)
p500_10blocks_n200_10 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 11번째 데이터셋 생성
set.seed(1010)
p500_10blocks_n200_11 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 12번째 데이터셋 생성
set.seed(1011)
p500_10blocks_n200_12 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 13번째 데이터셋 생성
set.seed(1012)
p500_10blocks_n200_13 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 14번째 데이터셋 생성
set.seed(1013)
p500_10blocks_n200_14 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 15번째 데이터셋 생성
set.seed(1014)
p500_10blocks_n200_15 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 16번째 데이터셋 생성
set.seed(1015)
p500_10blocks_n200_16 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 17번째 데이터셋 생성
set.seed(1016)
p500_10blocks_n200_17 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 18번째 데이터셋 생성
set.seed(1017)
p500_10blocks_n200_18 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 19번째 데이터셋 생성
set.seed(1018)
p500_10blocks_n200_19 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 20번째 데이터셋 생성
set.seed(1019)
p500_10blocks_n200_20 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 21번째 데이터셋 생성
set.seed(1020)
p500_10blocks_n200_21 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 22번째 데이터셋 생성
set.seed(1021)
p500_10blocks_n200_22 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 23번째 데이터셋 생성
set.seed(1022)
p500_10blocks_n200_23 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 24번째 데이터셋 생성
set.seed(1023)
p500_10blocks_n200_24 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 25번째 데이터셋 생성
set.seed(1024)
p500_10blocks_n200_25 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 26번째 데이터셋 생성
set.seed(1025)
p500_10blocks_n200_26 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 27번째 데이터셋 생성
set.seed(1026)
p500_10blocks_n200_27 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 28번째 데이터셋 생성
set.seed(1027)
p500_10blocks_n200_28 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 29번째 데이터셋 생성
set.seed(1028)
p500_10blocks_n200_29 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 30번째 데이터셋 생성
set.seed(1029)
p500_10blocks_n200_30 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 31번째 데이터셋 생성
set.seed(1030)
p500_10blocks_n200_31 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 32번째 데이터셋 생성
set.seed(1031)
p500_10blocks_n200_32 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 33번째 데이터셋 생성
set.seed(1032)
p500_10blocks_n200_33 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 34번째 데이터셋 생성
set.seed(1033)
p500_10blocks_n200_34 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 35번째 데이터셋 생성
set.seed(1034)
p500_10blocks_n200_35 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 36번째 데이터셋 생성
set.seed(1035)
p500_10blocks_n200_36 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 37번째 데이터셋 생성
set.seed(1036)
p500_10blocks_n200_37 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 38번째 데이터셋 생성
set.seed(1037)
p500_10blocks_n200_38 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 39번째 데이터셋 생성
set.seed(1038)
p500_10blocks_n200_39 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 40번째 데이터셋 생성
set.seed(1039)
p500_10blocks_n200_40 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 41번째 데이터셋 생성
set.seed(1040)
p500_10blocks_n200_41 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 42번째 데이터셋 생성
set.seed(1041)
p500_10blocks_n200_42 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 43번째 데이터셋 생성
set.seed(1042)
p500_10blocks_n200_43 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 44번째 데이터셋 생성
set.seed(1043)
p500_10blocks_n200_44 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 45번째 데이터셋 생성
set.seed(1044)
p500_10blocks_n200_45 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 46번째 데이터셋 생성
set.seed(1045)
p500_10blocks_n200_46 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 47번째 데이터셋 생성
set.seed(1046)
p500_10blocks_n200_47 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 48번째 데이터셋 생성
set.seed(1047)
p500_10blocks_n200_48 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 49번째 데이터셋 생성
set.seed(1048)
p500_10blocks_n200_49 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 50번째 데이터셋 생성
set.seed(1049)
p500_10blocks_n200_50 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 51번째 데이터셋 생성
set.seed(1050)
p500_10blocks_n200_51 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 52번째 데이터셋 생성
set.seed(1051)
p500_10blocks_n200_52 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 53번째 데이터셋 생성
set.seed(1052)
p500_10blocks_n200_53 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 54번째 데이터셋 생성
set.seed(1053)
p500_10blocks_n200_54 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 55번째 데이터셋 생성
set.seed(1054)
p500_10blocks_n200_55 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 56번째 데이터셋 생성
set.seed(1055)
p500_10blocks_n200_56 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 57번째 데이터셋 생성
set.seed(1056)
p500_10blocks_n200_57 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 58번째 데이터셋 생성
set.seed(1057)
p500_10blocks_n200_58 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 59번째 데이터셋 생성
set.seed(1058)
p500_10blocks_n200_59 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 60번째 데이터셋 생성
set.seed(1059)
p500_10blocks_n200_60 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 61번째 데이터셋 생성
set.seed(1060)
p500_10blocks_n200_61 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 62번째 데이터셋 생성
set.seed(1061)
p500_10blocks_n200_62 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 63번째 데이터셋 생성
set.seed(1062)
p500_10blocks_n200_63 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 64번째 데이터셋 생성
set.seed(1063)
p500_10blocks_n200_64 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 65번째 데이터셋 생성
set.seed(1064)
p500_10blocks_n200_65 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 66번째 데이터셋 생성
set.seed(1065)
p500_10blocks_n200_66 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 67번째 데이터셋 생성
set.seed(1066)
p500_10blocks_n200_67 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 68번째 데이터셋 생성
set.seed(1067)
p500_10blocks_n200_68 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 69번째 데이터셋 생성
set.seed(1068)
p500_10blocks_n200_69 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 70번째 데이터셋 생성
set.seed(1069)
p500_10blocks_n200_70 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 71번째 데이터셋 생성
set.seed(1070)
p500_10blocks_n200_71 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 72번째 데이터셋 생성
set.seed(1071)
p500_10blocks_n200_72 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 73번째 데이터셋 생성
set.seed(1072)
p500_10blocks_n200_73 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 74번째 데이터셋 생성
set.seed(1073)
p500_10blocks_n200_74 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 75번째 데이터셋 생성
set.seed(1074)
p500_10blocks_n200_75 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 76번째 데이터셋 생성
set.seed(1075)
p500_10blocks_n200_76 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 77번째 데이터셋 생성
set.seed(1076)
p500_10blocks_n200_77 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 78번째 데이터셋 생성
set.seed(1077)
p500_10blocks_n200_78 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 79번째 데이터셋 생성
set.seed(1078)
p500_10blocks_n200_79 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 80번째 데이터셋 생성
set.seed(1079)
p500_10blocks_n200_80 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 81번째 데이터셋 생성
set.seed(1080)
p500_10blocks_n200_81 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 82번째 데이터셋 생성
set.seed(1081)
p500_10blocks_n200_82 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 83번째 데이터셋 생성
set.seed(1082)
p500_10blocks_n200_83 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 84번째 데이터셋 생성
set.seed(1083)
p500_10blocks_n200_84 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 85번째 데이터셋 생성
set.seed(1084)
p500_10blocks_n200_85 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 86번째 데이터셋 생성
set.seed(1085)
p500_10blocks_n200_86 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 87번째 데이터셋 생성
set.seed(1086)
p500_10blocks_n200_87 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 88번째 데이터셋 생성
set.seed(1087)
p500_10blocks_n200_88 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 89번째 데이터셋 생성
set.seed(1088)
p500_10blocks_n200_89 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 90번째 데이터셋 생성
set.seed(1089)
p500_10blocks_n200_90 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 91번째 데이터셋 생성
set.seed(1090)
p500_10blocks_n200_91 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 92번째 데이터셋 생성
set.seed(1091)
p500_10blocks_n200_92 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 93번째 데이터셋 생성
set.seed(1092)
p500_10blocks_n200_93 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 94번째 데이터셋 생성
set.seed(1093)
p500_10blocks_n200_94 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 95번째 데이터셋 생성
set.seed(1094)
p500_10blocks_n200_95 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 96번째 데이터셋 생성
set.seed(1095)
p500_10blocks_n200_96 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 97번째 데이터셋 생성
set.seed(1096)
p500_10blocks_n200_97 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 98번째 데이터셋 생성
set.seed(1097)
p500_10blocks_n200_98 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 99번째 데이터셋 생성
set.seed(1098)
p500_10blocks_n200_99 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 100번째 데이터셋 생성
set.seed(1099)
p500_10blocks_n200_100 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)


# n=300
# 1번째 데이터셋 생성
set.seed(2000)
p500_10blocks_n300_1 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 2번째 데이터셋 생성
set.seed(2001)
p500_10blocks_n300_2 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 3번째 데이터셋 생성
set.seed(2002)
p500_10blocks_n300_3 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 4번째 데이터셋 생성
set.seed(2003)
p500_10blocks_n300_4 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 5번째 데이터셋 생성
set.seed(2004)
p500_10blocks_n300_5 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 6번째 데이터셋 생성
set.seed(2005)
p500_10blocks_n300_6 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 7번째 데이터셋 생성
set.seed(2006)
p500_10blocks_n300_7 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 8번째 데이터셋 생성
set.seed(2007)
p500_10blocks_n300_8 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 9번째 데이터셋 생성
set.seed(2008)
p500_10blocks_n300_9 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 10번째 데이터셋 생성
set.seed(2009)
p500_10blocks_n300_10 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 11번째 데이터셋 생성
set.seed(2010)
p500_10blocks_n300_11 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 12번째 데이터셋 생성
set.seed(2011)
p500_10blocks_n300_12 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 13번째 데이터셋 생성
set.seed(2012)
p500_10blocks_n300_13 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 14번째 데이터셋 생성
set.seed(2013)
p500_10blocks_n300_14 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 15번째 데이터셋 생성
set.seed(2014)
p500_10blocks_n300_15 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 16번째 데이터셋 생성
set.seed(2015)
p500_10blocks_n300_16 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 17번째 데이터셋 생성
set.seed(2016)
p500_10blocks_n300_17 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 18번째 데이터셋 생성
set.seed(2017)
p500_10blocks_n300_18 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 19번째 데이터셋 생성
set.seed(2018)
p500_10blocks_n300_19 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 20번째 데이터셋 생성
set.seed(2019)
p500_10blocks_n300_20 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 21번째 데이터셋 생성
set.seed(2020)
p500_10blocks_n300_21 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 22번째 데이터셋 생성
set.seed(2021)
p500_10blocks_n300_22 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 23번째 데이터셋 생성
set.seed(2022)
p500_10blocks_n300_23 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 24번째 데이터셋 생성
set.seed(2023)
p500_10blocks_n300_24 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 25번째 데이터셋 생성
set.seed(2024)
p500_10blocks_n300_25 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 26번째 데이터셋 생성
set.seed(2025)
p500_10blocks_n300_26 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 27번째 데이터셋 생성
set.seed(2026)
p500_10blocks_n300_27 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 28번째 데이터셋 생성
set.seed(2027)
p500_10blocks_n300_28 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 29번째 데이터셋 생성
set.seed(2028)
p500_10blocks_n300_29 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 30번째 데이터셋 생성
set.seed(2029)
p500_10blocks_n300_30 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 31번째 데이터셋 생성
set.seed(2030)
p500_10blocks_n300_31 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 32번째 데이터셋 생성
set.seed(2031)
p500_10blocks_n300_32 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 33번째 데이터셋 생성
set.seed(2032)
p500_10blocks_n300_33 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 34번째 데이터셋 생성
set.seed(2033)
p500_10blocks_n300_34 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 35번째 데이터셋 생성
set.seed(2034)
p500_10blocks_n300_35 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 36번째 데이터셋 생성
set.seed(2035)
p500_10blocks_n300_36 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 37번째 데이터셋 생성
set.seed(2036)
p500_10blocks_n300_37 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 38번째 데이터셋 생성
set.seed(2037)
p500_10blocks_n300_38 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 39번째 데이터셋 생성
set.seed(2038)
p500_10blocks_n300_39 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 40번째 데이터셋 생성
set.seed(2039)
p500_10blocks_n300_40 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 41번째 데이터셋 생성
set.seed(2040)
p500_10blocks_n300_41 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 42번째 데이터셋 생성
set.seed(2041)
p500_10blocks_n300_42 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 43번째 데이터셋 생성
set.seed(2042)
p500_10blocks_n300_43 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 44번째 데이터셋 생성
set.seed(2043)
p500_10blocks_n300_44 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 45번째 데이터셋 생성
set.seed(2044)
p500_10blocks_n300_45 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 46번째 데이터셋 생성
set.seed(2045)
p500_10blocks_n300_46 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 47번째 데이터셋 생성
set.seed(2046)
p500_10blocks_n300_47 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 48번째 데이터셋 생성
set.seed(2047)
p500_10blocks_n300_48 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 49번째 데이터셋 생성
set.seed(2048)
p500_10blocks_n300_49 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 50번째 데이터셋 생성
set.seed(2049)
p500_10blocks_n300_50 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 51번째 데이터셋 생성
set.seed(2050)
p500_10blocks_n300_51 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 52번째 데이터셋 생성
set.seed(2051)
p500_10blocks_n300_52 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 53번째 데이터셋 생성
set.seed(2052)
p500_10blocks_n300_53 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 54번째 데이터셋 생성
set.seed(2053)
p500_10blocks_n300_54 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 55번째 데이터셋 생성
set.seed(2054)
p500_10blocks_n300_55 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 56번째 데이터셋 생성
set.seed(2055)
p500_10blocks_n300_56 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 57번째 데이터셋 생성
set.seed(2056)
p500_10blocks_n300_57 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 58번째 데이터셋 생성
set.seed(2057)
p500_10blocks_n300_58 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 59번째 데이터셋 생성
set.seed(2058)
p500_10blocks_n300_59 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 60번째 데이터셋 생성
set.seed(2059)
p500_10blocks_n300_60 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 61번째 데이터셋 생성
set.seed(2060)
p500_10blocks_n300_61 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 62번째 데이터셋 생성
set.seed(2061)
p500_10blocks_n300_62 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 63번째 데이터셋 생성
set.seed(2062)
p500_10blocks_n300_63 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 64번째 데이터셋 생성
set.seed(2063)
p500_10blocks_n300_64 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 65번째 데이터셋 생성
set.seed(2064)
p500_10blocks_n300_65 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 66번째 데이터셋 생성
set.seed(2065)
p500_10blocks_n300_66 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 67번째 데이터셋 생성
set.seed(2066)
p500_10blocks_n300_67 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 68번째 데이터셋 생성
set.seed(2067)
p500_10blocks_n300_68 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 69번째 데이터셋 생성
set.seed(2068)
p500_10blocks_n300_69 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 70번째 데이터셋 생성
set.seed(2069)
p500_10blocks_n300_70 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 71번째 데이터셋 생성
set.seed(2070)
p500_10blocks_n300_71 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 72번째 데이터셋 생성
set.seed(2071)
p500_10blocks_n300_72 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 73번째 데이터셋 생성
set.seed(2072)
p500_10blocks_n300_73 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 74번째 데이터셋 생성
set.seed(2073)
p500_10blocks_n300_74 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 75번째 데이터셋 생성
set.seed(2074)
p500_10blocks_n300_75 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 76번째 데이터셋 생성
set.seed(2075)
p500_10blocks_n300_76 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 77번째 데이터셋 생성
set.seed(2076)
p500_10blocks_n300_77 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 78번째 데이터셋 생성
set.seed(2077)
p500_10blocks_n300_78 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 79번째 데이터셋 생성
set.seed(2078)
p500_10blocks_n300_79 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 80번째 데이터셋 생성
set.seed(2079)
p500_10blocks_n300_80 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 81번째 데이터셋 생성
set.seed(2080)
p500_10blocks_n300_81 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 82번째 데이터셋 생성
set.seed(2081)
p500_10blocks_n300_82 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 83번째 데이터셋 생성
set.seed(2082)
p500_10blocks_n300_83 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 84번째 데이터셋 생성
set.seed(2083)
p500_10blocks_n300_84 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 85번째 데이터셋 생성
set.seed(2084)
p500_10blocks_n300_85 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 86번째 데이터셋 생성
set.seed(2085)
p500_10blocks_n300_86 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 87번째 데이터셋 생성
set.seed(2086)
p500_10blocks_n300_87 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 88번째 데이터셋 생성
set.seed(2087)
p500_10blocks_n300_88 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 89번째 데이터셋 생성
set.seed(2088)
p500_10blocks_n300_89 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 90번째 데이터셋 생성
set.seed(2089)
p500_10blocks_n300_90 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 91번째 데이터셋 생성
set.seed(2090)
p500_10blocks_n300_91 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 92번째 데이터셋 생성
set.seed(2091)
p500_10blocks_n300_92 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 93번째 데이터셋 생성
set.seed(2092)
p500_10blocks_n300_93 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 94번째 데이터셋 생성
set.seed(2093)
p500_10blocks_n300_94 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 95번째 데이터셋 생성
set.seed(2094)
p500_10blocks_n300_95 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 96번째 데이터셋 생성
set.seed(2095)
p500_10blocks_n300_96 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 97번째 데이터셋 생성
set.seed(2096)
p500_10blocks_n300_97 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 98번째 데이터셋 생성
set.seed(2097)
p500_10blocks_n300_98 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 99번째 데이터셋 생성
set.seed(2098)
p500_10blocks_n300_99 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)

# 100번째 데이터셋 생성
set.seed(2099)
p500_10blocks_n300_100 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_10blocks)


