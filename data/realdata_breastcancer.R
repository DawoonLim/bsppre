# https://bioinformatics.mdanderson.org/public-datasets/
# MDA133: Clinical Data and dChip MBEI value Files

library(readxl)
library(dplyr)
setwd("C:/Users/dawoo/OneDrive/바탕 화면")
# -----------------------------
# 1) 첫 번째 파일 불러오기
# -----------------------------
# data_matrix.xlsx를 읽어와서 data.frame 형태로 변환
breast_cancer_data <- read_excel("MDA133PredictorTrainAndValidation.xls")

# 1. 첫 4행 제거
df <- breast_cancer_data[-c(1:4), ]

# 2. 첫 행의 두 번째 열부터가 새로운 열 이름이 됩니다.
new_colnames <- as.character(unlist(df[1, -1]))

# 3. 헤더 행(열 이름이 들어있는 행)은 제외하고 나머지 데이터만 추출
df_data <- df[-1, ]

# 4. 남은 데이터의 첫 열이 행 이름
new_rownames <- df_data[[1]]

# 5. 행 이름이 들어있던 첫 열은 제거
df_numeric <- df_data[, -1]

# 6. data.frame을 행과 열 이름이 있는 행렬로 변환
matrix_data <- as.matrix(df_numeric)
rownames(matrix_data) <- new_rownames
colnames(matrix_data) <- new_colnames

# 최종 결과: matrix_data는 행 이름과 열 이름을 가진 행렬입니다.
# matrix_data가 문자형 숫자를 포함한 행렬인 경우:
matrix_data_numeric <- apply(matrix_data, 2, as.numeric)
matrix_data_numeric <- t(matrix_data_numeric)
# scale
breast_cancer_data <- scale(matrix_data_numeric)
dim(breast_cancer_data)




# 2. 그룹 정보 파일 읽기
group_info <- read_excel("MDA133CompleteInfo20070319.xls")

# 2. 첫 번째 행(불필요한 정보) 제거
group_info <- group_info[-1, ]

# 3. 이제 첫 번째 행을 실제 열 이름으로 지정한 후, 데이터에서 제거합니다.
colnames(group_info) <- as.character(group_info[1, ])
group_info <- group_info[-1, ]
colnames(group_info)

# group_info 데이터프레임의 pCR 열을 factor형으로 변환하여 group 객체에 저장
breast_cancer_group <- factor(group_info$pCR)

# 변환 결과 확인 (예: factor의 레벨 확인)
summary(breast_cancer_group)



# 각 열별로 t-test 수행하여 p-value 계산
p.values_breast_cancer <- apply(breast_cancer_data, 2, function(x) {
  t.res_breast_cancer <- t.test(x ~ breast_cancer_group)
  t.res_breast_cancer$p.value
})



selected_p500_variables_breast_cancer <- order(p.values_breast_cancer)[1:500]
selected_p500_breast_cancer_data <- breast_cancer_data[, selected_p500_variables_breast_cancer]
dim(selected_p500_breast_cancer_data)

selected_p400_variables_breast_cancer <- order(p.values_breast_cancer)[1:400]
selected_p400_breast_cancer_data <- breast_cancer_data[, selected_p400_variables_breast_cancer]
dim(selected_p400_breast_cancer_data)

selected_p300_variables_breast_cancer <- order(p.values_breast_cancer)[1:300]
selected_p300_breast_cancer_data <- breast_cancer_data[, selected_p300_variables_breast_cancer]
dim(selected_p300_breast_cancer_data)

selected_p200_variables_breast_cancer <- order(p.values_breast_cancer)[1:200]
selected_p200_breast_cancer_data <- breast_cancer_data[, selected_p200_variables_breast_cancer]
dim(selected_p200_breast_cancer_data)

selected_p100_variables_breast_cancer <- order(p.values_breast_cancer)[1:100]
selected_p100_breast_cancer_data <- breast_cancer_data[, selected_p100_variables_breast_cancer]
dim(selected_p100_breast_cancer_data)





#################################################################################
########################### LOOCV parallel bmsppre ##############################
#################################################################################
#################### p=500 #########################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_parallel_bmsppre_p500 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p500_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p500_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 500)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_parallel_bmsppre_p500 <- mean(predicted_parallel_bmsppre != breast_cancer_group)


#################### p=400 #########################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_parallel_bmsppre_p400 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p400_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p400_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 400)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_parallel_bmsppre_p400 <- mean(predicted_parallel_bmsppre != breast_cancer_group)


#################### p=300 #########################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_parallel_bmsppre_p300 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p300_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p300_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 300)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_parallel_bmsppre_p300 <- mean(predicted_parallel_bmsppre != breast_cancer_group)


#################### p=200 #########################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_parallel_bmsppre_p200 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p200_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p200_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 200)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_parallel_bmsppre_p200 <- mean(predicted_parallel_bmsppre != breast_cancer_group)


#################### p=100 #########################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_parallel_bmsppre_p100 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p100_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p100_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 100)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_parallel_bmsppre_p100 <- mean(predicted_parallel_bmsppre != breast_cancer_group)


#################################################################################
############################ LOOCV graphical lasso ##############################
#################################################################################
###################### p = 500 ########################
set.seed(123)
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_glasso_p500 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p500_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p500_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_glasso_p500 <- mean(predicted_glasso != breast_cancer_group)

###################### p = 400 ########################
set.seed(123)
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_glasso_p400 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p400_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p400_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_glasso_p400 <- mean(predicted_glasso != breast_cancer_group)


###################### p = 300 ########################
set.seed(123)
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_glasso_p300 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p300_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p300_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_glasso_p300 <- mean(predicted_glasso != breast_cancer_group)


###################### p = 200 ########################
set.seed(123)
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_glasso_p200 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p200_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p200_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_glasso_p200 <- mean(predicted_glasso != breast_cancer_group)


###################### p = 100 ########################
set.seed(123)
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_glasso_p100 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p100_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p100_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_glasso_p100 <- mean(predicted_glasso != breast_cancer_group)


#################################################################################
############################### LOOCV clime #####################################
#################################################################################
################## p = 500 #####################
# 필요한 패키지 로드
library(doParallel)
library(foreach)
library(doRNG)

set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_clime_p500 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p500_breast_cancer_data[-i, , drop = FALSE]
    train_lbl   <- breast_cancer_group[-i]
    test_x      <- selected_p500_breast_cancer_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "0", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "1", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "0")
    prior_pos <- mean(train_lbl == "1")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "0" else "1"
  }
})["elapsed"]
stopCluster(cl)
breastcancer_error_rate_clime_p500 <- mean(predicted_clime != breast_cancer_group)



################## p = 400 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_clime_p400 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p400_breast_cancer_data[-i, , drop = FALSE]
    train_lbl   <- breast_cancer_group[-i]
    test_x      <- selected_p400_breast_cancer_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "0", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "1", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "0")
    prior_pos <- mean(train_lbl == "1")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "0" else "1"
  }
})["elapsed"]
stopCluster(cl)
breastcancer_error_rate_clime_p400 <- mean(predicted_clime != breast_cancer_group)

################## p = 300 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_clime_p300 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p300_breast_cancer_data[-i, , drop = FALSE]
    train_lbl   <- breast_cancer_group[-i]
    test_x      <- selected_p300_breast_cancer_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "0", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "1", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "0")
    prior_pos <- mean(train_lbl == "1")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "0" else "1"
  }
})["elapsed"]
stopCluster(cl)
breastcancer_error_rate_clime_p300 <- mean(predicted_clime != breast_cancer_group)

################## p = 200 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_clime_p200 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p200_breast_cancer_data[-i, , drop = FALSE]
    train_lbl   <- breast_cancer_group[-i]
    test_x      <- selected_p200_breast_cancer_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "0", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "1", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "0")
    prior_pos <- mean(train_lbl == "1")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "0" else "1"
  }
})["elapsed"]
stopCluster(cl)
breastcancer_error_rate_clime_p200 <- mean(predicted_clime != breast_cancer_group)


################## p = 100 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_clime_p100 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p100_breast_cancer_data[-i, , drop = FALSE]
    train_lbl   <- breast_cancer_group[-i]
    test_x      <- selected_p100_breast_cancer_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "0", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "1", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "0")
    prior_pos <- mean(train_lbl == "1")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "0" else "1"
  }
})["elapsed"]
stopCluster(cl)
breastcancer_error_rate_clime_p100 <- mean(predicted_clime != breast_cancer_group)


#################################################################################
############################ LOOCV group_detect #################################
#################################################################################
################## p = 500 #####################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_group_detect_p500 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p500_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p500_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_group_detect_p500 <- mean(predicted_group_detect != breast_cancer_group)

################## p = 400 #####################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_group_detect_p400 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p400_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p400_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_group_detect_p400 <- mean(predicted_group_detect != breast_cancer_group)

################## p = 300 #####################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_group_detect_p300 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p300_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p300_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_group_detect_p300 <- mean(predicted_group_detect != breast_cancer_group)


################## p = 200 #####################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_group_detect_p200 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p200_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p200_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_group_detect_p200 <- mean(predicted_group_detect != breast_cancer_group)

################## p = 100 #####################
n <- nrow(breast_cancer_data)
breastcancer_elapsed_loocv_group_detect_p100 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p100_breast_cancer_data[-i, ]
    train_labels <- breast_cancer_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p100_breast_cancer_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "0", ])
    mu_pos <- colMeans(train_data[train_labels == "1", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "0")
    n_pos <- sum(train_labels == "1")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "0", "1")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
breastcancer_error_rate_group_detect_p100 <- mean(predicted_group_detect != breast_cancer_group)







################## p = 500 #####################
################## k =  3  #####################
library(ggplot2)
library(patchwork)
pca <- prcomp(selected_p500_breast_cancer_data, scale = TRUE)
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

################## p = 400 #####################
################## k =  3  #####################
pca <- prcomp(selected_p400_breast_cancer_data, scale = TRUE)
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

################## p = 300 #####################
################## k =  3  #####################
pca <- prcomp(selected_p300_breast_cancer_data, scale = TRUE)
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

################## p = 200 #####################
################## k =  3  #####################
pca <- prcomp(selected_p200_breast_cancer_data, scale = TRUE)
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

################## p = 100 #####################
################## k =  3  #####################
pca <- prcomp(selected_p100_breast_cancer_data, scale = TRUE)
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