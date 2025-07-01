library(MASS)
library(Matrix) 
library(beam)
library(matrixcalc) 


##################################################
########### true precision matrix ################
##################################################
create_block_precision_matrix <- function(blocks) {
  block_sizes <- sapply(blocks, nrow)
  total_size <- sum(block_sizes)
  
  precision_matrix <- matrix(0, nrow = total_size, ncol = total_size)
  
  current_index <- 1
  for (block in blocks) {
    block_size <- nrow(block)
    precision_matrix[current_index:(current_index + block_size - 1), 
                     current_index:(current_index + block_size - 1)] <- block
    current_index <- current_index + block_size
  }
  return(precision_matrix)
}

p <- 300
p1 <- 100
p2 <- 100
p3 <- 100

# 대각선 값은 runif로 바로 할당
# set.seed(10101001) & 0.01 지금까지 좋음 (지금 저장된 기준)
# set.seed(1000) 안 좋음
# set.seed(101010001) 가장 좋음
# set.seed(1010101) 이것도 그저그럼
set.seed(101010001)
block1 <- matrix(0, nrow = p1, ncol = p1)
diag(block1) <- 1  # 대각 원소를 1로 설정

# 비대각선 값 설정: 98%는 0, 나머지는 runif 값
num_elements_p1 <- p1 * (p1 - 1) / 2  # 비대각 원소의 개수
p1_zeros <- round(num_elements_p1 * 0.98)


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
p2_zeros <- round(num_elements_p2 * 0.98)


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
p3_zeros <- round(num_elements_p3 * 0.98)

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



blocks <- list(block1, block2, block3)

true_precision_p300_3blocks <- create_block_precision_matrix(blocks)
isSymmetric(true_precision_p300_3blocks)

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

true_precision_p300_3blocks <- pd_matrix(true_precision_p300_3blocks)
is.positive.definite(true_precision_p300_3blocks)
true_covariance_p300_3blocks <- solve(true_precision_p300_3blocks)
heatmap(binary_matrix(true_precision_p300_3blocks), Rowv = NA, Colv = NA, col = c("white", "black"), scale="none")

##################################################################
######################### sampling ###############################
##################################################################
# n=100
set.seed(1000)
p300_3blocks_n100_1 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1001)
p300_3blocks_n100_2 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1002)
p300_3blocks_n100_3 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1003)
p300_3blocks_n100_4 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1004)
p300_3blocks_n100_5 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1005)
p300_3blocks_n100_6 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1006)
p300_3blocks_n100_7 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1007)
p300_3blocks_n100_8 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1008)
p300_3blocks_n100_9 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1009)
p300_3blocks_n100_10 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1010)
p300_3blocks_n100_11 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1011)
p300_3blocks_n100_12 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1012)
p300_3blocks_n100_13 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1013)
p300_3blocks_n100_14 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1014)
p300_3blocks_n100_15 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1015)
p300_3blocks_n100_16 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1016)
p300_3blocks_n100_17 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1017)
p300_3blocks_n100_18 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1018)
p300_3blocks_n100_19 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1019)
p300_3blocks_n100_20 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1020)
p300_3blocks_n100_21 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1021)
p300_3blocks_n100_22 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1022)
p300_3blocks_n100_23 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1023)
p300_3blocks_n100_24 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1024)
p300_3blocks_n100_25 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1025)
p300_3blocks_n100_26 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1026)
p300_3blocks_n100_27 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1027)
p300_3blocks_n100_28 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1028)
p300_3blocks_n100_29 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1029)
p300_3blocks_n100_30 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1030)
p300_3blocks_n100_31 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1031)
p300_3blocks_n100_32 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1032)
p300_3blocks_n100_33 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1033)
p300_3blocks_n100_34 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1034)
p300_3blocks_n100_35 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1035)
p300_3blocks_n100_36 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1036)
p300_3blocks_n100_37 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1037)
p300_3blocks_n100_38 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1038)
p300_3blocks_n100_39 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1039)
p300_3blocks_n100_40 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1040)
p300_3blocks_n100_41 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1041)
p300_3blocks_n100_42 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1042)
p300_3blocks_n100_43 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1043)
p300_3blocks_n100_44 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1044)
p300_3blocks_n100_45 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1045)
p300_3blocks_n100_46 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1046)
p300_3blocks_n100_47 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1047)
p300_3blocks_n100_48 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1048)
p300_3blocks_n100_49 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1049)
p300_3blocks_n100_50 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1050)
p300_3blocks_n100_51 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1051)
p300_3blocks_n100_52 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1052)
p300_3blocks_n100_53 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1053)
p300_3blocks_n100_54 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1054)
p300_3blocks_n100_55 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1055)
p300_3blocks_n100_56 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1056)
p300_3blocks_n100_57 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1057)
p300_3blocks_n100_58 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1058)
p300_3blocks_n100_59 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1059)
p300_3blocks_n100_60 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1060)
p300_3blocks_n100_61 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1061)
p300_3blocks_n100_62 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1062)
p300_3blocks_n100_63 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1063)
p300_3blocks_n100_64 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1064)
p300_3blocks_n100_65 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1065)
p300_3blocks_n100_66 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1066)
p300_3blocks_n100_67 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1067)
p300_3blocks_n100_68 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1068)
p300_3blocks_n100_69 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1069)
p300_3blocks_n100_70 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1070)
p300_3blocks_n100_71 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1071)
p300_3blocks_n100_72 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1072)
p300_3blocks_n100_73 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1073)
p300_3blocks_n100_74 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1074)
p300_3blocks_n100_75 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1075)
p300_3blocks_n100_76 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1076)
p300_3blocks_n100_77 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1077)
p300_3blocks_n100_78 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1078)
p300_3blocks_n100_79 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1079)
p300_3blocks_n100_80 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1080)
p300_3blocks_n100_81 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1081)
p300_3blocks_n100_82 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1082)
p300_3blocks_n100_83 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1083)
p300_3blocks_n100_84 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1084)
p300_3blocks_n100_85 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1085)
p300_3blocks_n100_86 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1086)
p300_3blocks_n100_87 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1087)
p300_3blocks_n100_88 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1088)
p300_3blocks_n100_89 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1089)
p300_3blocks_n100_90 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1090)
p300_3blocks_n100_91 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1091)
p300_3blocks_n100_92 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1092)
p300_3blocks_n100_93 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1093)
p300_3blocks_n100_94 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1094)
p300_3blocks_n100_95 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1095)
p300_3blocks_n100_96 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1096)
p300_3blocks_n100_97 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1097)
p300_3blocks_n100_98 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1098)
p300_3blocks_n100_99 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(1099)
p300_3blocks_n100_100 <- MASS::mvrnorm(n = 100, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)









# n=200
set.seed(2000)
p300_3blocks_n200_1 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2001)
p300_3blocks_n200_2 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2002)
p300_3blocks_n200_3 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2003)
p300_3blocks_n200_4 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2004)
p300_3blocks_n200_5 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2005)
p300_3blocks_n200_6 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2006)
p300_3blocks_n200_7 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2007)
p300_3blocks_n200_8 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2008)
p300_3blocks_n200_9 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2009)
p300_3blocks_n200_10 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2010)
p300_3blocks_n200_11 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2011)
p300_3blocks_n200_12 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2012)
p300_3blocks_n200_13 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2013)
p300_3blocks_n200_14 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2014)
p300_3blocks_n200_15 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2015)
p300_3blocks_n200_16 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2016)
p300_3blocks_n200_17 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2017)
p300_3blocks_n200_18 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2018)
p300_3blocks_n200_19 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2019)
p300_3blocks_n200_20 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2020)
p300_3blocks_n200_21 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2021)
p300_3blocks_n200_22 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2022)
p300_3blocks_n200_23 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2023)
p300_3blocks_n200_24 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2024)
p300_3blocks_n200_25 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2025)
p300_3blocks_n200_26 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2026)
p300_3blocks_n200_27 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2027)
p300_3blocks_n200_28 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2028)
p300_3blocks_n200_29 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2029)
p300_3blocks_n200_30 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2030)
p300_3blocks_n200_31 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2031)
p300_3blocks_n200_32 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2032)
p300_3blocks_n200_33 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2033)
p300_3blocks_n200_34 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2034)
p300_3blocks_n200_35 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2035)
p300_3blocks_n200_36 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2036)
p300_3blocks_n200_37 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2037)
p300_3blocks_n200_38 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2038)
p300_3blocks_n200_39 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2039)
p300_3blocks_n200_40 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2040)
p300_3blocks_n200_41 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2041)
p300_3blocks_n200_42 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2042)
p300_3blocks_n200_43 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2043)
p300_3blocks_n200_44 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2044)
p300_3blocks_n200_45 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2045)
p300_3blocks_n200_46 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2046)
p300_3blocks_n200_47 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2047)
p300_3blocks_n200_48 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2048)
p300_3blocks_n200_49 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2049)
p300_3blocks_n200_50 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2050)
p300_3blocks_n200_51 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2051)
p300_3blocks_n200_52 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2052)
p300_3blocks_n200_53 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2053)
p300_3blocks_n200_54 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2054)
p300_3blocks_n200_55 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2055)
p300_3blocks_n200_56 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2056)
p300_3blocks_n200_57 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2057)
p300_3blocks_n200_58 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2058)
p300_3blocks_n200_59 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2059)
p300_3blocks_n200_60 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2060)
p300_3blocks_n200_61 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2061)
p300_3blocks_n200_62 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2062)
p300_3blocks_n200_63 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2063)
p300_3blocks_n200_64 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2064)
p300_3blocks_n200_65 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2065)
p300_3blocks_n200_66 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2066)
p300_3blocks_n200_67 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2067)
p300_3blocks_n200_68 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2068)
p300_3blocks_n200_69 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2069)
p300_3blocks_n200_70 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2070)
p300_3blocks_n200_71 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2071)
p300_3blocks_n200_72 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2072)
p300_3blocks_n200_73 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2073)
p300_3blocks_n200_74 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2074)
p300_3blocks_n200_75 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2075)
p300_3blocks_n200_76 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2076)
p300_3blocks_n200_77 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2077)
p300_3blocks_n200_78 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2078)
p300_3blocks_n200_79 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2079)
p300_3blocks_n200_80 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2080)
p300_3blocks_n200_81 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2081)
p300_3blocks_n200_82 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2082)
p300_3blocks_n200_83 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2083)
p300_3blocks_n200_84 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2084)
p300_3blocks_n200_85 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2085)
p300_3blocks_n200_86 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2086)
p300_3blocks_n200_87 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2087)
p300_3blocks_n200_88 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2088)
p300_3blocks_n200_89 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2089)
p300_3blocks_n200_90 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2090)
p300_3blocks_n200_91 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2091)
p300_3blocks_n200_92 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2092)
p300_3blocks_n200_93 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2093)
p300_3blocks_n200_94 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2094)
p300_3blocks_n200_95 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2095)
p300_3blocks_n200_96 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2096)
p300_3blocks_n200_97 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2097)
p300_3blocks_n200_98 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2098)
p300_3blocks_n200_99 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

set.seed(2099)
p300_3blocks_n200_100 <- MASS::mvrnorm(n = 200, mu = rep(0, 300), Sigma = true_covariance_p300_3blocks)

