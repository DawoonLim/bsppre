# rm(list=ls())

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

# block 5개 설정
p <- 500
p1 <- 100
p2 <- 100
p3 <- 100
p4 <- 100
p5 <- 100

# 대각선 값은 runif로 바로 할당
set.seed(51210001)
block1 <- matrix(0, nrow = p1, ncol = p1)
diag(block1) <- 1  # 대각 원소를 1로 설정

# 비대각선 값 설정: 99%는 0, 나머지는 runif 값
num_elements_p1 <- p1 * (p1 - 1) / 2  # 비대각 원소의 개수
p1_zeros <- round(num_elements_p1 * 0.99)

random_values_p1 <- runif(num_elements_p1, min = 0.3, max = 0.6)
p1_zero_indices <- sample(1:num_elements_p1, p1_zeros, replace = FALSE)

# 비대각선 0 할당
random_values_p1[p1_zero_indices] <- 0

# 비대각선에 값 채우기 (상삼각 부분에 채운 후 대칭 복사)
index <- 1
for (i in 1:(p1-1)) {
  for (j in (i+1):p1) {
    block1[i, j] <- random_values_p1[index]
    block1[j, i] <- random_values_p1[index]
    index <- index + 1
  }
}

# p2에 대해서도 같은 방식으로 적용
block2 <- matrix(0, nrow = p2, ncol = p2)
diag(block2) <- 1  # 대각 원소를 1로 설정

num_elements_p2 <- p2 * (p2 - 1) / 2
p2_zeros <- round(num_elements_p2 * 0.99)

random_values_p2 <- runif(num_elements_p2, min = 0.3, max = 0.6)
p2_zero_indices <- sample(1:num_elements_p2, p2_zeros, replace = FALSE)

random_values_p2[p2_zero_indices] <- 0

index <- 1
for (i in 1:(p2-1)) {
  for (j in (i+1):p2) {
    block2[i, j] <- random_values_p2[index]
    block2[j, i] <- random_values_p2[index]
    index <- index + 1
  }
}


# p3에 대해서도 같은 방식으로 적용
block3 <- matrix(0, nrow = p3, ncol = p3)
diag(block3) <- 1  # 대각 원소를 1로 설정

num_elements_p3 <- p3 * (p3 - 1) / 2
p3_zeros <- round(num_elements_p3 * 0.99)

random_values_p3 <- runif(num_elements_p3, min = 0.3, max = 0.6)
p3_zero_indices <- sample(1:num_elements_p3, p3_zeros, replace = FALSE)

random_values_p3[p3_zero_indices] <- 0

index <- 1
for (i in 1:(p3-1)) {
  for (j in (i+1):p3) {
    block3[i, j] <- random_values_p3[index]
    block3[j, i] <- random_values_p3[index]
    index <- index + 1
  }
}


# p4에 대해서도 같은 방식으로 적용
block4 <- matrix(0, nrow = p4, ncol = p4)
diag(block4) <- 1  # 대각 원소를 1로 설정

num_elements_p4 <- p4 * (p4 - 1) / 2
p4_zeros <- round(num_elements_p3 * 0.99)

random_values_p4 <- runif(num_elements_p4, min = 0.3, max = 0.6)
p4_zero_indices <- sample(1:num_elements_p4, p4_zeros, replace = FALSE)

random_values_p4[p4_zero_indices] <- 0

index <- 1
for (i in 1:(p4-1)) {
  for (j in (i+1):p4) {
    block4[i, j] <- random_values_p4[index]
    block4[j, i] <- random_values_p4[index]
    index <- index + 1
  }
}



# p5에 대해서도 같은 방식으로 적용
block5 <- matrix(0, nrow = p5, ncol = p5)
diag(block5) <- 1  # 대각 원소를 1로 설정

num_elements_p5 <- p5 * (p5 - 1) / 2
p5_zeros <- round(num_elements_p5 * 0.99)

random_values_p5 <- runif(num_elements_p5, min = 0.3, max = 0.6)
p5_zero_indices <- sample(1:num_elements_p5, p5_zeros, replace = FALSE)

random_values_p5[p5_zero_indices] <- 0

index <- 1
for (i in 1:(p5-1)) {
  for (j in (i+1):p5) {
    block5[i, j] <- random_values_p5[index]
    block5[j, i] <- random_values_p5[index]
    index <- index + 1
  }
}




# 블록들을 리스트로 저장
blocks <- list(block1, block2, block3, block4, block5)

# create_block_precision_matrix 함수로 결합
true_precision_p500_5blocks <- create_block_precision_matrix(blocks)
isSymmetric(true_precision_p500_5blocks)

# screen 결과를 binary 행렬로 변환
binary_matrix <- function(matrix) {
  matrix[matrix != 0] <- 1
  diag(matrix) <- 0
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

true_precision_p500_5blocks <- pd_matrix(true_precision_p500_5blocks)
is.positive.definite(true_precision_p500_5blocks)
true_covariance_p500_5blocks <- solve(true_precision_p500_5blocks)
heatmap(binary_matrix(true_precision_p500_5blocks), Rowv = NA, Colv = NA, col = c("white", "black"), scale="none")

# 0이 아닌 upper triangular value 위치
# nonzero_index_true_precision_matrix_p300_100_100_100 <- which(true_precision_matrix_p300_100_100_100 != 0, arr.ind = TRUE)[which(true_precision_matrix_p300_100_100_100 != 0, arr.ind = TRUE)[,1]< which(true_precision_matrix_p300_100_100_100 != 0, arr.ind = TRUE)[,2], ]


##################################################################
######################### sampling ###############################
##################################################################
set.seed(1000)
p500_5blocks_n200_1 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1001)
p500_5blocks_n200_2 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1002)
p500_5blocks_n200_3 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1003)
p500_5blocks_n200_4 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1004)
p500_5blocks_n200_5 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1005)
p500_5blocks_n200_6 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1006)
p500_5blocks_n200_7 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1007)
p500_5blocks_n200_8 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1008)
p500_5blocks_n200_9 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1009)
p500_5blocks_n200_10 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1010)
p500_5blocks_n200_11 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1011)
p500_5blocks_n200_12 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1012)
p500_5blocks_n200_13 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1013)
p500_5blocks_n200_14 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1014)
p500_5blocks_n200_15 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1015)
p500_5blocks_n200_16 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1016)
p500_5blocks_n200_17 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1017)
p500_5blocks_n200_18 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1018)
p500_5blocks_n200_19 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1019)
p500_5blocks_n200_20 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1020)
p500_5blocks_n200_21 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1021)
p500_5blocks_n200_22 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1022)
p500_5blocks_n200_23 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1023)
p500_5blocks_n200_24 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1024)
p500_5blocks_n200_25 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1025)
p500_5blocks_n200_26 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1026)
p500_5blocks_n200_27 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1027)
p500_5blocks_n200_28 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1028)
p500_5blocks_n200_29 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1029)
p500_5blocks_n200_30 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1030)
p500_5blocks_n200_31 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1031)
p500_5blocks_n200_32 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1032)
p500_5blocks_n200_33 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1033)
p500_5blocks_n200_34 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1034)
p500_5blocks_n200_35 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1035)
p500_5blocks_n200_36 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1036)
p500_5blocks_n200_37 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1037)
p500_5blocks_n200_38 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1038)
p500_5blocks_n200_39 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1039)
p500_5blocks_n200_40 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1040)
p500_5blocks_n200_41 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1041)
p500_5blocks_n200_42 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1042)
p500_5blocks_n200_43 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1043)
p500_5blocks_n200_44 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1044)
p500_5blocks_n200_45 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1045)
p500_5blocks_n200_46 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1046)
p500_5blocks_n200_47 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1047)
p500_5blocks_n200_48 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1048)
p500_5blocks_n200_49 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1049)
p500_5blocks_n200_50 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1050)
p500_5blocks_n200_51 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1051)
p500_5blocks_n200_52 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1052)
p500_5blocks_n200_53 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1053)
p500_5blocks_n200_54 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1054)
p500_5blocks_n200_55 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1055)
p500_5blocks_n200_56 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1056)
p500_5blocks_n200_57 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1057)
p500_5blocks_n200_58 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1058)
p500_5blocks_n200_59 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1059)
p500_5blocks_n200_60 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1060)
p500_5blocks_n200_61 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1061)
p500_5blocks_n200_62 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1062)
p500_5blocks_n200_63 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1063)
p500_5blocks_n200_64 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1064)
p500_5blocks_n200_65 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1065)
p500_5blocks_n200_66 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1066)
p500_5blocks_n200_67 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1067)
p500_5blocks_n200_68 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1068)
p500_5blocks_n200_69 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1069)
p500_5blocks_n200_70 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1070)
p500_5blocks_n200_71 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1071)
p500_5blocks_n200_72 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1072)
p500_5blocks_n200_73 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1073)
p500_5blocks_n200_74 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1074)
p500_5blocks_n200_75 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1075)
p500_5blocks_n200_76 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1076)
p500_5blocks_n200_77 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1077)
p500_5blocks_n200_78 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1078)
p500_5blocks_n200_79 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1079)
p500_5blocks_n200_80 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1080)
p500_5blocks_n200_81 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1081)
p500_5blocks_n200_82 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1082)
p500_5blocks_n200_83 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1083)
p500_5blocks_n200_84 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1084)
p500_5blocks_n200_85 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1085)
p500_5blocks_n200_86 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1086)
p500_5blocks_n200_87 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1087)
p500_5blocks_n200_88 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1088)
p500_5blocks_n200_89 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1089)
p500_5blocks_n200_90 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1090)
p500_5blocks_n200_91 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1091)
p500_5blocks_n200_92 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1092)
p500_5blocks_n200_93 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1093)
p500_5blocks_n200_94 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1094)
p500_5blocks_n200_95 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1095)
p500_5blocks_n200_96 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1096)
p500_5blocks_n200_97 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1097)
p500_5blocks_n200_98 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1098)
p500_5blocks_n200_99 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(1099)
p500_5blocks_n200_100 <- MASS::mvrnorm(n = 200, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)



# n=300
set.seed(2000)
p500_5blocks_n300_1 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2001)
p500_5blocks_n300_2 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2002)
p500_5blocks_n300_3 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2003)
p500_5blocks_n300_4 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2004)
p500_5blocks_n300_5 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2005)
p500_5blocks_n300_6 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2006)
p500_5blocks_n300_7 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2007)
p500_5blocks_n300_8 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2008)
p500_5blocks_n300_9 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2009)
p500_5blocks_n300_10 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2010)
p500_5blocks_n300_11 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2011)
p500_5blocks_n300_12 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2012)
p500_5blocks_n300_13 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2013)
p500_5blocks_n300_14 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2014)
p500_5blocks_n300_15 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2015)
p500_5blocks_n300_16 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2016)
p500_5blocks_n300_17 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2017)
p500_5blocks_n300_18 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2018)
p500_5blocks_n300_19 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2019)
p500_5blocks_n300_20 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2020)
p500_5blocks_n300_21 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2021)
p500_5blocks_n300_22 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2022)
p500_5blocks_n300_23 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2023)
p500_5blocks_n300_24 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2024)
p500_5blocks_n300_25 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2025)
p500_5blocks_n300_26 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2026)
p500_5blocks_n300_27 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2027)
p500_5blocks_n300_28 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2028)
p500_5blocks_n300_29 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2029)
p500_5blocks_n300_30 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2030)
p500_5blocks_n300_31 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2031)
p500_5blocks_n300_32 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2032)
p500_5blocks_n300_33 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2033)
p500_5blocks_n300_34 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2034)
p500_5blocks_n300_35 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2035)
p500_5blocks_n300_36 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2036)
p500_5blocks_n300_37 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2037)
p500_5blocks_n300_38 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2038)
p500_5blocks_n300_39 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2039)
p500_5blocks_n300_40 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2040)
p500_5blocks_n300_41 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2041)
p500_5blocks_n300_42 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2042)
p500_5blocks_n300_43 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2043)
p500_5blocks_n300_44 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2044)
p500_5blocks_n300_45 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2045)
p500_5blocks_n300_46 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2046)
p500_5blocks_n300_47 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2047)
p500_5blocks_n300_48 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2048)
p500_5blocks_n300_49 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2049)
p500_5blocks_n300_50 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2050)
p500_5blocks_n300_51 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2051)
p500_5blocks_n300_52 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2052)
p500_5blocks_n300_53 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2053)
p500_5blocks_n300_54 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2054)
p500_5blocks_n300_55 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2055)
p500_5blocks_n300_56 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2056)
p500_5blocks_n300_57 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2057)
p500_5blocks_n300_58 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2058)
p500_5blocks_n300_59 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2059)
p500_5blocks_n300_60 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2060)
p500_5blocks_n300_61 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2061)
p500_5blocks_n300_62 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2062)
p500_5blocks_n300_63 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2063)
p500_5blocks_n300_64 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2064)
p500_5blocks_n300_65 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2065)
p500_5blocks_n300_66 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2066)
p500_5blocks_n300_67 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2067)
p500_5blocks_n300_68 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2068)
p500_5blocks_n300_69 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2069)
p500_5blocks_n300_70 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2070)
p500_5blocks_n300_71 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2071)
p500_5blocks_n300_72 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2072)
p500_5blocks_n300_73 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2073)
p500_5blocks_n300_74 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2074)
p500_5blocks_n300_75 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2075)
p500_5blocks_n300_76 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2076)
p500_5blocks_n300_77 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2077)
p500_5blocks_n300_78 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2078)
p500_5blocks_n300_79 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2079)
p500_5blocks_n300_80 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2080)
p500_5blocks_n300_81 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2081)
p500_5blocks_n300_82 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2082)
p500_5blocks_n300_83 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2083)
p500_5blocks_n300_84 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2084)
p500_5blocks_n300_85 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2085)
p500_5blocks_n300_86 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2086)
p500_5blocks_n300_87 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2087)
p500_5blocks_n300_88 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2088)
p500_5blocks_n300_89 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2089)
p500_5blocks_n300_90 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2090)
p500_5blocks_n300_91 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2091)
p500_5blocks_n300_92 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2092)
p500_5blocks_n300_93 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2093)
p500_5blocks_n300_94 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2094)
p500_5blocks_n300_95 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2095)
p500_5blocks_n300_96 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2096)
p500_5blocks_n300_97 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2097)
p500_5blocks_n300_98 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2098)
p500_5blocks_n300_99 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)

set.seed(2099)
p500_5blocks_n300_100 <- MASS::mvrnorm(n = 300, mu = rep(0, 500), Sigma = true_covariance_p500_5blocks)




##################################################
####### beam 패키지 이용한 support 추정 #########
##################################################
# Multiple testing
sample_fit <- beam(X = samples , type="conditional")
summary(sample_fit)

# pcor(sample_fit)
# plotCor(sample_fit)

# Edge selection (finding the support by screening)
sample_fit_select <- beam.select(beam(samples),thres = 0.1, method = "BH")
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

community_result <- find_community(screened_binary_matrix, cluster_walktrap)
membership(community_result)
table(membership(community_result))

community_binary_matrix <- community_result $ matrix

# 커뮤니티 결과
membership <- membership(community_result)

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
diff_rows = apply(nonzero_index_true_precision_matrix, 1, function(row) {
  is_diff = all(apply(nonzero_index_community_binary_matrix, 1, function(b_row) {
    any(row != b_row)
  }))
  return(is_diff)
})
FN_indices = nonzero_index_true_precision_matrix[diff_rows, , drop=FALSE]


# FN partial corr. 확인
partial_corr <- cond(sample_fit)
merge(FN_indices, partial_corr, by=c("row","col"))

##########################################################
# candidate function: all
##########################################################