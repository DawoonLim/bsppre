leukemia_data <- read.csv("leukemia_big.csv", header = TRUE)

# 전치 후, 원래의 열 이름이 행 이름으로 설정됩니다.
leukemia_data <- t(leukemia_data)
# 데이터 표준화
leukemia_data <- scale(leukemia_data)


is.numeric(leukemia_data[1,1])
dim(leukemia_data)
rownames(leukemia_data)


# leukemia_data의 rownames에서 그룹 정보 추출
leukemia_group <- factor(sub("^(ALL|AML).*", "\\1", rownames(leukemia_data)))

# 변환 결과 확인 (예: factor의 레벨 확인)
summary(leukemia_group)


# 각 열별로 t-test 수행하여 p-value 계산
p.values_leukemia <- apply(leukemia_data, 2, function(x) {
  t.res_leukemia <- t.test(x ~ leukemia_group)
  t.res_leukemia$p.value
})








# dimension reduction to p=200
# 바로 에러남
selected_p200_variables_leukemia<- order(p.values_leukemia)[1:200]
selected_p200_leukemia_data <- leukemia_data[, selected_p200_variables_leukemia]
dim(selected_p200_leukemia_data)


# dimension reduction to p=100
# 몇번하다 에러
selected_p100_variables_leukemia<- order(p.values_leukemia)[1:100]
selected_p100_leukemia_data <- leukemia_data[, selected_p100_variables_leukemia]
dim(selected_p100_leukemia_data)






n <- nrow(leukemia_data)
#################################################################################
########################### LOOCV parallel bmsppre ##############################
#################################################################################
leukemia_elapsed_loocv_parallel_bmsppre <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p80_leukemia_data[-i, ]
    train_labels <- group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p80_leukemia_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_all <- colMeans(train_data[train_labels == "ALL", ])
    mu_aml <- colMeans(train_data[train_labels == "AML", ])
    
    # precision inference methods
    result_precision_mat <- community_bsppre(train_data , cluster_louvain)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 80)
    
    
    # 각 클래스의 사전 확률 계산
    n_all <- sum(train_labels == "ALL")
    n_aml <- sum(train_labels == "AML")
    prior_all <- n_all / (n_all + n_aml)
    prior_aml <- n_aml / (n_all + n_aml)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_all <- sum(x * (precision_mat %*% mu_all)) - 0.5 * sum(mu_all * (precision_mat %*% mu_all)) + log(prior_all)
    score_aml <- sum(x * (precision_mat %*% mu_aml)) - 0.5 * sum(mu_aml * (precision_mat %*% mu_aml)) + log(prior_aml)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_all > score_aml, "ALL", "AML")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
leukemia_error_rate_parallel_bmsppre <- mean(predicted_parallel_bmsppre != group)


