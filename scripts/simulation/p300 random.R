rm(list=ls())

library(MASS)
library(Matrix)
library(igraph)
library(beam)
library(matrixcalc)

##################################################
###### true precision matrix 및 자료 생성 ########
##################################################
create_block_precision_matrix <- function(blocks) {
  # 각 블록의 크기를 계산
  block_sizes <- sapply(blocks, nrow)
  total_size <- sum(block_sizes)
  
  # 전체 행렬을 0으로 초기화
  precision_matrix <- matrix(0, nrow = total_size, ncol = total_size)
  
  # 각 블록을 정밀도 대각행렬에 배치
  current_index <- 1
  for (block in blocks) {
    block_size <- nrow(block)
    precision_matrix[current_index:(current_index + block_size - 1), 
                     current_index:(current_index + block_size - 1)] <- block
    current_index <- current_index + block_size
  }
  return(precision_matrix)
}

# whole block 설정
p <- 300


# 대각선 값은 runif로 바로 할당
set.seed(600)
true_precision_p300_random <- matrix(0, nrow = p, ncol = p)
diag(true_precision_p300_random) <- 1  # 대각 원소를 1로 설정

# 비대각선 값 설정: 98%는 0, 나머지는 runif 값
num_elements_p <- p * (p - 1) / 2  # 비대각 원소의 개수
p_zeros <- round(num_elements_p * 0.98)

# set.seed(601)
random_values_p <- runif(num_elements_p, min = 0.3, max = 0.6)
p_zero_indices <- sample(1:num_elements_p, p_zeros, replace = FALSE)

# 비대각선 0 할당
random_values_p[p_zero_indices] <- 0

# 비대각선에 값 채우기 (상삼각 부분에 채운 후 대칭 복사)
index <- 1
for (i in 1:(p-1)) {
  for (j in (i+1):p) {
    true_precision_p300_random[i, j] <- random_values_p[index]
    true_precision_p300_random[j, i] <- random_values_p[index]
    index <- index + 1
  }
}


isSymmetric(true_precision_p300_random)

# screen 결과를 binary 행렬로 변환
binary_matrix <- function(matrix) {
  matrix[matrix != 0] <- 1
  diag(matrix) <- 0 # community detection 에서 대각원소 1이면 self-recursive 가능해짐
  return(matrix)
}

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

# true precision matrix to be p.d
true_precision_p300_random <- pd_matrix(true_precision_p300_random)
is.positive.definite(true_precision_p300_random)
true_covariance_p300_random <- solve(true_precision_p300_random)
heatmap(binary_matrix(true_precision_p300_random), Rowv = NA, Colv = NA, col = c("white", "black"), scale="none")

# 0이 아닌 upper triangular value 위치
#nonzero_index_true_precision_matrix_p100 <- which(true_precision_matrix_p100 != 0, arr.ind = TRUE)[which(true_precision_matrix_p100 != 0, arr.ind = TRUE)[,1]< which(true_precision_matrix_p100 != 0, arr.ind = TRUE)[,2], ]
#which(true_precision_matrix_p300_random > 2, arr.ind = TRUE)


##################################################################
######################### sampling ###############################
##################################################################
# n=100
set.seed(1000)
p300_random_n100_1 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1001)
p300_random_n100_2 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1002)
p300_random_n100_3 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1003)
p300_random_n100_4 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1004)
p300_random_n100_5 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1005)
p300_random_n100_6 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1006)
p300_random_n100_7 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1007)
p300_random_n100_8 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1008)
p300_random_n100_9 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1009)
p300_random_n100_10 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1010)
p300_random_n100_11 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1011)
p300_random_n100_12 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1012)
p300_random_n100_13 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1013)
p300_random_n100_14 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1014)
p300_random_n100_15 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1015)
p300_random_n100_16 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1016)
p300_random_n100_17 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1017)
p300_random_n100_18 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1018)
p300_random_n100_19 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1019)
p300_random_n100_20 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1020)
p300_random_n100_21 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1021)
p300_random_n100_22 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1022)
p300_random_n100_23 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1023)
p300_random_n100_24 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1024)
p300_random_n100_25 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1025)
p300_random_n100_26 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1026)
p300_random_n100_27 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1027)
p300_random_n100_28 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1028)
p300_random_n100_29 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1029)
p300_random_n100_30 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1030)
p300_random_n100_31 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1031)
p300_random_n100_32 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1032)
p300_random_n100_33 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1033)
p300_random_n100_34 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1034)
p300_random_n100_35 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1035)
p300_random_n100_36 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1036)
p300_random_n100_37 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1037)
p300_random_n100_38 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1038)
p300_random_n100_39 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1039)
p300_random_n100_40 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1040)
p300_random_n100_41 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1041)
p300_random_n100_42 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1042)
p300_random_n100_43 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1043)
p300_random_n100_44 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1044)
p300_random_n100_45 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1045)
p300_random_n100_46 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1046)
p300_random_n100_47 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1047)
p300_random_n100_48 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1048)
p300_random_n100_49 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1049)
p300_random_n100_50 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1050)
p300_random_n100_51 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1051)
p300_random_n100_52 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1052)
p300_random_n100_53 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1053)
p300_random_n100_54 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1054)
p300_random_n100_55 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1055)
p300_random_n100_56 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1056)
p300_random_n100_57 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1057)
p300_random_n100_58 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1058)
p300_random_n100_59 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1059)
p300_random_n100_60 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1060)
p300_random_n100_61 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1061)
p300_random_n100_62 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1062)
p300_random_n100_63 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1063)
p300_random_n100_64 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1064)
p300_random_n100_65 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1065)
p300_random_n100_66 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1066)
p300_random_n100_67 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1067)
p300_random_n100_68 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1068)
p300_random_n100_69 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1069)
p300_random_n100_70 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1070)
p300_random_n100_71 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1071)
p300_random_n100_72 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1072)
p300_random_n100_73 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1073)
p300_random_n100_74 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1074)
p300_random_n100_75 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1075)
p300_random_n100_76 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1076)
p300_random_n100_77 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1077)
p300_random_n100_78 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1078)
p300_random_n100_79 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1079)
p300_random_n100_80 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1080)
p300_random_n100_81 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1081)
p300_random_n100_82 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1082)
p300_random_n100_83 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1083)
p300_random_n100_84 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1084)
p300_random_n100_85 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1085)
p300_random_n100_86 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1086)
p300_random_n100_87 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1087)
p300_random_n100_88 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1088)
p300_random_n100_89 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1089)
p300_random_n100_90 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1090)
p300_random_n100_91 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1091)
p300_random_n100_92 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1092)
p300_random_n100_93 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1093)
p300_random_n100_94 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1094)
p300_random_n100_95 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1095)
p300_random_n100_96 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1096)
p300_random_n100_97 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1097)
p300_random_n100_98 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1098)
p300_random_n100_99 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(1099)
p300_random_n100_100 <- MASS::mvrnorm(n=100, mu=rep(0, 300), Sigma=true_covariance_p300_random)



##################################################################
# n=200
set.seed(2001)
p300_random_n200_1 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2002)
p300_random_n200_2 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2003)
p300_random_n200_3 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2004)
p300_random_n200_4 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2005)
p300_random_n200_5 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2006)
p300_random_n200_6 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2007)
p300_random_n200_7 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2008)
p300_random_n200_8 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2009)
p300_random_n200_9 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2010)
p300_random_n200_10 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2011)
p300_random_n200_11 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2012)
p300_random_n200_12 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2013)
p300_random_n200_13 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2014)
p300_random_n200_14 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2015)
p300_random_n200_15 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2016)
p300_random_n200_16 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2017)
p300_random_n200_17 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2018)
p300_random_n200_18 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2019)
p300_random_n200_19 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2020)
p300_random_n200_20 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2021)
p300_random_n200_21 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2022)
p300_random_n200_22 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2023)
p300_random_n200_23 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2024)
p300_random_n200_24 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2025)
p300_random_n200_25 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2026)
p300_random_n200_26 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2027)
p300_random_n200_27 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2028)
p300_random_n200_28 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2029)
p300_random_n200_29 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2030)
p300_random_n200_30 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2031)
p300_random_n200_31 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2032)
p300_random_n200_32 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2033)
p300_random_n200_33 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2034)
p300_random_n200_34 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2035)
p300_random_n200_35 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2036)
p300_random_n200_36 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2037)
p300_random_n200_37 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2038)
p300_random_n200_38 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2039)
p300_random_n200_39 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2040)
p300_random_n200_40 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2041)
p300_random_n200_41 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2042)
p300_random_n200_42 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2043)
p300_random_n200_43 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2044)
p300_random_n200_44 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2045)
p300_random_n200_45 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2046)
p300_random_n200_46 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2047)
p300_random_n200_47 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2048)
p300_random_n200_48 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2049)
p300_random_n200_49 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2050)
p300_random_n200_50 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2051)
p300_random_n200_51 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2052)
p300_random_n200_52 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2053)
p300_random_n200_53 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2054)
p300_random_n200_54 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2055)
p300_random_n200_55 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2056)
p300_random_n200_56 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2057)
p300_random_n200_57 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2058)
p300_random_n200_58 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2059)
p300_random_n200_59 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2060)
p300_random_n200_60 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2061)
p300_random_n200_61 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2062)
p300_random_n200_62 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2063)
p300_random_n200_63 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2064)
p300_random_n200_64 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2065)
p300_random_n200_65 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2066)
p300_random_n200_66 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2067)
p300_random_n200_67 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2068)
p300_random_n200_68 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2069)
p300_random_n200_69 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2070)
p300_random_n200_70 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2071)
p300_random_n200_71 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2072)
p300_random_n200_72 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2073)
p300_random_n200_73 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2074)
p300_random_n200_74 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2075)
p300_random_n200_75 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2076)
p300_random_n200_76 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2077)
p300_random_n200_77 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2078)
p300_random_n200_78 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2079)
p300_random_n200_79 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2080)
p300_random_n200_80 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2081)
p300_random_n200_81 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2082)
p300_random_n200_82 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2083)
p300_random_n200_83 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2084)
p300_random_n200_84 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2085)
p300_random_n200_85 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2086)
p300_random_n200_86 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2087)
p300_random_n200_87 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2088)
p300_random_n200_88 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2089)
p300_random_n200_89 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2090)
p300_random_n200_90 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2091)
p300_random_n200_91 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2092)
p300_random_n200_92 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2093)
p300_random_n200_93 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2094)
p300_random_n200_94 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2095)
p300_random_n200_95 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2096)
p300_random_n200_96 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2097)
p300_random_n200_97 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2098)
p300_random_n200_98 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2099)
p300_random_n200_99 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)
set.seed(2100)
p300_random_n200_100 <- MASS::mvrnorm(n=200, mu=rep(0, 300), Sigma=true_covariance_p300_random)











##################################################
####### beam 패키지 이용한 support 추정 #########
##################################################
# Multiple testing
sample_fit <- beam(X = p300_n100_random_1 , type="conditional")
summary(sample_fit)

# pcor(sample_fit)
# plotCor(sample_fit)

# Edge selection (finding the support by screening)
sample_fit_select <- beam.select(beam(p300_n100_random_1),thres = 0.1, method = "BH")
summary(sample_fit_select)
screened_matrix <- pcor(sample_fit_select)
partial_corr <- cond(sample_fit)

plotAdj(sample_fit_select)
# cond(sample_fit_select)


##################################################
########### community detection 적용 ############
##################################################

screened_binary_matrix <- binary_matrix(screened_matrix)
heatmap(screened_binary_matrix, Rowv = NA, Colv = NA, col = c("white", "black"), scale="none")

find_community <- function(matrix, community_detection_func) {
  graph <- graph_from_adjacency_matrix(matrix, mode = "undirected")
  communities <- community_detection_func(graph)
  return(communities)
}
#########################################################################################
# cluster_fast_greedy, cluster_leading_eigen, cluster_edge_betweenness, cluster_spinglass,
# cluster_walktrap, cluster_louvain, cluster_label_prop, cluster_leiden, cluster_infomap 
#########################################################################################

community_result <- find_community(screened_binary_matrix, cluster_louvain)
membership <- membership(community_result)
table(membership(community_result))
error_p300_n100_random_1_variable <- which(membership == 15)

# p300_n100_random_1; variable 21  36  38  39  59  61  65  94  95  99 105 115 117 120 139 148 153 156 166 167 169 194 209 237 241
# 253 254 256 261 262 263 270 278 280 (34개 변수)

error_p300_n100_random_1 <- p300_n100_random_1[ ,error_p300_n100_random_1_variable]
sample_cov_error_p300_n100_random_1 <- pd_matrix(cov(error_p300_n100_random_1))

error_bmsppre_p300_n100_random_1 <- bmsppre(error_p300_n100_random_1, Omega =  diag(diag(solve(sample_cov_error_p300_n100_random_1))))
error_post.est.result_bmsppre_p300_n100_random_1 <- estimate.bsppre(error_bmsppre_p300_n100_random_1)




# p300_n100_random_2; variable 11, 122
error_p300_n100_random_2 <- p300_n100_random_2[ ,c(11,122)]
sample_cov_error_p300_n100_random_2 <- pd_matrix(cov(error_p300_n100_random_2))

##################################################################
############# 에러 발견 ###################
############# 결과; 에러: 크기가 7450.6 Gb인 벡터를 할당할 수 없습니다
# 예상 원인; 하이퍼파라를 조정? 샘플 값이 수렴하도록?tau1sq = 10^4/(p^4)
error_bmsppre_p300_n100_random_2 <- bmsppre(error_p300_n100_random_2, Omega =  diag(diag(solve(sample_cov_error_p300_n100_random_2))))
error_post.est.result_bmsppre_p300_n100_random_2 <- estimate.bsppre(error_bmsppre_p300_n100_random_2)




community_binary_matrix <- community_result $ matrix

# 커뮤니티 결과
membership <- membership(community_result)




################################################################################
###### 서로 다른 커뮤니티에 속하는 변수들 간 연결하는 edge 존재 유무 확인 ###### 
################################################################################
# 만약 inter-edge 들이 있을경우 병렬연산을 어떻게 진행할까?
community_indices <- which(community_membership == comm)
community_data <- X[, community_indices, drop = FALSE]
# 커뮤니티 탐지
community_result <- find_community(screened_binary_matrix, cluster_louvain)
membership <- membership(community_result)

# 커뮤니티 간 비대각 원소 확인 (대칭행렬 최적화)
find_inter_community_edges <- function(matrix, membership) {
  n <- nrow(matrix)
  inter_community_edges <- list()  # 결과를 저장할 리스트
  
  for (i in 1:(n - 1)) {
    for (j in (i + 1):n) {  # 상삼각행렬만 검사
      if (matrix[i, j] == 1 && membership[i] != membership[j]) {
        # 서로 다른 커뮤니티에 속한 엣지 저장
        inter_community_edges <- append(inter_community_edges, list(c(i, j)))
      }
    }
  }
  
  return(inter_community_edges)
}

# 커뮤니티 간 연결 확인
inter_community_edges <- find_inter_community_edges(screened_binary_matrix, membership)

# 결과 출력
cat("커뮤니티 간 비대각 원소 (노드 쌍):\n")
print(inter_community_edges)

membership[3] # community 3rd
which(membership == 3)
membership[299] # community 15th
which(membership == 15)
screened_binary_matrix[3, 299]

graph <- graph_from_adjacency_matrix(screened_binary_matrix, mode = "undirected")
plot(community_result, graph)
length(inter_community_edges)



# Louvain 알고리즘을 사용하여 커뮤니티 탐지
community_result <- cluster_louvain(graph)

# 커뮤니티 멤버십 추출
membership_vec <- membership(community_result)
length(which(membership_vec == 3))

# inter-edge 찾기
inter_community_edges <- find_inter_community_edges(screened_binary_matrix, membership) 

# 커뮤니티 간 엣지 추출
inter_edges <- E(graph)[membership[ends(graph, E(graph))[,1]] != membership[ends(graph, E(graph))[,2]]]

# 그래프 시각화
plot(graph,
     vertex.color = membership,         # 노드 색상: 커뮤니티 별로 구분
     edge.color = ifelse(E(graph) %in% inter_edges, "red", "gray"),  # 커뮤니티 간 엣지 강조
     edge.width = ifelse(E(graph) %in% inter_edges, 2, 1),           # 강조된 엣지의 두께
     vertex.label = NA,                     # 노드 레이블 제거 (깔끔한 시각화)
     layout = layout_with_fr(graph),        # 프루크터만-레인골드 레이아웃
     main = "Inter-Community Edges Highlighted (Louvain)")



################################################################################
###### 서로 다른 커뮤니티에 속하는 변수들 간 연결하는 edge 존재 유무 확인 ###### 
################################################################################
# 연결 성분 탐지
components <- components(graph)

# 멤버십 확인
membership_vec <- components$membership
plot(graph,
     vertex.color = membership_vec,     # 커뮤니티 별로 색상 부여
     vertex.label = NA,                 # 레이블 제거
     main = "Connected Components")





##########################################################
############# 크기가 2인 커뮤니티의 원소 찾기 ############ 
##########################################################

single_element_communities <- which(table(membership(community_result)) == 2)
single_element_indices <- which(membership %in% single_element_communities)

single_element_rows <- matrix(single_element_indices)
colnames(single_element_rows)[1]<-"row"
single_element_positions <- merge(which(community_binary_matrix != 0, arr.ind = TRUE),single_element_rows,by="row")
merge(partial_corr,single_element_positions,by=c("row","col"))

##########################################################
################# False Negative corr.####################
##########################################################

# 0이 아닌 upper triangular value 확인
nonzero_index_community_binary_matrix <- which(community_binary_matrix != 0, arr.ind = TRUE)[which(community_binary_matrix != 0, arr.ind = TRUE)[,1]< which(community_binary_matrix != 0, arr.ind = TRUE)[,2], ]

# False Negative; 0이 아닌 value의 위치 비교
diff_rows = apply(nonzero_index_true_precision_matrix_p100, 1, function(row) {
  is_diff = all(apply(nonzero_index_community_binary_matrix, 1, function(b_row) {
    any(row != b_row)
  }))
  return(is_diff)
})
FN_indices = nonzero_index_true_precision_matrix_p100[diff_rows, , drop=FALSE]


# FN partial corr. 확인
partial_corr <- cond(sample_fit)
merge(FN_indices, partial_corr, by=c("row","col"))

##########################################################
