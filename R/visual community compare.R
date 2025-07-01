# 없어진 비대각 원소 수까지, true precision edge가 모두 빨간색으로 표시됨
visualize_communities <- function(true_precision_matrix, detected_communities, estimated_result) {
  library(ggplot2)
  library(reshape2)
  
  # 1. 탐지된 커뮤니티에 따라 행렬 재배열
  detected_order <- order(detected_communities)
  detected_reordered_matrix <- true_precision_matrix[detected_order, detected_order]
  
  # 2. 탐지된 커뮤니티 블록 정의
  detected_blocks <- outer(detected_communities[detected_order], 
                           detected_communities[detected_order], 
                           FUN = "==")
  
  # 3. 데이터 변환
  matrix_df <- melt(detected_reordered_matrix)
  colnames(matrix_df) <- c("Var1", "Var2", "Value")
  
  # 탐지된 커뮤니티 정보 추가
  matrix_df$DetectedCommunity <- detected_communities[detected_order][matrix_df$Var1]
  
  # True Precision edge 정보 추가
  matrix_df$EdgeAlpha <- ifelse(matrix_df$Value != 0, 0.5, 0)  # 0이 아닌 값만 투명도 적용
  matrix_df$EdgeColor <- ifelse(matrix_df$Value != 0, "red", "transparent")  # 🔥 NA 대신 "transparent" 추가
  
  # 4. 탐지된 커뮤니티 블록 테두리 생성
  block_data <- as.data.frame(which(detected_blocks, arr.ind = TRUE))
  colnames(block_data) <- c("Var1", "Var2")
  
  # 5. 탐지된 커뮤니티가 true precision의 비대각 nonzero 원소를 삭제한 경우 개수 계산
  true_nonzero_offdiag <- which(true_precision_matrix != 0 & row(true_precision_matrix) < col(true_precision_matrix), arr.ind = TRUE)
  detected_zero_offdiag <- which(estimated_result == 0 & row(estimated_result) < col(estimated_result), arr.ind = TRUE)
  
  # 비교를 위해 행렬의 인덱스를 리스트로 변환
  true_nonzero_pairs <- apply(true_nonzero_offdiag, 1, function(x) paste(sort(x), collapse = "-"))
  detected_zero_pairs <- apply(detected_zero_offdiag, 1, function(x) paste(sort(x), collapse = "-"))
  
  # true_nonzero_pairs 중에서 detected_zero_pairs에 포함되는 개수 찾기
  deleted_edges <- sum(true_nonzero_pairs %in% detected_zero_pairs)
  
  # 6. 시각화
  p <- ggplot(matrix_df, aes(x = Var1, y = Var2)) +
    
    # 탐지된 커뮤니티 블록 (회색 음영)
    geom_tile(data = block_data, fill = "gray", alpha = 0.7) +
    
    # True Precision Matrix edge 표시 (색상 및 투명도)
    geom_point(aes(color = EdgeColor, alpha = EdgeAlpha), size = 0.5) +
    scale_color_manual(values = c("red" = "red", "transparent" = "transparent"), name = "True Edge", guide = FALSE) +  
    scale_alpha(range = c(0, 0.7), guide = FALSE) +
    
    # 제목 및 축 설정
    labs(title = paste("Detected Communities with True Precision Nonzero elements\nDeleted Nonzero Off-Diagonal: ", deleted_edges),
         x = "Variables (Detected Order)", 
         y = "Variables (Detected Order)") +
    theme_minimal() +
    theme(axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          axis.ticks = element_blank(),
          panel.grid = element_blank())
  
  print(p)
  
  # 삭제된 nonzero 비대각 원소 개수 출력
  message("Deleted nonzero off-diagonal elements: ", deleted_edges)
  
  return(list(plot = p, deleted_edges = deleted_edges))
}



###########################################################
################ p = 300, n = 100, 3 blocks ###############
###########################################################
visualize_p300_n100_3blocks_1 <- visualize_communities(true_precision_p300_3blocks, result_p300_3blocks_n100_1$detected_communities, estimated_p300_3blocks_n100_1)

###########################################################
################ p = 300, n = 200, 3 blocks ###############
###########################################################
visualize_p300_n200_3blocks_1 <- visualize_communities(true_precision_p300_3blocks, result_p300_3blocks_n200_1$detected_communities, estimated_p300_3blocks_n200_1)


###########################################################
################ p = 300, n = 100, 10 blocks ##############
###########################################################
visualize_p300_n100_10blocks_1 <- visualize_communities(true_precision_p300_10blocks, result_p300_10blocks_n100_1$detected_communities, estimated_p300_10blocks_n100_1)


###########################################################
################ p = 300, n = 200, 10 blocks ##############
###########################################################
visualize_p300_n200_10blocks_1 <- visualize_communities(true_precision_p300_10blocks, result_community_bmmpsre_p300_10blocks_n200_1$detected_communities, estimated_community_bmmpsre_p300_10blocks_n200_1)



###########################################################
################ p = 300, n = 100, random #################
###########################################################
#visualize_p300_n100_random_1 <- visualize_communities(true_precision_p300_random, result_community_bsppre_p300_random_n100_1$detected_communities, estimated_community_bsppre_p300_random_n100_1)


###########################################################
################ p = 300, n = 200, random #################
###########################################################
#visualize_p300_n200_random_1 <- visualize_communities(true_precision_p300_random, result_community_bsppre_p300_random_n200_1$detected_communities, estimated_community_bsppre_p300_random_n200_1)




###########################################################
################ p = 500, n = 200, 5 blocks ###############
###########################################################
visualize_p500_n200_5blocks_1 <- visualize_communities(true_precision_p500_5blocks, result_community_bsppre_p500_5blocks_n200_1$detected_communities, estimated_community_bsppre_p500_5blocks_n200_1)


###########################################################
################ p = 500, n = 300, 5 blocks ###############
###########################################################
visualize_p500_n300_5blocks_1 <- visualize_communities(true_precision_p500_5blocks, result_community_bsppre_p500_5blocks_n300_1$detected_communities, estimated_community_bsppre_p500_5blocks_n300_1)



###########################################################
################ p = 500, n = 200, 10 blocks ###############
###########################################################
visualize_p500_n200_10blocks_1 <- visualize_communities(true_precision_p500_10blocks, result_community_bmmpsre_p500_10blocks_n200_1$detected_communities, estimated_community_bmmpsre_p500_10blocks_n200_1)

###########################################################
################ p = 500, n = 300, 10 blocks ###############
###########################################################
visualize_p500_n300_10blocks_1 <- visualize_communities(true_precision_p500_10blocks, result_community_bmmpsre_p500_10blocks_n300_1$detected_communities, estimated_community_bmmpsre_p500_10blocks_n300_1)



###########################################################
################ p = 500, n = 200, random #################
###########################################################
#visualize_p500_n200_random_1 <- visualize_communities(true_precision_p500_random, result_community_bsppre_p500_random_n200_1$detected_communities, estimated_community_bsppre_p500_random_n200_1)


###########################################################
################ p = 500, n = 300, random #################
###########################################################
#visualize_p500_n300_random_1 <- visualize_communities(true_precision_p500_random, result_community_bsppre_p500_random_n300_1$detected_communities, estimated_community_bsppre_p500_random_n300_1)



