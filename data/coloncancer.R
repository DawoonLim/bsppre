library(rvest)
library(doParallel)

# 1. HTML 문서 불러오기
#    - 로컬 파일이라면 "file:///C:/.../myfile.html" 형태로
#    - 웹에서 가져온다면 "https://..." 형태로
url <- "http://genomics-pubs.princeton.edu/oncology/affydata/I2000.html"
page <- read_html(url)

# 2. 단락(<p> 등) 노드 추출
#    - font 태그까지 포함하고 싶다면 html_nodes(page, "p, font") 형태로 변경 가능
p_nodes <- html_nodes(page, "font")

# 3. 각 단락에서 숫자 벡터 추출
#    - 한 단락에 62개의 숫자가 들어있다고 가정
colon_data_list <- lapply(p_nodes, function(node) {
  # 텍스트 추출
  txt <- html_text(node, trim = TRUE)
  # 공백 기준으로 분리
  num_strs <- strsplit(txt, "\\s+")[[1]]
  # 숫자로 변환
  as.numeric(num_strs)
})



# 4. 리스트를 62×2000 행렬로 변환
#    - 각 단락(열)마다 62개의 숫자(행)가 있다고 가정
#    - do.call(cbind, ...)를 이용하면 열방향으로 결합
colon_data_matrix <- do.call(cbind, colon_data_list)

# 크기 확인 (행=62, 열=단락 개수)
dim(colon_data_matrix)
#colon_data_matrix[,1999]


colon_row_names <- c(
  "-1","1","-2","2","-3","3","-4","4","-5","5","-6","6","-7","7","-8","8","-9","9",
  "-10","10","-11","11","-12","12","-13","-14","-15","-16","-17","-18","-19","-20","-21","-22","-23","-24","-25","-26","27","-27","-28","28","29","-29","-30","-31","-32","32","-33","33","34","-34","-35","35","36","-36","-37","-38","-39","39","-40","40"
)
# length(colon_row_names)
rownames(colon_data_matrix) <- colon_row_names



#write.table(
#  colon_row_names, 
#  file = "data_tissue.csv",
#  sep = ",",         # 쉼표로 구분 → CSV 형식
#  row.names = TRUE,  # 위에서 지정한 행 이름을 사용
#  col.names = FALSE, # 열 이름(헤더)은 출력하지 않음
#  quote = FALSE      # 숫자라면 큰따옴표 생략(원하면 TRUE로 변경 가능)
#)


colon_data_matrix <- scale(colon_data_matrix)
rownames(colon_data_matrix)



# 그룹 생성 (행 이름에 따라 음수/양수 그룹)
colon_group <- ifelse(as.numeric(rownames(colon_data_matrix)) < 0, "negative", "positive")
colon_group <- factor(colon_group)
summary(colon_group)

# 각 열별로 t-test 수행하여 p-value 계산
p.values_colon <- apply(colon_data_matrix, 2, function(x) {
  t.res <- t.test(x ~ colon_group)
  t.res$p.value
})


# dimension reduction p=500
selected_p500_colon_variables <- order(p.values_colon)[1:500]
selected_p500_colon_data <- colon_data_matrix[, selected_p500_colon_variables]


# dimension reduction p=400
selected_p400_colon_variables <- order(p.values_colon)[1:400]
selected_p400_colon_data <- colon_data_matrix[, selected_p400_colon_variables]


# dimension reduction p=300
selected_p300_colon_variables <- order(p.values_colon)[1:300]
selected_p300_colon_data <- colon_data_matrix[, selected_p300_colon_variables]


# dimension reduction p=200
selected_p200_colon_variables <- order(p.values_colon)[1:200]
selected_p200_colon_data <- colon_data_matrix[, selected_p200_colon_variables]


# dimension reduction p=100
selected_p100_colon_variables <- order(p.values_colon)[1:100]
selected_p100_colon_data <- colon_data_matrix[, selected_p100_colon_variables]




#################################################################################
########################### LOOCV parallel bmsppre ##############################
#################################################################################
#################### p=500 #########################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_parallel_bmsppre_p500 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p500_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p500_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 500)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_parallel_bmsppre_p500 <- mean(predicted_parallel_bmsppre != colon_group)

#################### p=400 #########################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_parallel_bmsppre_p400 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p400_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p400_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 400)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_parallel_bmsppre_p400 <- mean(predicted_parallel_bmsppre != colon_group)



#################### p=300 #########################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_parallel_bmsppre_p300 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p300_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p300_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 300)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_parallel_bmsppre_p300 <- mean(predicted_parallel_bmsppre != colon_group)


#################### p=200 #########################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_parallel_bmsppre_p200 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p200_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p200_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 200)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_parallel_bmsppre_p200 <- mean(predicted_parallel_bmsppre != colon_group)



#################### p=100 #########################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_parallel_bmsppre_p100 <- system.time({
  predicted_parallel_bmsppre <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p100_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p100_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    # i 부터 해보자
    result_precision_mat <- community_bsppre(train_data , cluster_louvain, seed = i)
    precision_mat <- integrate_community_results(result_precision_mat$result, p = 100)
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_parallel_bmsppre[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_parallel_bmsppre_p100 <- mean(predicted_parallel_bmsppre != colon_group)





#################################################################################
############################ LOOCV graphical lasso ##############################
#################################################################################
###################### p = 500 ########################
set.seed(123)
colon_elapsed_loocv_glasso_p500 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p500_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p500_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_glasso_p500 <- mean(predicted_glasso != colon_group)

###################### p = 400 ########################
set.seed(123)
colon_elapsed_loocv_glasso_p400 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p400_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p400_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_glasso_p400 <- mean(predicted_glasso != colon_group)


###################### p = 300 ########################
set.seed(123)
colon_elapsed_loocv_glasso_p300 <- system.time({
predicted_glasso <- rep(NA, n)
for(i in 1:n){
  # i번째 관측치를 제외한 training data와 해당 그룹 레이블
  train_data <- selected_p300_colon_data[-i, ]
  train_labels <- colon_group[-i]
  
  # 테스트 데이터 (1×p 행렬)
  test_data <- selected_p300_colon_data[i, , drop = FALSE]
  
  # 각 그룹별 평균 계산
  mu_neg <- colMeans(train_data[train_labels == "negative", ])
  mu_pos <- colMeans(train_data[train_labels == "positive", ])
  
  # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
  precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
  
  # 각 클래스의 사전 확률 계산
  n_neg <- sum(train_labels == "negative")
  n_pos <- sum(train_labels == "positive")
  prior_neg <- n_neg / (n_neg + n_pos)
  prior_pos <- n_pos / (n_neg + n_pos)
  
  # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
  x <- as.vector(test_data)
  score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
  score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
  
  # 더 높은 점수를 가진 클래스로 분류
  predicted_glasso[i] <- ifelse(score_neg > score_pos, "negative", "positive")
}
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_glasso_p300 <- mean(predicted_glasso != colon_group)

###################### p = 200 ########################
set.seed(123)
colon_elapsed_loocv_glasso_p200 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p200_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p200_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_glasso_p200 <- mean(predicted_glasso != colon_group)

###################### p = 100 ########################
set.seed(123)
colon_elapsed_loocv_glasso_p100 <- system.time({
  predicted_glasso <- rep(NA, n)
  for(i in 1:n){
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p100_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p100_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # PreEst.glasso를 이용하여 training data로부터 정밀도 행렬 추정 (tuning parameter lam은 조정 필요)
    precision_mat <- CovTools::PreEst.glasso(train_data, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE) $ C
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_glasso[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_glasso_p100 <- mean(predicted_glasso != colon_group)




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
elapsed_loocv_clime_p500 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p500_colon_data[-i, , drop = FALSE]
    train_lbl   <- colon_group[-i]
    test_x      <- selected_p500_colon_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "negative", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "positive", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "negative")
    prior_pos <- mean(train_lbl == "positive")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "negative" else "positive"
  }
})["elapsed"]
stopCluster(cl)
error_rate_clime_p500 <- mean(predicted_clime != colon_group)



################## p = 400 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
elapsed_loocv_clime_p400 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p400_colon_data[-i, , drop = FALSE]
    train_lbl   <- colon_group[-i]
    test_x      <- selected_p400_colon_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "negative", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "positive", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "negative")
    prior_pos <- mean(train_lbl == "positive")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "negative" else "positive"
  }
})["elapsed"]
stopCluster(cl)
error_rate_clime_p400 <- mean(predicted_clime != colon_group)

################## p = 300 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
elapsed_loocv_clime_p300 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p300_colon_data[-i, , drop = FALSE]
    train_lbl   <- colon_group[-i]
    test_x      <- selected_p300_colon_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "negative", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "positive", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "negative")
    prior_pos <- mean(train_lbl == "positive")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "negative" else "positive"
  }
})["elapsed"]
stopCluster(cl)
error_rate_clime_p300 <- mean(predicted_clime != colon_group)

################## p = 200 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
elapsed_loocv_clime_p200 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p200_colon_data[-i, , drop = FALSE]
    train_lbl   <- colon_group[-i]
    test_x      <- selected_p200_colon_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "negative", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "positive", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "negative")
    prior_pos <- mean(train_lbl == "positive")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "negative" else "positive"
  }
})["elapsed"]
stopCluster(cl)
error_rate_clime_p200 <- mean(predicted_clime != colon_group)


################## p = 100 #####################
set.seed(123)  
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
elapsed_loocv_clime_p100 <- system.time({
  # .options.RNG: doRNG를 써서 foreach 안에서도 시드 고정
  predicted_clime <- foreach(
    i = 1:n,
    .combine = "c",                     # 결과를 벡터로 합치기
    .packages = c("flare"),
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p100_colon_data[-i, , drop = FALSE]
    train_lbl   <- colon_group[-i]
    test_x      <- selected_p100_colon_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "negative", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "positive", , drop = FALSE])
    
    # 3) precision 추정 (CLIME)
    fit <- flare::sugm(train_data,
                       method      = "clime",
                       standardize = TRUE,
                       perturb     = TRUE,
                       verbose     = FALSE)
    precision_mat <- flare::sugm.select(fit, criterion = "cv")$opt.icov
    
    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "negative")
    prior_pos <- mean(train_lbl == "positive")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "negative" else "positive"
  }
})["elapsed"]
stopCluster(cl)
error_rate_clime_p100 <- mean(predicted_clime != colon_group)



#################################################################################
############################ LOOCV group_detect #################################
#################################################################################

################## p = 500 #####################
################## k = 2  #####################
library(ggplot2)
library(patchwork)
pca <- prcomp(selected_p500_colon_data, scale = TRUE)
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
################## k =  #####################
library(ggplot2)
library(patchwork)
pca <- prcomp(selected_p400_colon_data, scale = TRUE)
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
################## k =  #####################
library(ggplot2)
library(patchwork)
pca <- prcomp(selected_p300_colon_data, scale = TRUE)
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
################## k =  #####################
library(ggplot2)
library(patchwork)
pca <- prcomp(selected_p200_colon_data, scale = TRUE)
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
################## k =  #####################
library(ggplot2)
library(patchwork)
pca <- prcomp(selected_p100_colon_data, scale = TRUE)
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


################## p = 2000 #####################
################## k =  #####################
library(ggplot2)
library(patchwork)
pca <- prcomp(colon_data_matrix, scale = TRUE)
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






################## p = 500 #####################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_group_detect_p500 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p500_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p500_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega

    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_group_detect_p500 <- mean(predicted_group_detect != colon_group)

################## p = 400 #####################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_group_detect_p400 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p400_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p400_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_group_detect_p400 <- mean(predicted_group_detect != colon_group)

################## p = 300 #####################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_group_detect_p300 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p300_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p300_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_group_detect_p300 <- mean(predicted_group_detect != colon_group)

################## p = 200 #####################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_group_detect_p200 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p200_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p200_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_group_detect_p200 <- mean(predicted_group_detect != colon_group)

################## p = 100 #####################
n <- nrow(colon_data_matrix)
colon_elapsed_loocv_group_detect_p100 <- system.time({
  predicted_group_detect <- rep(NA, n)
  for(i in 1:n){
    set.seed(i)
    # i번째 관측치를 제외한 training data와 해당 그룹 레이블
    train_data <- selected_p100_colon_data[-i, ]
    train_labels <- colon_group[-i]
    
    # 테스트 데이터 (1×p 행렬)
    test_data <- selected_p100_colon_data[i, , drop = FALSE]
    
    # 각 그룹별 평균 계산
    mu_neg <- colMeans(train_data[train_labels == "negative", ])
    mu_pos <- colMeans(train_data[train_labels == "positive", ])
    
    # precision inference methods
    precision_mat <- precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega
    
    
    # 각 클래스의 사전 확률 계산
    n_neg <- sum(train_labels == "negative")
    n_pos <- sum(train_labels == "positive")
    prior_neg <- n_neg / (n_neg + n_pos)
    prior_pos <- n_pos / (n_neg + n_pos)
    
    # LDA 판별식 적용 (δ_k(x) = x' Σ⁻¹ μ_k - 0.5 μ_k' Σ⁻¹ μ_k + log(π_k))
    x <- as.vector(test_data)
    score_neg <- sum(x * (precision_mat %*% mu_neg)) - 0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) + log(prior_neg)
    score_pos <- sum(x * (precision_mat %*% mu_pos)) - 0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) + log(prior_pos)
    
    # 더 높은 점수를 가진 클래스로 분류
    predicted_group_detect[i] <- ifelse(score_neg > score_pos, "negative", "positive")
  }
})["elapsed"]
# LOOCV에 의한 분류 오차 계산
colon_error_rate_group_detect_p100 <- mean(predicted_group_detect != colon_group)
























################## p = 100 #####################
library(doRNG)
n_cores <- parallel::detectCores()      
cl <- parallel::makeCluster(n_cores)              
doParallel::registerDoParallel(cl)        

# 병렬 LOOCV 수행
set.seed(123)
colon_elapsed_loocv_group_detect_p100 <- system.time({
  predicted_group_detect <- foreach(
    i = 1:n,
    .combine = "c",
    .options.RNG = 123
  ) %dorng% {
    # 1) i번째 제외
    train_data  <- selected_p100_colon_data[-i, , drop = FALSE]
    train_lbl   <- colon_group[-i]
    test_x      <- selected_p100_colon_data[i, , drop = FALSE]
    
    # 2) 클래스별 평균
    mu_neg <- colMeans(train_data[train_lbl == "negative", , drop = FALSE])
    mu_pos <- colMeans(train_data[train_lbl == "positive", , drop = FALSE])
    
    # 3) precision 추정
    # transpose_train_data <- t(train_data)
    precision_mat <- Group_Detect(train_data, 2, 0.01, 0.01, 0.01)$Omega

    # 4) 사전확률 계산
    prior_neg <- mean(train_lbl == "negative")
    prior_pos <- mean(train_lbl == "positive")
    
    # 5) LDA 결정함수
    x_vec      <- as.vector(test_x)
    score_neg  <- sum(x_vec * (precision_mat %*% mu_neg)) -
      0.5 * sum(mu_neg * (precision_mat %*% mu_neg)) +
      log(prior_neg)
    score_pos  <- sum(x_vec * (precision_mat %*% mu_pos)) -
      0.5 * sum(mu_pos * (precision_mat %*% mu_pos)) +
      log(prior_pos)
    
    if (score_neg > score_pos) "negative" else "positive"
  }
})["elapsed"]
stopCluster(cl)
colon_error_rate_group_detect_p100 <- mean(predicted_group_detect != colon_group)

