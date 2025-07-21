##########################################################
############### test for various scenario ################
##########################################################

##########################################################
# cluster_fast_greedy, cluster_leading_eigen, cluster_edge_betweenness, cluster_spinglass,
# cluster_walktrap, cluster_louvain, cluster_label_prop, cluster_leiden, cluster_infomap 
##########################################################
# 1순위: cluster_louvain - 제일 속도 빠름
# 2순위: cluster_edge_betweenness 
# 3순위: cluster_label_prop
# 4순위: cluster_walktrap
##########################################################
######################## p = 300 #########################
######################## n = 100 #########################
##########################################################
# bmsppre with parallel
result_community_bsppre_p300_random_n100_1 <- community_bsppre(p300_random_n100_1 , cluster_louvain, seed = 1)
estimated_community_bsppre_p300_random_n100_1 <- integrate_community_results(result_community_bsppre_p300_random_n100_1$result, p = 300)

result_community_bsppre_p300_random_n100_2 <- community_bsppre(p300_random_n100_2 , cluster_louvain, seed = 2)
estimated_community_bsppre_p300_random_n100_2 <- integrate_community_results(result_community_bsppre_p300_random_n100_2$result, p = 300)

result_community_bsppre_p300_random_n100_3 <- community_bsppre(p300_random_n100_3 , cluster_louvain, seed = 3)
estimated_community_bsppre_p300_random_n100_3 <- integrate_community_results(result_community_bsppre_p300_random_n100_3$result, p = 300)

result_community_bsppre_p300_random_n100_4 <- community_bsppre(p300_random_n100_4 , cluster_louvain, seed = 4)
estimated_community_bsppre_p300_random_n100_4 <- integrate_community_results(result_community_bsppre_p300_random_n100_4$result, p = 300)

result_community_bsppre_p300_random_n100_5 <- community_bsppre(p300_random_n100_5 , cluster_louvain, seed = 5)
estimated_community_bsppre_p300_random_n100_5 <- integrate_community_results(result_community_bsppre_p300_random_n100_5$result, p = 300)

result_community_bsppre_p300_random_n100_6 <- community_bsppre(p300_random_n100_6 , cluster_louvain, seed = 6)
estimated_community_bsppre_p300_random_n100_6 <- integrate_community_results(result_community_bsppre_p300_random_n100_6$result, p = 300)

result_community_bsppre_p300_random_n100_7 <- community_bsppre(p300_random_n100_7 , cluster_louvain, seed = 7)
estimated_community_bsppre_p300_random_n100_7 <- integrate_community_results(result_community_bsppre_p300_random_n100_7$result, p = 300)

result_community_bsppre_p300_random_n100_8 <- community_bsppre(p300_random_n100_8 , cluster_louvain, seed = 8)
estimated_community_bsppre_p300_random_n100_8 <- integrate_community_results(result_community_bsppre_p300_random_n100_8$result, p = 300)

result_community_bsppre_p300_random_n100_9 <- community_bsppre(p300_random_n100_9 , cluster_louvain, seed = 9)
estimated_community_bsppre_p300_random_n100_9 <- integrate_community_results(result_community_bsppre_p300_random_n100_9$result, p = 300)

result_community_bsppre_p300_random_n100_10 <- community_bsppre(p300_random_n100_10 , cluster_louvain, seed = 10)
estimated_community_bsppre_p300_random_n100_10 <- integrate_community_results(result_community_bsppre_p300_random_n100_10$result, p = 300)

result_community_bsppre_p300_random_n100_11 <- community_bsppre(p300_random_n100_11 , cluster_louvain, seed = 11)
estimated_community_bsppre_p300_random_n100_11 <- integrate_community_results(result_community_bsppre_p300_random_n100_11$result, p = 300)

result_community_bsppre_p300_random_n100_12 <- community_bsppre(p300_random_n100_12 , cluster_louvain, seed = 12)
estimated_community_bsppre_p300_random_n100_12 <- integrate_community_results(result_community_bsppre_p300_random_n100_12$result, p = 300)

result_community_bsppre_p300_random_n100_13 <- community_bsppre(p300_random_n100_13 , cluster_louvain, seed = 13)
estimated_community_bsppre_p300_random_n100_13 <- integrate_community_results(result_community_bsppre_p300_random_n100_13$result, p = 300)

result_community_bsppre_p300_random_n100_14 <- community_bsppre(p300_random_n100_14 , cluster_louvain, seed = 14)
estimated_community_bsppre_p300_random_n100_14 <- integrate_community_results(result_community_bsppre_p300_random_n100_14$result, p = 300)

result_community_bsppre_p300_random_n100_15 <- community_bsppre(p300_random_n100_15 , cluster_louvain, seed = 15)
estimated_community_bsppre_p300_random_n100_15 <- integrate_community_results(result_community_bsppre_p300_random_n100_15$result, p = 300)

result_community_bsppre_p300_random_n100_16 <- community_bsppre(p300_random_n100_16 , cluster_louvain, seed = 16)
estimated_community_bsppre_p300_random_n100_16 <- integrate_community_results(result_community_bsppre_p300_random_n100_16$result, p = 300)

result_community_bsppre_p300_random_n100_17 <- community_bsppre(p300_random_n100_17 , cluster_louvain, seed = 17)
estimated_community_bsppre_p300_random_n100_17 <- integrate_community_results(result_community_bsppre_p300_random_n100_17$result, p = 300)

result_community_bsppre_p300_random_n100_18 <- community_bsppre(p300_random_n100_18 , cluster_louvain, seed = 18)
estimated_community_bsppre_p300_random_n100_18 <- integrate_community_results(result_community_bsppre_p300_random_n100_18$result, p = 300)

result_community_bsppre_p300_random_n100_19 <- community_bsppre(p300_random_n100_19 , cluster_louvain, seed = 19)
estimated_community_bsppre_p300_random_n100_19 <- integrate_community_results(result_community_bsppre_p300_random_n100_19$result, p = 300)

result_community_bsppre_p300_random_n100_20 <- community_bsppre(p300_random_n100_20 , cluster_louvain, seed = 20)
estimated_community_bsppre_p300_random_n100_20 <- integrate_community_results(result_community_bsppre_p300_random_n100_20$result, p = 300)

result_community_bsppre_p300_random_n100_21 <- community_bsppre(p300_random_n100_21 , cluster_louvain, seed = 21)
estimated_community_bsppre_p300_random_n100_21 <- integrate_community_results(result_community_bsppre_p300_random_n100_21$result, p = 300)

result_community_bsppre_p300_random_n100_22 <- community_bsppre(p300_random_n100_22 , cluster_louvain, seed = 22)
estimated_community_bsppre_p300_random_n100_22 <- integrate_community_results(result_community_bsppre_p300_random_n100_22$result, p = 300)

result_community_bsppre_p300_random_n100_23 <- community_bsppre(p300_random_n100_23 , cluster_louvain, seed = 23)
estimated_community_bsppre_p300_random_n100_23 <- integrate_community_results(result_community_bsppre_p300_random_n100_23$result, p = 300)

result_community_bsppre_p300_random_n100_24 <- community_bsppre(p300_random_n100_24 , cluster_louvain, seed = 24)
estimated_community_bsppre_p300_random_n100_24 <- integrate_community_results(result_community_bsppre_p300_random_n100_24$result, p = 300)

result_community_bsppre_p300_random_n100_25 <- community_bsppre(p300_random_n100_25 , cluster_louvain, seed = 25)
estimated_community_bsppre_p300_random_n100_25 <- integrate_community_results(result_community_bsppre_p300_random_n100_25$result, p = 300)

result_community_bsppre_p300_random_n100_26 <- community_bsppre(p300_random_n100_26 , cluster_louvain, seed = 26)
estimated_community_bsppre_p300_random_n100_26 <- integrate_community_results(result_community_bsppre_p300_random_n100_26$result, p = 300)

result_community_bsppre_p300_random_n100_27 <- community_bsppre(p300_random_n100_27 , cluster_louvain, seed = 27)
estimated_community_bsppre_p300_random_n100_27 <- integrate_community_results(result_community_bsppre_p300_random_n100_27$result, p = 300)

result_community_bsppre_p300_random_n100_28 <- community_bsppre(p300_random_n100_28 , cluster_louvain, seed = 28)
estimated_community_bsppre_p300_random_n100_28 <- integrate_community_results(result_community_bsppre_p300_random_n100_28$result, p = 300)

result_community_bsppre_p300_random_n100_29 <- community_bsppre(p300_random_n100_29 , cluster_louvain, seed = 29)
estimated_community_bsppre_p300_random_n100_29 <- integrate_community_results(result_community_bsppre_p300_random_n100_29$result, p = 300)

result_community_bsppre_p300_random_n100_30 <- community_bsppre(p300_random_n100_30 , cluster_louvain, seed = 30)
estimated_community_bsppre_p300_random_n100_30 <- integrate_community_results(result_community_bsppre_p300_random_n100_30$result, p = 300)

result_community_bsppre_p300_random_n100_31 <- community_bsppre(p300_random_n100_31 , cluster_louvain, seed = 31)
estimated_community_bsppre_p300_random_n100_31 <- integrate_community_results(result_community_bsppre_p300_random_n100_31$result, p = 300)

result_community_bsppre_p300_random_n100_32 <- community_bsppre(p300_random_n100_32 , cluster_louvain, seed = 32)
estimated_community_bsppre_p300_random_n100_32 <- integrate_community_results(result_community_bsppre_p300_random_n100_32$result, p = 300)

result_community_bsppre_p300_random_n100_33 <- community_bsppre(p300_random_n100_33 , cluster_louvain, seed = 33)
estimated_community_bsppre_p300_random_n100_33 <- integrate_community_results(result_community_bsppre_p300_random_n100_33$result, p = 300)

result_community_bsppre_p300_random_n100_34 <- community_bsppre(p300_random_n100_34 , cluster_louvain, seed = 34)
estimated_community_bsppre_p300_random_n100_34 <- integrate_community_results(result_community_bsppre_p300_random_n100_34$result, p = 300)

result_community_bsppre_p300_random_n100_35 <- community_bsppre(p300_random_n100_35 , cluster_louvain, seed = 35)
estimated_community_bsppre_p300_random_n100_35 <- integrate_community_results(result_community_bsppre_p300_random_n100_35$result, p = 300)

result_community_bsppre_p300_random_n100_36 <- community_bsppre(p300_random_n100_36 , cluster_louvain, seed = 36)
estimated_community_bsppre_p300_random_n100_36 <- integrate_community_results(result_community_bsppre_p300_random_n100_36$result, p = 300)

result_community_bsppre_p300_random_n100_37 <- community_bsppre(p300_random_n100_37 , cluster_louvain, seed = 37)
estimated_community_bsppre_p300_random_n100_37 <- integrate_community_results(result_community_bsppre_p300_random_n100_37$result, p = 300)

result_community_bsppre_p300_random_n100_38 <- community_bsppre(p300_random_n100_38 , cluster_louvain, seed = 38)
estimated_community_bsppre_p300_random_n100_38 <- integrate_community_results(result_community_bsppre_p300_random_n100_38$result, p = 300)

result_community_bsppre_p300_random_n100_39 <- community_bsppre(p300_random_n100_39 , cluster_louvain, seed = 39)
estimated_community_bsppre_p300_random_n100_39 <- integrate_community_results(result_community_bsppre_p300_random_n100_39$result, p = 300)

result_community_bsppre_p300_random_n100_40 <- community_bsppre(p300_random_n100_40 , cluster_louvain, seed = 40)
estimated_community_bsppre_p300_random_n100_40 <- integrate_community_results(result_community_bsppre_p300_random_n100_40$result, p = 300)

result_community_bsppre_p300_random_n100_41 <- community_bsppre(p300_random_n100_41 , cluster_louvain, seed = 41)
estimated_community_bsppre_p300_random_n100_41 <- integrate_community_results(result_community_bsppre_p300_random_n100_41$result, p = 300)

result_community_bsppre_p300_random_n100_42 <- community_bsppre(p300_random_n100_42 , cluster_louvain, seed = 42)
estimated_community_bsppre_p300_random_n100_42 <- integrate_community_results(result_community_bsppre_p300_random_n100_42$result, p = 300)

result_community_bsppre_p300_random_n100_43 <- community_bsppre(p300_random_n100_43 , cluster_louvain, seed = 43)
estimated_community_bsppre_p300_random_n100_43 <- integrate_community_results(result_community_bsppre_p300_random_n100_43$result, p = 300)

result_community_bsppre_p300_random_n100_44 <- community_bsppre(p300_random_n100_44 , cluster_louvain, seed = 44)
estimated_community_bsppre_p300_random_n100_44 <- integrate_community_results(result_community_bsppre_p300_random_n100_44$result, p = 300)

result_community_bsppre_p300_random_n100_45 <- community_bsppre(p300_random_n100_45 , cluster_louvain, seed = 45)
estimated_community_bsppre_p300_random_n100_45 <- integrate_community_results(result_community_bsppre_p300_random_n100_45$result, p = 300)

result_community_bsppre_p300_random_n100_46 <- community_bsppre(p300_random_n100_46 , cluster_louvain, seed = 46)
estimated_community_bsppre_p300_random_n100_46 <- integrate_community_results(result_community_bsppre_p300_random_n100_46$result, p = 300)

result_community_bsppre_p300_random_n100_47 <- community_bsppre(p300_random_n100_47 , cluster_louvain, seed = 47)
estimated_community_bsppre_p300_random_n100_47 <- integrate_community_results(result_community_bsppre_p300_random_n100_47$result, p = 300)

result_community_bsppre_p300_random_n100_48 <- community_bsppre(p300_random_n100_48 , cluster_louvain, seed = 48)
estimated_community_bsppre_p300_random_n100_48 <- integrate_community_results(result_community_bsppre_p300_random_n100_48$result, p = 300)

result_community_bsppre_p300_random_n100_49 <- community_bsppre(p300_random_n100_49 , cluster_louvain, seed = 49)
estimated_community_bsppre_p300_random_n100_49 <- integrate_community_results(result_community_bsppre_p300_random_n100_49$result, p = 300)

result_community_bsppre_p300_random_n100_50 <- community_bsppre(p300_random_n100_50 , cluster_louvain, seed = 50)
estimated_community_bsppre_p300_random_n100_50 <- integrate_community_results(result_community_bsppre_p300_random_n100_50$result, p = 300)

result_community_bsppre_p300_random_n100_51 <- community_bsppre(p300_random_n100_51 , cluster_louvain, seed = 51)
estimated_community_bsppre_p300_random_n100_51 <- integrate_community_results(result_community_bsppre_p300_random_n100_51$result, p = 300)

result_community_bsppre_p300_random_n100_52 <- community_bsppre(p300_random_n100_52 , cluster_louvain, seed = 52)
estimated_community_bsppre_p300_random_n100_52 <- integrate_community_results(result_community_bsppre_p300_random_n100_52$result, p = 300)

result_community_bsppre_p300_random_n100_53 <- community_bsppre(p300_random_n100_53 , cluster_louvain, seed = 53)
estimated_community_bsppre_p300_random_n100_53 <- integrate_community_results(result_community_bsppre_p300_random_n100_53$result, p = 300)

result_community_bsppre_p300_random_n100_54 <- community_bsppre(p300_random_n100_54 , cluster_louvain, seed = 54)
estimated_community_bsppre_p300_random_n100_54 <- integrate_community_results(result_community_bsppre_p300_random_n100_54$result, p = 300)

result_community_bsppre_p300_random_n100_55 <- community_bsppre(p300_random_n100_55 , cluster_louvain, seed = 55)
estimated_community_bsppre_p300_random_n100_55 <- integrate_community_results(result_community_bsppre_p300_random_n100_55$result, p = 300)

result_community_bsppre_p300_random_n100_56 <- community_bsppre(p300_random_n100_56 , cluster_louvain, seed = 56)
estimated_community_bsppre_p300_random_n100_56 <- integrate_community_results(result_community_bsppre_p300_random_n100_56$result, p = 300)

result_community_bsppre_p300_random_n100_57 <- community_bsppre(p300_random_n100_57 , cluster_louvain, seed = 57)
estimated_community_bsppre_p300_random_n100_57 <- integrate_community_results(result_community_bsppre_p300_random_n100_57$result, p = 300)

result_community_bsppre_p300_random_n100_58 <- community_bsppre(p300_random_n100_58 , cluster_louvain, seed = 58)
estimated_community_bsppre_p300_random_n100_58 <- integrate_community_results(result_community_bsppre_p300_random_n100_58$result, p = 300)

result_community_bsppre_p300_random_n100_59 <- community_bsppre(p300_random_n100_59 , cluster_louvain, seed = 59)
estimated_community_bsppre_p300_random_n100_59 <- integrate_community_results(result_community_bsppre_p300_random_n100_59$result, p = 300)

result_community_bsppre_p300_random_n100_60 <- community_bsppre(p300_random_n100_60 , cluster_louvain, seed = 60)
estimated_community_bsppre_p300_random_n100_60 <- integrate_community_results(result_community_bsppre_p300_random_n100_60$result, p = 300)

result_community_bsppre_p300_random_n100_61 <- community_bsppre(p300_random_n100_61 , cluster_louvain, seed = 61)
estimated_community_bsppre_p300_random_n100_61 <- integrate_community_results(result_community_bsppre_p300_random_n100_61$result, p = 300)

result_community_bsppre_p300_random_n100_62 <- community_bsppre(p300_random_n100_62 , cluster_louvain, seed = 62)
estimated_community_bsppre_p300_random_n100_62 <- integrate_community_results(result_community_bsppre_p300_random_n100_62$result, p = 300)

result_community_bsppre_p300_random_n100_63 <- community_bsppre(p300_random_n100_63 , cluster_louvain, seed = 63)
estimated_community_bsppre_p300_random_n100_63 <- integrate_community_results(result_community_bsppre_p300_random_n100_63$result, p = 300)

result_community_bsppre_p300_random_n100_64 <- community_bsppre(p300_random_n100_64 , cluster_louvain, seed = 64)
estimated_community_bsppre_p300_random_n100_64 <- integrate_community_results(result_community_bsppre_p300_random_n100_64$result, p = 300)

result_community_bsppre_p300_random_n100_65 <- community_bsppre(p300_random_n100_65 , cluster_louvain, seed = 65)
estimated_community_bsppre_p300_random_n100_65 <- integrate_community_results(result_community_bsppre_p300_random_n100_65$result, p = 300)

result_community_bsppre_p300_random_n100_66 <- community_bsppre(p300_random_n100_66 , cluster_louvain, seed = 66)
estimated_community_bsppre_p300_random_n100_66 <- integrate_community_results(result_community_bsppre_p300_random_n100_66$result, p = 300)

result_community_bsppre_p300_random_n100_67 <- community_bsppre(p300_random_n100_67 , cluster_louvain, seed = 67)
estimated_community_bsppre_p300_random_n100_67 <- integrate_community_results(result_community_bsppre_p300_random_n100_67$result, p = 300)

result_community_bsppre_p300_random_n100_68 <- community_bsppre(p300_random_n100_68 , cluster_louvain, seed = 68)
estimated_community_bsppre_p300_random_n100_68 <- integrate_community_results(result_community_bsppre_p300_random_n100_68$result, p = 300)

result_community_bsppre_p300_random_n100_69 <- community_bsppre(p300_random_n100_69 , cluster_louvain, seed = 69)
estimated_community_bsppre_p300_random_n100_69 <- integrate_community_results(result_community_bsppre_p300_random_n100_69$result, p = 300)

result_community_bsppre_p300_random_n100_70 <- community_bsppre(p300_random_n100_70 , cluster_louvain, seed = 70)
estimated_community_bsppre_p300_random_n100_70 <- integrate_community_results(result_community_bsppre_p300_random_n100_70$result, p = 300)

result_community_bsppre_p300_random_n100_71 <- community_bsppre(p300_random_n100_71 , cluster_louvain, seed = 71)
estimated_community_bsppre_p300_random_n100_71 <- integrate_community_results(result_community_bsppre_p300_random_n100_71$result, p = 300)

result_community_bsppre_p300_random_n100_72 <- community_bsppre(p300_random_n100_72 , cluster_louvain, seed = 72)
estimated_community_bsppre_p300_random_n100_72 <- integrate_community_results(result_community_bsppre_p300_random_n100_72$result, p = 300)

result_community_bsppre_p300_random_n100_73 <- community_bsppre(p300_random_n100_73 , cluster_louvain, seed = 73)
estimated_community_bsppre_p300_random_n100_73 <- integrate_community_results(result_community_bsppre_p300_random_n100_73$result, p = 300)

result_community_bsppre_p300_random_n100_74 <- community_bsppre(p300_random_n100_74 , cluster_louvain, seed = 74)
estimated_community_bsppre_p300_random_n100_74 <- integrate_community_results(result_community_bsppre_p300_random_n100_74$result, p = 300)

result_community_bsppre_p300_random_n100_75 <- community_bsppre(p300_random_n100_75 , cluster_louvain, seed = 75)
estimated_community_bsppre_p300_random_n100_75 <- integrate_community_results(result_community_bsppre_p300_random_n100_75$result, p = 300)

result_community_bsppre_p300_random_n100_76 <- community_bsppre(p300_random_n100_76 , cluster_louvain, seed = 76)
estimated_community_bsppre_p300_random_n100_76 <- integrate_community_results(result_community_bsppre_p300_random_n100_76$result, p = 300)

result_community_bsppre_p300_random_n100_77 <- community_bsppre(p300_random_n100_77 , cluster_louvain, seed = 77)
estimated_community_bsppre_p300_random_n100_77 <- integrate_community_results(result_community_bsppre_p300_random_n100_77$result, p = 300)

result_community_bsppre_p300_random_n100_78 <- community_bsppre(p300_random_n100_78 , cluster_louvain, seed = 78)
estimated_community_bsppre_p300_random_n100_78 <- integrate_community_results(result_community_bsppre_p300_random_n100_78$result, p = 300)

result_community_bsppre_p300_random_n100_79 <- community_bsppre(p300_random_n100_79 , cluster_louvain, seed = 79)
estimated_community_bsppre_p300_random_n100_79 <- integrate_community_results(result_community_bsppre_p300_random_n100_79$result, p = 300)

result_community_bsppre_p300_random_n100_80 <- community_bsppre(p300_random_n100_80 , cluster_louvain, seed = 80)
estimated_community_bsppre_p300_random_n100_80 <- integrate_community_results(result_community_bsppre_p300_random_n100_80$result, p = 300)

result_community_bsppre_p300_random_n100_81 <- community_bsppre(p300_random_n100_81 , cluster_louvain, seed = 81)
estimated_community_bsppre_p300_random_n100_81 <- integrate_community_results(result_community_bsppre_p300_random_n100_81$result, p = 300)

result_community_bsppre_p300_random_n100_82 <- community_bsppre(p300_random_n100_82 , cluster_louvain, seed = 82)
estimated_community_bsppre_p300_random_n100_82 <- integrate_community_results(result_community_bsppre_p300_random_n100_82$result, p = 300)

result_community_bsppre_p300_random_n100_83 <- community_bsppre(p300_random_n100_83 , cluster_louvain, seed = 83)
estimated_community_bsppre_p300_random_n100_83 <- integrate_community_results(result_community_bsppre_p300_random_n100_83$result, p = 300)

result_community_bsppre_p300_random_n100_84 <- community_bsppre(p300_random_n100_84 , cluster_louvain, seed = 84)
estimated_community_bsppre_p300_random_n100_84 <- integrate_community_results(result_community_bsppre_p300_random_n100_84$result, p = 300)

result_community_bsppre_p300_random_n100_85 <- community_bsppre(p300_random_n100_85 , cluster_louvain, seed = 85)
estimated_community_bsppre_p300_random_n100_85 <- integrate_community_results(result_community_bsppre_p300_random_n100_85$result, p = 300)

result_community_bsppre_p300_random_n100_86 <- community_bsppre(p300_random_n100_86 , cluster_louvain, seed = 86)
estimated_community_bsppre_p300_random_n100_86 <- integrate_community_results(result_community_bsppre_p300_random_n100_86$result, p = 300)

result_community_bsppre_p300_random_n100_87 <- community_bsppre(p300_random_n100_87 , cluster_louvain, seed = 87)
estimated_community_bsppre_p300_random_n100_87 <- integrate_community_results(result_community_bsppre_p300_random_n100_87$result, p = 300)

result_community_bsppre_p300_random_n100_88 <- community_bsppre(p300_random_n100_88 , cluster_louvain, seed = 88)
estimated_community_bsppre_p300_random_n100_88 <- integrate_community_results(result_community_bsppre_p300_random_n100_88$result, p = 300)

result_community_bsppre_p300_random_n100_89 <- community_bsppre(p300_random_n100_89 , cluster_louvain, seed = 89)
estimated_community_bsppre_p300_random_n100_89 <- integrate_community_results(result_community_bsppre_p300_random_n100_89$result, p = 300)

result_community_bsppre_p300_random_n100_90 <- community_bsppre(p300_random_n100_90 , cluster_louvain, seed = 90)
estimated_community_bsppre_p300_random_n100_90 <- integrate_community_results(result_community_bsppre_p300_random_n100_90$result, p = 300)

result_community_bsppre_p300_random_n100_91 <- community_bsppre(p300_random_n100_91 , cluster_louvain, seed = 91)
estimated_community_bsppre_p300_random_n100_91 <- integrate_community_results(result_community_bsppre_p300_random_n100_91$result, p = 300)

result_community_bsppre_p300_random_n100_92 <- community_bsppre(p300_random_n100_92 , cluster_louvain, seed = 92)
estimated_community_bsppre_p300_random_n100_92 <- integrate_community_results(result_community_bsppre_p300_random_n100_92$result, p = 300)

result_community_bsppre_p300_random_n100_93 <- community_bsppre(p300_random_n100_93 , cluster_louvain, seed = 93)
estimated_community_bsppre_p300_random_n100_93 <- integrate_community_results(result_community_bsppre_p300_random_n100_93$result, p = 300)

result_community_bsppre_p300_random_n100_94 <- community_bsppre(p300_random_n100_94 , cluster_louvain, seed = 94)
estimated_community_bsppre_p300_random_n100_94 <- integrate_community_results(result_community_bsppre_p300_random_n100_94$result, p = 300)

result_community_bsppre_p300_random_n100_95 <- community_bsppre(p300_random_n100_95 , cluster_louvain, seed = 95)
estimated_community_bsppre_p300_random_n100_95 <- integrate_community_results(result_community_bsppre_p300_random_n100_95$result, p = 300)

result_community_bsppre_p300_random_n100_96 <- community_bsppre(p300_random_n100_96 , cluster_louvain, seed = 96)
estimated_community_bsppre_p300_random_n100_96 <- integrate_community_results(result_community_bsppre_p300_random_n100_96$result, p = 300)

result_community_bsppre_p300_random_n100_97 <- community_bsppre(p300_random_n100_97 , cluster_louvain, seed = 97)
estimated_community_bsppre_p300_random_n100_97 <- integrate_community_results(result_community_bsppre_p300_random_n100_97$result, p = 300)

result_community_bsppre_p300_random_n100_98 <- community_bsppre(p300_random_n100_98 , cluster_louvain, seed = 98)
estimated_community_bsppre_p300_random_n100_98 <- integrate_community_results(result_community_bsppre_p300_random_n100_98$result, p = 300)

result_community_bsppre_p300_random_n100_99 <- community_bsppre(p300_random_n100_99 , cluster_louvain, seed = 99)
estimated_community_bsppre_p300_random_n100_99 <- integrate_community_results(result_community_bsppre_p300_random_n100_99$result, p = 300)

result_community_bsppre_p300_random_n100_100 <- community_bsppre(p300_random_n100_100 , cluster_louvain, seed = 100)
estimated_community_bsppre_p300_random_n100_100 <- integrate_community_results(result_community_bsppre_p300_random_n100_100$result, p = 300)



# Graphical Lasso from each samples 
time_g.lasso_p300_random_n100 <- system.time({
  
  set.seed(1)
  g.lasso_p300_random_n100_1 <- CovTools::PreEst.glasso(p300_random_n100_1, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(2)
  g.lasso_p300_random_n100_2 <- CovTools::PreEst.glasso(p300_random_n100_2, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(3)
  g.lasso_p300_random_n100_3 <- CovTools::PreEst.glasso(p300_random_n100_3, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(4)
  g.lasso_p300_random_n100_4 <- CovTools::PreEst.glasso(p300_random_n100_4, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(5)
  g.lasso_p300_random_n100_5 <- CovTools::PreEst.glasso(p300_random_n100_5, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(6)
  g.lasso_p300_random_n100_6 <- CovTools::PreEst.glasso(p300_random_n100_6, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(7)
  g.lasso_p300_random_n100_7 <- CovTools::PreEst.glasso(p300_random_n100_7, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(8)
  g.lasso_p300_random_n100_8 <- CovTools::PreEst.glasso(p300_random_n100_8, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(9)
  g.lasso_p300_random_n100_9 <- CovTools::PreEst.glasso(p300_random_n100_9, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(10)
  g.lasso_p300_random_n100_10 <- CovTools::PreEst.glasso(p300_random_n100_10, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(11)
  g.lasso_p300_random_n100_11 <- CovTools::PreEst.glasso(p300_random_n100_11, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(12)
  g.lasso_p300_random_n100_12 <- CovTools::PreEst.glasso(p300_random_n100_12, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(13)
  g.lasso_p300_random_n100_13 <- CovTools::PreEst.glasso(p300_random_n100_13, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(14)
  g.lasso_p300_random_n100_14 <- CovTools::PreEst.glasso(p300_random_n100_14, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(15)
  g.lasso_p300_random_n100_15 <- CovTools::PreEst.glasso(p300_random_n100_15, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(16)
  g.lasso_p300_random_n100_16 <- CovTools::PreEst.glasso(p300_random_n100_16, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(17)
  g.lasso_p300_random_n100_17 <- CovTools::PreEst.glasso(p300_random_n100_17, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(18)
  g.lasso_p300_random_n100_18 <- CovTools::PreEst.glasso(p300_random_n100_18, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(19)
  g.lasso_p300_random_n100_19 <- CovTools::PreEst.glasso(p300_random_n100_19, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(20)
  g.lasso_p300_random_n100_20 <- CovTools::PreEst.glasso(p300_random_n100_20, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(21)
  g.lasso_p300_random_n100_21 <- CovTools::PreEst.glasso(p300_random_n100_21, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(22)
  g.lasso_p300_random_n100_22 <- CovTools::PreEst.glasso(p300_random_n100_22, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(23)
  g.lasso_p300_random_n100_23 <- CovTools::PreEst.glasso(p300_random_n100_23, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(24)
  g.lasso_p300_random_n100_24 <- CovTools::PreEst.glasso(p300_random_n100_24, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(25)
  g.lasso_p300_random_n100_25 <- CovTools::PreEst.glasso(p300_random_n100_25, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(26)
  g.lasso_p300_random_n100_26 <- CovTools::PreEst.glasso(p300_random_n100_26, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(27)
  g.lasso_p300_random_n100_27 <- CovTools::PreEst.glasso(p300_random_n100_27, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(28)
  g.lasso_p300_random_n100_28 <- CovTools::PreEst.glasso(p300_random_n100_28, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(29)
  g.lasso_p300_random_n100_29 <- CovTools::PreEst.glasso(p300_random_n100_29, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(30)
  g.lasso_p300_random_n100_30 <- CovTools::PreEst.glasso(p300_random_n100_30, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(31)
  g.lasso_p300_random_n100_31 <- CovTools::PreEst.glasso(p300_random_n100_31, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(32)
  g.lasso_p300_random_n100_32 <- CovTools::PreEst.glasso(p300_random_n100_32, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(33)
  g.lasso_p300_random_n100_33 <- CovTools::PreEst.glasso(p300_random_n100_33, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(34)
  g.lasso_p300_random_n100_34 <- CovTools::PreEst.glasso(p300_random_n100_34, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(35)
  g.lasso_p300_random_n100_35 <- CovTools::PreEst.glasso(p300_random_n100_35, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(36)
  g.lasso_p300_random_n100_36 <- CovTools::PreEst.glasso(p300_random_n100_36, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(37)
  g.lasso_p300_random_n100_37 <- CovTools::PreEst.glasso(p300_random_n100_37, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(38)
  g.lasso_p300_random_n100_38 <- CovTools::PreEst.glasso(p300_random_n100_38, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(39)
  g.lasso_p300_random_n100_39 <- CovTools::PreEst.glasso(p300_random_n100_39, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(40)
  g.lasso_p300_random_n100_40 <- CovTools::PreEst.glasso(p300_random_n100_40, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(41)
  g.lasso_p300_random_n100_41 <- CovTools::PreEst.glasso(p300_random_n100_41, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(42)
  g.lasso_p300_random_n100_42 <- CovTools::PreEst.glasso(p300_random_n100_42, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(43)
  g.lasso_p300_random_n100_43 <- CovTools::PreEst.glasso(p300_random_n100_43, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(44)
  g.lasso_p300_random_n100_44 <- CovTools::PreEst.glasso(p300_random_n100_44, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(45)
  g.lasso_p300_random_n100_45 <- CovTools::PreEst.glasso(p300_random_n100_45, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(46)
  g.lasso_p300_random_n100_46 <- CovTools::PreEst.glasso(p300_random_n100_46, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(47)
  g.lasso_p300_random_n100_47 <- CovTools::PreEst.glasso(p300_random_n100_47, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(48)
  g.lasso_p300_random_n100_48 <- CovTools::PreEst.glasso(p300_random_n100_48, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(49)
  g.lasso_p300_random_n100_49 <- CovTools::PreEst.glasso(p300_random_n100_49, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(50)
  g.lasso_p300_random_n100_50 <- CovTools::PreEst.glasso(p300_random_n100_50, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(51)
  g.lasso_p300_random_n100_51 <- CovTools::PreEst.glasso(p300_random_n100_51, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(52)
  g.lasso_p300_random_n100_52 <- CovTools::PreEst.glasso(p300_random_n100_52, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(53)
  g.lasso_p300_random_n100_53 <- CovTools::PreEst.glasso(p300_random_n100_53, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(54)
  g.lasso_p300_random_n100_54 <- CovTools::PreEst.glasso(p300_random_n100_54, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(55)
  g.lasso_p300_random_n100_55 <- CovTools::PreEst.glasso(p300_random_n100_55, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(56)
  g.lasso_p300_random_n100_56 <- CovTools::PreEst.glasso(p300_random_n100_56, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(57)
  g.lasso_p300_random_n100_57 <- CovTools::PreEst.glasso(p300_random_n100_57, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(58)
  g.lasso_p300_random_n100_58 <- CovTools::PreEst.glasso(p300_random_n100_58, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(59)
  g.lasso_p300_random_n100_59 <- CovTools::PreEst.glasso(p300_random_n100_59, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(60)
  g.lasso_p300_random_n100_60 <- CovTools::PreEst.glasso(p300_random_n100_60, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(61)
  g.lasso_p300_random_n100_61 <- CovTools::PreEst.glasso(p300_random_n100_61, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(62)
  g.lasso_p300_random_n100_62 <- CovTools::PreEst.glasso(p300_random_n100_62, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(63)
  g.lasso_p300_random_n100_63 <- CovTools::PreEst.glasso(p300_random_n100_63, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(64)
  g.lasso_p300_random_n100_64 <- CovTools::PreEst.glasso(p300_random_n100_64, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(65)
  g.lasso_p300_random_n100_65 <- CovTools::PreEst.glasso(p300_random_n100_65, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(66)
  g.lasso_p300_random_n100_66 <- CovTools::PreEst.glasso(p300_random_n100_66, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(67)
  g.lasso_p300_random_n100_67 <- CovTools::PreEst.glasso(p300_random_n100_67, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(68)
  g.lasso_p300_random_n100_68 <- CovTools::PreEst.glasso(p300_random_n100_68, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(69)
  g.lasso_p300_random_n100_69 <- CovTools::PreEst.glasso(p300_random_n100_69, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(70)
  g.lasso_p300_random_n100_70 <- CovTools::PreEst.glasso(p300_random_n100_70, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(71)
  g.lasso_p300_random_n100_71 <- CovTools::PreEst.glasso(p300_random_n100_71, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(72)
  g.lasso_p300_random_n100_72 <- CovTools::PreEst.glasso(p300_random_n100_72, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(73)
  g.lasso_p300_random_n100_73 <- CovTools::PreEst.glasso(p300_random_n100_73, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(74)
  g.lasso_p300_random_n100_74 <- CovTools::PreEst.glasso(p300_random_n100_74, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(75)
  g.lasso_p300_random_n100_75 <- CovTools::PreEst.glasso(p300_random_n100_75, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(76)
  g.lasso_p300_random_n100_76 <- CovTools::PreEst.glasso(p300_random_n100_76, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(77)
  g.lasso_p300_random_n100_77 <- CovTools::PreEst.glasso(p300_random_n100_77, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(78)
  g.lasso_p300_random_n100_78 <- CovTools::PreEst.glasso(p300_random_n100_78, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(79)
  g.lasso_p300_random_n100_79 <- CovTools::PreEst.glasso(p300_random_n100_79, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(80)
  g.lasso_p300_random_n100_80 <- CovTools::PreEst.glasso(p300_random_n100_80, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(81)
  g.lasso_p300_random_n100_81 <- CovTools::PreEst.glasso(p300_random_n100_81, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(82)
  g.lasso_p300_random_n100_82 <- CovTools::PreEst.glasso(p300_random_n100_82, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(83)
  g.lasso_p300_random_n100_83 <- CovTools::PreEst.glasso(p300_random_n100_83, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(84)
  g.lasso_p300_random_n100_84 <- CovTools::PreEst.glasso(p300_random_n100_84, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(85)
  g.lasso_p300_random_n100_85 <- CovTools::PreEst.glasso(p300_random_n100_85, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(86)
  g.lasso_p300_random_n100_86 <- CovTools::PreEst.glasso(p300_random_n100_86, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(87)
  g.lasso_p300_random_n100_87 <- CovTools::PreEst.glasso(p300_random_n100_87, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(88)
  g.lasso_p300_random_n100_88 <- CovTools::PreEst.glasso(p300_random_n100_88, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(89)
  g.lasso_p300_random_n100_89 <- CovTools::PreEst.glasso(p300_random_n100_89, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(90)
  g.lasso_p300_random_n100_90 <- CovTools::PreEst.glasso(p300_random_n100_90, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(91)
  g.lasso_p300_random_n100_91 <- CovTools::PreEst.glasso(p300_random_n100_91, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(92)
  g.lasso_p300_random_n100_92 <- CovTools::PreEst.glasso(p300_random_n100_92, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(93)
  g.lasso_p300_random_n100_93 <- CovTools::PreEst.glasso(p300_random_n100_93, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(94)
  g.lasso_p300_random_n100_94 <- CovTools::PreEst.glasso(p300_random_n100_94, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(95)
  g.lasso_p300_random_n100_95 <- CovTools::PreEst.glasso(p300_random_n100_95, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(96)
  g.lasso_p300_random_n100_96 <- CovTools::PreEst.glasso(p300_random_n100_96, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(97)
  g.lasso_p300_random_n100_97 <- CovTools::PreEst.glasso(p300_random_n100_97, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(98)
  g.lasso_p300_random_n100_98 <- CovTools::PreEst.glasso(p300_random_n100_98, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(99)
  g.lasso_p300_random_n100_99 <- CovTools::PreEst.glasso(p300_random_n100_99, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
  set.seed(100)
  g.lasso_p300_random_n100_100 <- CovTools::PreEst.glasso(p300_random_n100_100, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  
})["elapsed"]



# CLIME by tony cai
library(parallel)
library(doParallel)
library(foreach)

# 사용 가능한 코어 수 만큼 클러스터 생성
numCores <- parallel::detectCores()
cl <- parallel::makeCluster(numCores)
doParallel::registerDoParallel(cl)

# 필요한 객체들을 워커로 내보내기
object_names <- paste0("p300_random_n100_", 1:100)
clusterExport(cl, varlist = object_names)

# 실행 시간 측정을 위해 system.time()으로 감쌉니다.
time_clime_p300_random_n100 <- system.time({
  
  # 병렬 처리: 1부터 100까지 각 객체에 대해 연산 실행
  simulation_results <- foreach(i = 1:100, .packages = "flare") %dopar% {
    set.seed(i)
    # 데이터 객체 가져오기: 예를 들어 "p300_3blocks_n100_1", "p300_3blocks_n100_2", ... 
    current_data <- get(paste0("p300_random_n100_", i))
    
    # sugm 함수 적용
    clime_obj <- flare::sugm(current_data, method = "clime", 
                             standardize = TRUE, perturb = TRUE, verbose = TRUE)
    
    # sugm.select로 최적의 결과 선택
    result_clime <- flare::sugm.select(clime_obj, criterion = "cv")$opt.icov
    
    # 결과 반환
    result_clime
  }
})["elapsed"]

# 클러스터 종료
stopCluster(cl)

# 결과에 이름 부여 (예: result_clime_p300_3blocks_n100_1, ..., result_clime_p300_3blocks_n100_100)
names(simulation_results) <- paste0("result_clime_p300_random_n100_", 1:100)
list2env(simulation_results, envir = .GlobalEnv)






# large precision matrix estrimation with unknown group structure
time_Group_Detect_p300_random_n100 <- system.time({
  
  set.seed(1)
  Group_Detect_p300_random_n100_1 <- Group_Detect(t(p300_random_n100_1), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(2)
  Group_Detect_p300_random_n100_2 <- Group_Detect(t(p300_random_n100_2), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(3)
  Group_Detect_p300_random_n100_3 <- Group_Detect(t(p300_random_n100_3), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(4)
  Group_Detect_p300_random_n100_4 <- Group_Detect(t(p300_random_n100_4), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(5)
  Group_Detect_p300_random_n100_5 <- Group_Detect(t(p300_random_n100_5), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(6)
  Group_Detect_p300_random_n100_6 <- Group_Detect(t(p300_random_n100_6), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(7)
  Group_Detect_p300_random_n100_7 <- Group_Detect(t(p300_random_n100_7), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(8)
  Group_Detect_p300_random_n100_8 <- Group_Detect(t(p300_random_n100_8), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(9)
  Group_Detect_p300_random_n100_9 <- Group_Detect(t(p300_random_n100_9), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(10)
  Group_Detect_p300_random_n100_10 <- Group_Detect(t(p300_random_n100_10), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(11)
  Group_Detect_p300_random_n100_11 <- Group_Detect(t(p300_random_n100_11), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(12)
  Group_Detect_p300_random_n100_12 <- Group_Detect(t(p300_random_n100_12), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(13)
  Group_Detect_p300_random_n100_13 <- Group_Detect(t(p300_random_n100_13), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(14)
  Group_Detect_p300_random_n100_14 <- Group_Detect(t(p300_random_n100_14), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(15)
  Group_Detect_p300_random_n100_15 <- Group_Detect(t(p300_random_n100_15), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(16)
  Group_Detect_p300_random_n100_16 <- Group_Detect(t(p300_random_n100_16), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(17)
  Group_Detect_p300_random_n100_17 <- Group_Detect(t(p300_random_n100_17), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(18)
  Group_Detect_p300_random_n100_18 <- Group_Detect(t(p300_random_n100_18), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(19)
  Group_Detect_p300_random_n100_19 <- Group_Detect(t(p300_random_n100_19), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(20)
  Group_Detect_p300_random_n100_20 <- Group_Detect(t(p300_random_n100_20), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(21)
  Group_Detect_p300_random_n100_21 <- Group_Detect(t(p300_random_n100_21), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(22)
  Group_Detect_p300_random_n100_22 <- Group_Detect(t(p300_random_n100_22), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(23)
  Group_Detect_p300_random_n100_23 <- Group_Detect(t(p300_random_n100_23), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(24)
  Group_Detect_p300_random_n100_24 <- Group_Detect(t(p300_random_n100_24), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(25)
  Group_Detect_p300_random_n100_25 <- Group_Detect(t(p300_random_n100_25), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(26)
  Group_Detect_p300_random_n100_26 <- Group_Detect(t(p300_random_n100_26), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(27)
  Group_Detect_p300_random_n100_27 <- Group_Detect(t(p300_random_n100_27), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(28)
  Group_Detect_p300_random_n100_28 <- Group_Detect(t(p300_random_n100_28), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(29)
  Group_Detect_p300_random_n100_29 <- Group_Detect(t(p300_random_n100_29), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(30)
  Group_Detect_p300_random_n100_30 <- Group_Detect(t(p300_random_n100_30), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(31)
  Group_Detect_p300_random_n100_31 <- Group_Detect(t(p300_random_n100_31), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(32)
  Group_Detect_p300_random_n100_32 <- Group_Detect(t(p300_random_n100_32), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(33)
  Group_Detect_p300_random_n100_33 <- Group_Detect(t(p300_random_n100_33), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(34)
  Group_Detect_p300_random_n100_34 <- Group_Detect(t(p300_random_n100_34), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(35)
  Group_Detect_p300_random_n100_35 <- Group_Detect(t(p300_random_n100_35), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(36)
  Group_Detect_p300_random_n100_36 <- Group_Detect(t(p300_random_n100_36), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(37)
  Group_Detect_p300_random_n100_37 <- Group_Detect(t(p300_random_n100_37), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(38)
  Group_Detect_p300_random_n100_38 <- Group_Detect(t(p300_random_n100_38), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(39)
  Group_Detect_p300_random_n100_39 <- Group_Detect(t(p300_random_n100_39), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(40)
  Group_Detect_p300_random_n100_40 <- Group_Detect(t(p300_random_n100_40), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(41)
  Group_Detect_p300_random_n100_41 <- Group_Detect(t(p300_random_n100_41), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(42)
  Group_Detect_p300_random_n100_42 <- Group_Detect(t(p300_random_n100_42), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(43)
  Group_Detect_p300_random_n100_43 <- Group_Detect(t(p300_random_n100_43), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(44)
  Group_Detect_p300_random_n100_44 <- Group_Detect(t(p300_random_n100_44), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(45)
  Group_Detect_p300_random_n100_45 <- Group_Detect(t(p300_random_n100_45), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(46)
  Group_Detect_p300_random_n100_46 <- Group_Detect(t(p300_random_n100_46), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(47)
  Group_Detect_p300_random_n100_47 <- Group_Detect(t(p300_random_n100_47), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(48)
  Group_Detect_p300_random_n100_48 <- Group_Detect(t(p300_random_n100_48), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(49)
  Group_Detect_p300_random_n100_49 <- Group_Detect(t(p300_random_n100_49), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(50)
  Group_Detect_p300_random_n100_50 <- Group_Detect(t(p300_random_n100_50), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(51)
  Group_Detect_p300_random_n100_51 <- Group_Detect(t(p300_random_n100_51), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(52)
  Group_Detect_p300_random_n100_52 <- Group_Detect(t(p300_random_n100_52), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(53)
  Group_Detect_p300_random_n100_53 <- Group_Detect(t(p300_random_n100_53), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(54)
  Group_Detect_p300_random_n100_54 <- Group_Detect(t(p300_random_n100_54), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(55)
  Group_Detect_p300_random_n100_55 <- Group_Detect(t(p300_random_n100_55), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(56)
  Group_Detect_p300_random_n100_56 <- Group_Detect(t(p300_random_n100_56), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(57)
  Group_Detect_p300_random_n100_57 <- Group_Detect(t(p300_random_n100_57), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(58)
  Group_Detect_p300_random_n100_58 <- Group_Detect(t(p300_random_n100_58), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(59)
  Group_Detect_p300_random_n100_59 <- Group_Detect(t(p300_random_n100_59), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(60)
  Group_Detect_p300_random_n100_60 <- Group_Detect(t(p300_random_n100_60), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(61)
  Group_Detect_p300_random_n100_61 <- Group_Detect(t(p300_random_n100_61), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(62)
  Group_Detect_p300_random_n100_62 <- Group_Detect(t(p300_random_n100_62), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(63)
  Group_Detect_p300_random_n100_63 <- Group_Detect(t(p300_random_n100_63), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(64)
  Group_Detect_p300_random_n100_64 <- Group_Detect(t(p300_random_n100_64), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(65)
  Group_Detect_p300_random_n100_65 <- Group_Detect(t(p300_random_n100_65), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(66)
  Group_Detect_p300_random_n100_66 <- Group_Detect(t(p300_random_n100_66), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(67)
  Group_Detect_p300_random_n100_67 <- Group_Detect(t(p300_random_n100_67), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(68)
  Group_Detect_p300_random_n100_68 <- Group_Detect(t(p300_random_n100_68), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(69)
  Group_Detect_p300_random_n100_69 <- Group_Detect(t(p300_random_n100_69), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(70)
  Group_Detect_p300_random_n100_70 <- Group_Detect(t(p300_random_n100_70), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(71)
  Group_Detect_p300_random_n100_71 <- Group_Detect(t(p300_random_n100_71), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(72)
  Group_Detect_p300_random_n100_72 <- Group_Detect(t(p300_random_n100_72), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(73)
  Group_Detect_p300_random_n100_73 <- Group_Detect(t(p300_random_n100_73), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(74)
  Group_Detect_p300_random_n100_74 <- Group_Detect(t(p300_random_n100_74), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(75)
  Group_Detect_p300_random_n100_75 <- Group_Detect(t(p300_random_n100_75), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(76)
  Group_Detect_p300_random_n100_76 <- Group_Detect(t(p300_random_n100_76), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(77)
  Group_Detect_p300_random_n100_77 <- Group_Detect(t(p300_random_n100_77), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(78)
  Group_Detect_p300_random_n100_78 <- Group_Detect(t(p300_random_n100_78), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(79)
  Group_Detect_p300_random_n100_79 <- Group_Detect(t(p300_random_n100_79), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(80)
  Group_Detect_p300_random_n100_80 <- Group_Detect(t(p300_random_n100_80), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(81)
  Group_Detect_p300_random_n100_81 <- Group_Detect(t(p300_random_n100_81), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(82)
  Group_Detect_p300_random_n100_82 <- Group_Detect(t(p300_random_n100_82), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(83)
  Group_Detect_p300_random_n100_83 <- Group_Detect(t(p300_random_n100_83), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(84)
  Group_Detect_p300_random_n100_84 <- Group_Detect(t(p300_random_n100_84), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(85)
  Group_Detect_p300_random_n100_85 <- Group_Detect(t(p300_random_n100_85), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(86)
  Group_Detect_p300_random_n100_86 <- Group_Detect(t(p300_random_n100_86), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(87)
  Group_Detect_p300_random_n100_87 <- Group_Detect(t(p300_random_n100_87), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(88)
  Group_Detect_p300_random_n100_88 <- Group_Detect(t(p300_random_n100_88), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(89)
  Group_Detect_p300_random_n100_89 <- Group_Detect(t(p300_random_n100_89), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(90)
  Group_Detect_p300_random_n100_90 <- Group_Detect(t(p300_random_n100_90), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(91)
  Group_Detect_p300_random_n100_91 <- Group_Detect(t(p300_random_n100_91), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(92)
  Group_Detect_p300_random_n100_92 <- Group_Detect(t(p300_random_n100_92), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(93)
  Group_Detect_p300_random_n100_93 <- Group_Detect(t(p300_random_n100_93), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(94)
  Group_Detect_p300_random_n100_94 <- Group_Detect(t(p300_random_n100_94), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(95)
  Group_Detect_p300_random_n100_95 <- Group_Detect(t(p300_random_n100_95), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(96)
  Group_Detect_p300_random_n100_96 <- Group_Detect(t(p300_random_n100_96), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(97)
  Group_Detect_p300_random_n100_97 <- Group_Detect(t(p300_random_n100_97), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(98)
  Group_Detect_p300_random_n100_98 <- Group_Detect(t(p300_random_n100_98), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(99)
  Group_Detect_p300_random_n100_99 <- Group_Detect(t(p300_random_n100_99), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
  set.seed(100)
  Group_Detect_p300_random_n100_100 <- Group_Detect(t(p300_random_n100_100), 2, 0.01, 0.01, 0.01, true_precision_p300_random)
  
})["elapsed"]






# bmsppre without paralle
library(parallel)
library(doParallel)
library(foreach)

# 사용 가능한 코어 수 만큼 클러스터 생성
numCores <- parallel::detectCores()
cl <- parallel::makeCluster(numCores)
doParallel::registerDoParallel(cl)

object_names <- paste0("p300_random_n100_", 1:100)
clusterExport(cl, varlist = object_names)

# 병렬 처리로 bmsppre
simulation_results <- foreach(i = 1:100, 
                              .packages = c("mvnfast", "Matrix", "ks", "matrixcalc", "stats", "GIGrvg")) %dopar% {
                                set.seed(i)
                                
                                # 각 i에 해당하는 데이터를 불러오기
                                current_data <- get(paste0("p300_random_n100_", i))
                                
                                sample_cov <- pd_matrix(cov(current_data))
                                result_bmsppre <- bmsppre(current_data, Omega = diag(diag(solve(sample_cov))))
                                post_est <- estimate.bsppre(result_bmsppre)
                                
                                # 반환값을 리스트로 구성: post_est와 elapsed 시간 모두 포함
                                list(post_est = post_est, elapsed = result_bmsppre$mcmctime["elapsed"])
                              }

# 클러스터 종료
stopCluster(cl)

# post_est와 elapsed 각각에 대해 이름 부여
names_post_est <- paste0("post.est.result_bmsppre_p300_random_n100_", 1:100)
names_elapsed <- paste0("mcmctime_elapsed_p300_random_n100_", 1:100)

# 리스트에서 post_est와 elapsed를 분리
post_est_results <- lapply(simulation_results, `[[`, "post_est")
elapsed_results <- lapply(simulation_results, `[[`, "elapsed")  # 혹은 sapply로 벡터형으로 변환 가능

# 각각 글로벌 환경에 할당
list2env(setNames(post_est_results, names_post_est), envir = .GlobalEnv)
list2env(setNames(elapsed_results, names_elapsed), envir = .GlobalEnv)








##########################################################
################## norm comparison #######################
##########################################################
# i = 1
diff_community_bsppre_p300_random_n100_1 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_1
norm_f_community_bsppre_p300_random_n100_1 <- norm(diff_community_bsppre_p300_random_n100_1, type="f") 
norm_1_community_bsppre_p300_random_n100_1 <- norm(diff_community_bsppre_p300_random_n100_1, type="1") 
norm_2_community_bsppre_p300_random_n100_1 <- norm(diff_community_bsppre_p300_random_n100_1, type="2") 
norm_m_community_bsppre_p300_random_n100_1 <- norm(diff_community_bsppre_p300_random_n100_1, type="m") 

# i = 2
diff_community_bsppre_p300_random_n100_2 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_2
norm_f_community_bsppre_p300_random_n100_2 <- norm(diff_community_bsppre_p300_random_n100_2, type="f") 
norm_1_community_bsppre_p300_random_n100_2 <- norm(diff_community_bsppre_p300_random_n100_2, type="1") 
norm_2_community_bsppre_p300_random_n100_2 <- norm(diff_community_bsppre_p300_random_n100_2, type="2") 
norm_m_community_bsppre_p300_random_n100_2 <- norm(diff_community_bsppre_p300_random_n100_2, type="m") 

# i = 3
diff_community_bsppre_p300_random_n100_3 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_3
norm_f_community_bsppre_p300_random_n100_3 <- norm(diff_community_bsppre_p300_random_n100_3, type="f") 
norm_1_community_bsppre_p300_random_n100_3 <- norm(diff_community_bsppre_p300_random_n100_3, type="1") 
norm_2_community_bsppre_p300_random_n100_3 <- norm(diff_community_bsppre_p300_random_n100_3, type="2") 
norm_m_community_bsppre_p300_random_n100_3 <- norm(diff_community_bsppre_p300_random_n100_3, type="m") 

# i = 4
diff_community_bsppre_p300_random_n100_4 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_4
norm_f_community_bsppre_p300_random_n100_4 <- norm(diff_community_bsppre_p300_random_n100_4, type="f") 
norm_1_community_bsppre_p300_random_n100_4 <- norm(diff_community_bsppre_p300_random_n100_4, type="1") 
norm_2_community_bsppre_p300_random_n100_4 <- norm(diff_community_bsppre_p300_random_n100_4, type="2") 
norm_m_community_bsppre_p300_random_n100_4 <- norm(diff_community_bsppre_p300_random_n100_4, type="m") 

# i = 5
diff_community_bsppre_p300_random_n100_5 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_5
norm_f_community_bsppre_p300_random_n100_5 <- norm(diff_community_bsppre_p300_random_n100_5, type="f") 
norm_1_community_bsppre_p300_random_n100_5 <- norm(diff_community_bsppre_p300_random_n100_5, type="1") 
norm_2_community_bsppre_p300_random_n100_5 <- norm(diff_community_bsppre_p300_random_n100_5, type="2") 
norm_m_community_bsppre_p300_random_n100_5 <- norm(diff_community_bsppre_p300_random_n100_5, type="m") 

# i = 6
diff_community_bsppre_p300_random_n100_6 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_6
norm_f_community_bsppre_p300_random_n100_6 <- norm(diff_community_bsppre_p300_random_n100_6, type="f") 
norm_1_community_bsppre_p300_random_n100_6 <- norm(diff_community_bsppre_p300_random_n100_6, type="1") 
norm_2_community_bsppre_p300_random_n100_6 <- norm(diff_community_bsppre_p300_random_n100_6, type="2") 
norm_m_community_bsppre_p300_random_n100_6 <- norm(diff_community_bsppre_p300_random_n100_6, type="m") 

# i = 7
diff_community_bsppre_p300_random_n100_7 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_7
norm_f_community_bsppre_p300_random_n100_7 <- norm(diff_community_bsppre_p300_random_n100_7, type="f") 
norm_1_community_bsppre_p300_random_n100_7 <- norm(diff_community_bsppre_p300_random_n100_7, type="1") 
norm_2_community_bsppre_p300_random_n100_7 <- norm(diff_community_bsppre_p300_random_n100_7, type="2") 
norm_m_community_bsppre_p300_random_n100_7 <- norm(diff_community_bsppre_p300_random_n100_7, type="m") 

# i = 8
diff_community_bsppre_p300_random_n100_8 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_8
norm_f_community_bsppre_p300_random_n100_8 <- norm(diff_community_bsppre_p300_random_n100_8, type="f") 
norm_1_community_bsppre_p300_random_n100_8 <- norm(diff_community_bsppre_p300_random_n100_8, type="1") 
norm_2_community_bsppre_p300_random_n100_8 <- norm(diff_community_bsppre_p300_random_n100_8, type="2") 
norm_m_community_bsppre_p300_random_n100_8 <- norm(diff_community_bsppre_p300_random_n100_8, type="m") 

# i = 9
diff_community_bsppre_p300_random_n100_9 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_9
norm_f_community_bsppre_p300_random_n100_9 <- norm(diff_community_bsppre_p300_random_n100_9, type="f") 
norm_1_community_bsppre_p300_random_n100_9 <- norm(diff_community_bsppre_p300_random_n100_9, type="1") 
norm_2_community_bsppre_p300_random_n100_9 <- norm(diff_community_bsppre_p300_random_n100_9, type="2") 
norm_m_community_bsppre_p300_random_n100_9 <- norm(diff_community_bsppre_p300_random_n100_9, type="m") 

# i = 10
diff_community_bsppre_p300_random_n100_10 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_10
norm_f_community_bsppre_p300_random_n100_10 <- norm(diff_community_bsppre_p300_random_n100_10, type="f") 
norm_1_community_bsppre_p300_random_n100_10 <- norm(diff_community_bsppre_p300_random_n100_10, type="1") 
norm_2_community_bsppre_p300_random_n100_10 <- norm(diff_community_bsppre_p300_random_n100_10, type="2") 
norm_m_community_bsppre_p300_random_n100_10 <- norm(diff_community_bsppre_p300_random_n100_10, type="m") 

# i = 11
diff_community_bsppre_p300_random_n100_11 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_11
norm_f_community_bsppre_p300_random_n100_11 <- norm(diff_community_bsppre_p300_random_n100_11, type="f") 
norm_1_community_bsppre_p300_random_n100_11 <- norm(diff_community_bsppre_p300_random_n100_11, type="1") 
norm_2_community_bsppre_p300_random_n100_11 <- norm(diff_community_bsppre_p300_random_n100_11, type="2") 
norm_m_community_bsppre_p300_random_n100_11 <- norm(diff_community_bsppre_p300_random_n100_11, type="m") 

# i = 12
diff_community_bsppre_p300_random_n100_12 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_12
norm_f_community_bsppre_p300_random_n100_12 <- norm(diff_community_bsppre_p300_random_n100_12, type="f") 
norm_1_community_bsppre_p300_random_n100_12 <- norm(diff_community_bsppre_p300_random_n100_12, type="1") 
norm_2_community_bsppre_p300_random_n100_12 <- norm(diff_community_bsppre_p300_random_n100_12, type="2") 
norm_m_community_bsppre_p300_random_n100_12 <- norm(diff_community_bsppre_p300_random_n100_12, type="m") 

# i = 13
diff_community_bsppre_p300_random_n100_13 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_13
norm_f_community_bsppre_p300_random_n100_13 <- norm(diff_community_bsppre_p300_random_n100_13, type="f") 
norm_1_community_bsppre_p300_random_n100_13 <- norm(diff_community_bsppre_p300_random_n100_13, type="1") 
norm_2_community_bsppre_p300_random_n100_13 <- norm(diff_community_bsppre_p300_random_n100_13, type="2") 
norm_m_community_bsppre_p300_random_n100_13 <- norm(diff_community_bsppre_p300_random_n100_13, type="m") 

# i = 14
diff_community_bsppre_p300_random_n100_14 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_14
norm_f_community_bsppre_p300_random_n100_14 <- norm(diff_community_bsppre_p300_random_n100_14, type="f") 
norm_1_community_bsppre_p300_random_n100_14 <- norm(diff_community_bsppre_p300_random_n100_14, type="1") 
norm_2_community_bsppre_p300_random_n100_14 <- norm(diff_community_bsppre_p300_random_n100_14, type="2") 
norm_m_community_bsppre_p300_random_n100_14 <- norm(diff_community_bsppre_p300_random_n100_14, type="m") 

# i = 15
diff_community_bsppre_p300_random_n100_15 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_15
norm_f_community_bsppre_p300_random_n100_15 <- norm(diff_community_bsppre_p300_random_n100_15, type="f") 
norm_1_community_bsppre_p300_random_n100_15 <- norm(diff_community_bsppre_p300_random_n100_15, type="1") 
norm_2_community_bsppre_p300_random_n100_15 <- norm(diff_community_bsppre_p300_random_n100_15, type="2") 
norm_m_community_bsppre_p300_random_n100_15 <- norm(diff_community_bsppre_p300_random_n100_15, type="m") 

# i = 16
diff_community_bsppre_p300_random_n100_16 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_16
norm_f_community_bsppre_p300_random_n100_16 <- norm(diff_community_bsppre_p300_random_n100_16, type="f") 
norm_1_community_bsppre_p300_random_n100_16 <- norm(diff_community_bsppre_p300_random_n100_16, type="1") 
norm_2_community_bsppre_p300_random_n100_16 <- norm(diff_community_bsppre_p300_random_n100_16, type="2") 
norm_m_community_bsppre_p300_random_n100_16 <- norm(diff_community_bsppre_p300_random_n100_16, type="m") 

# i = 17
diff_community_bsppre_p300_random_n100_17 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_17
norm_f_community_bsppre_p300_random_n100_17 <- norm(diff_community_bsppre_p300_random_n100_17, type="f") 
norm_1_community_bsppre_p300_random_n100_17 <- norm(diff_community_bsppre_p300_random_n100_17, type="1") 
norm_2_community_bsppre_p300_random_n100_17 <- norm(diff_community_bsppre_p300_random_n100_17, type="2") 
norm_m_community_bsppre_p300_random_n100_17 <- norm(diff_community_bsppre_p300_random_n100_17, type="m") 

# i = 18
diff_community_bsppre_p300_random_n100_18 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_18
norm_f_community_bsppre_p300_random_n100_18 <- norm(diff_community_bsppre_p300_random_n100_18, type="f") 
norm_1_community_bsppre_p300_random_n100_18 <- norm(diff_community_bsppre_p300_random_n100_18, type="1") 
norm_2_community_bsppre_p300_random_n100_18 <- norm(diff_community_bsppre_p300_random_n100_18, type="2") 
norm_m_community_bsppre_p300_random_n100_18 <- norm(diff_community_bsppre_p300_random_n100_18, type="m") 

# i = 19
diff_community_bsppre_p300_random_n100_19 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_19
norm_f_community_bsppre_p300_random_n100_19 <- norm(diff_community_bsppre_p300_random_n100_19, type="f") 
norm_1_community_bsppre_p300_random_n100_19 <- norm(diff_community_bsppre_p300_random_n100_19, type="1") 
norm_2_community_bsppre_p300_random_n100_19 <- norm(diff_community_bsppre_p300_random_n100_19, type="2") 
norm_m_community_bsppre_p300_random_n100_19 <- norm(diff_community_bsppre_p300_random_n100_19, type="m") 

# i = 20
diff_community_bsppre_p300_random_n100_20 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_20
norm_f_community_bsppre_p300_random_n100_20 <- norm(diff_community_bsppre_p300_random_n100_20, type="f") 
norm_1_community_bsppre_p300_random_n100_20 <- norm(diff_community_bsppre_p300_random_n100_20, type="1") 
norm_2_community_bsppre_p300_random_n100_20 <- norm(diff_community_bsppre_p300_random_n100_20, type="2") 
norm_m_community_bsppre_p300_random_n100_20 <- norm(diff_community_bsppre_p300_random_n100_20, type="m") 

# i = 21
diff_community_bsppre_p300_random_n100_21 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_21
norm_f_community_bsppre_p300_random_n100_21 <- norm(diff_community_bsppre_p300_random_n100_21, type="f") 
norm_1_community_bsppre_p300_random_n100_21 <- norm(diff_community_bsppre_p300_random_n100_21, type="1") 
norm_2_community_bsppre_p300_random_n100_21 <- norm(diff_community_bsppre_p300_random_n100_21, type="2") 
norm_m_community_bsppre_p300_random_n100_21 <- norm(diff_community_bsppre_p300_random_n100_21, type="m") 

# i = 22
diff_community_bsppre_p300_random_n100_22 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_22
norm_f_community_bsppre_p300_random_n100_22 <- norm(diff_community_bsppre_p300_random_n100_22, type="f") 
norm_1_community_bsppre_p300_random_n100_22 <- norm(diff_community_bsppre_p300_random_n100_22, type="1") 
norm_2_community_bsppre_p300_random_n100_22 <- norm(diff_community_bsppre_p300_random_n100_22, type="2") 
norm_m_community_bsppre_p300_random_n100_22 <- norm(diff_community_bsppre_p300_random_n100_22, type="m") 

# i = 23
diff_community_bsppre_p300_random_n100_23 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_23
norm_f_community_bsppre_p300_random_n100_23 <- norm(diff_community_bsppre_p300_random_n100_23, type="f") 
norm_1_community_bsppre_p300_random_n100_23 <- norm(diff_community_bsppre_p300_random_n100_23, type="1") 
norm_2_community_bsppre_p300_random_n100_23 <- norm(diff_community_bsppre_p300_random_n100_23, type="2") 
norm_m_community_bsppre_p300_random_n100_23 <- norm(diff_community_bsppre_p300_random_n100_23, type="m") 

# i = 24
diff_community_bsppre_p300_random_n100_24 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_24
norm_f_community_bsppre_p300_random_n100_24 <- norm(diff_community_bsppre_p300_random_n100_24, type="f") 
norm_1_community_bsppre_p300_random_n100_24 <- norm(diff_community_bsppre_p300_random_n100_24, type="1") 
norm_2_community_bsppre_p300_random_n100_24 <- norm(diff_community_bsppre_p300_random_n100_24, type="2") 
norm_m_community_bsppre_p300_random_n100_24 <- norm(diff_community_bsppre_p300_random_n100_24, type="m") 

# i = 25
diff_community_bsppre_p300_random_n100_25 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_25
norm_f_community_bsppre_p300_random_n100_25 <- norm(diff_community_bsppre_p300_random_n100_25, type="f") 
norm_1_community_bsppre_p300_random_n100_25 <- norm(diff_community_bsppre_p300_random_n100_25, type="1") 
norm_2_community_bsppre_p300_random_n100_25 <- norm(diff_community_bsppre_p300_random_n100_25, type="2") 
norm_m_community_bsppre_p300_random_n100_25 <- norm(diff_community_bsppre_p300_random_n100_25, type="m") 

# i = 26
diff_community_bsppre_p300_random_n100_26 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_26
norm_f_community_bsppre_p300_random_n100_26 <- norm(diff_community_bsppre_p300_random_n100_26, type="f") 
norm_1_community_bsppre_p300_random_n100_26 <- norm(diff_community_bsppre_p300_random_n100_26, type="1") 
norm_2_community_bsppre_p300_random_n100_26 <- norm(diff_community_bsppre_p300_random_n100_26, type="2") 
norm_m_community_bsppre_p300_random_n100_26 <- norm(diff_community_bsppre_p300_random_n100_26, type="m") 

# i = 27
diff_community_bsppre_p300_random_n100_27 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_27
norm_f_community_bsppre_p300_random_n100_27 <- norm(diff_community_bsppre_p300_random_n100_27, type="f") 
norm_1_community_bsppre_p300_random_n100_27 <- norm(diff_community_bsppre_p300_random_n100_27, type="1") 
norm_2_community_bsppre_p300_random_n100_27 <- norm(diff_community_bsppre_p300_random_n100_27, type="2") 
norm_m_community_bsppre_p300_random_n100_27 <- norm(diff_community_bsppre_p300_random_n100_27, type="m") 

# i = 28
diff_community_bsppre_p300_random_n100_28 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_28
norm_f_community_bsppre_p300_random_n100_28 <- norm(diff_community_bsppre_p300_random_n100_28, type="f") 
norm_1_community_bsppre_p300_random_n100_28 <- norm(diff_community_bsppre_p300_random_n100_28, type="1") 
norm_2_community_bsppre_p300_random_n100_28 <- norm(diff_community_bsppre_p300_random_n100_28, type="2") 
norm_m_community_bsppre_p300_random_n100_28 <- norm(diff_community_bsppre_p300_random_n100_28, type="m") 

# i = 29
diff_community_bsppre_p300_random_n100_29 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_29
norm_f_community_bsppre_p300_random_n100_29 <- norm(diff_community_bsppre_p300_random_n100_29, type="f") 
norm_1_community_bsppre_p300_random_n100_29 <- norm(diff_community_bsppre_p300_random_n100_29, type="1") 
norm_2_community_bsppre_p300_random_n100_29 <- norm(diff_community_bsppre_p300_random_n100_29, type="2") 
norm_m_community_bsppre_p300_random_n100_29 <- norm(diff_community_bsppre_p300_random_n100_29, type="m") 

# i = 30
diff_community_bsppre_p300_random_n100_30 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_30
norm_f_community_bsppre_p300_random_n100_30 <- norm(diff_community_bsppre_p300_random_n100_30, type="f") 
norm_1_community_bsppre_p300_random_n100_30 <- norm(diff_community_bsppre_p300_random_n100_30, type="1") 
norm_2_community_bsppre_p300_random_n100_30 <- norm(diff_community_bsppre_p300_random_n100_30, type="2") 
norm_m_community_bsppre_p300_random_n100_30 <- norm(diff_community_bsppre_p300_random_n100_30, type="m") 

# i = 31
diff_community_bsppre_p300_random_n100_31 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_31
norm_f_community_bsppre_p300_random_n100_31 <- norm(diff_community_bsppre_p300_random_n100_31, type="f") 
norm_1_community_bsppre_p300_random_n100_31 <- norm(diff_community_bsppre_p300_random_n100_31, type="1") 
norm_2_community_bsppre_p300_random_n100_31 <- norm(diff_community_bsppre_p300_random_n100_31, type="2") 
norm_m_community_bsppre_p300_random_n100_31 <- norm(diff_community_bsppre_p300_random_n100_31, type="m") 

# i = 32
diff_community_bsppre_p300_random_n100_32 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_32
norm_f_community_bsppre_p300_random_n100_32 <- norm(diff_community_bsppre_p300_random_n100_32, type="f") 
norm_1_community_bsppre_p300_random_n100_32 <- norm(diff_community_bsppre_p300_random_n100_32, type="1") 
norm_2_community_bsppre_p300_random_n100_32 <- norm(diff_community_bsppre_p300_random_n100_32, type="2") 
norm_m_community_bsppre_p300_random_n100_32 <- norm(diff_community_bsppre_p300_random_n100_32, type="m") 

# i = 33
diff_community_bsppre_p300_random_n100_33 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_33
norm_f_community_bsppre_p300_random_n100_33 <- norm(diff_community_bsppre_p300_random_n100_33, type="f") 
norm_1_community_bsppre_p300_random_n100_33 <- norm(diff_community_bsppre_p300_random_n100_33, type="1") 
norm_2_community_bsppre_p300_random_n100_33 <- norm(diff_community_bsppre_p300_random_n100_33, type="2") 
norm_m_community_bsppre_p300_random_n100_33 <- norm(diff_community_bsppre_p300_random_n100_33, type="m") 

# i = 34
diff_community_bsppre_p300_random_n100_34 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_34
norm_f_community_bsppre_p300_random_n100_34 <- norm(diff_community_bsppre_p300_random_n100_34, type="f") 
norm_1_community_bsppre_p300_random_n100_34 <- norm(diff_community_bsppre_p300_random_n100_34, type="1") 
norm_2_community_bsppre_p300_random_n100_34 <- norm(diff_community_bsppre_p300_random_n100_34, type="2") 
norm_m_community_bsppre_p300_random_n100_34 <- norm(diff_community_bsppre_p300_random_n100_34, type="m") 

# i = 35
diff_community_bsppre_p300_random_n100_35 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_35
norm_f_community_bsppre_p300_random_n100_35 <- norm(diff_community_bsppre_p300_random_n100_35, type="f") 
norm_1_community_bsppre_p300_random_n100_35 <- norm(diff_community_bsppre_p300_random_n100_35, type="1") 
norm_2_community_bsppre_p300_random_n100_35 <- norm(diff_community_bsppre_p300_random_n100_35, type="2") 
norm_m_community_bsppre_p300_random_n100_35 <- norm(diff_community_bsppre_p300_random_n100_35, type="m") 

# i = 36
diff_community_bsppre_p300_random_n100_36 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_36
norm_f_community_bsppre_p300_random_n100_36 <- norm(diff_community_bsppre_p300_random_n100_36, type="f") 
norm_1_community_bsppre_p300_random_n100_36 <- norm(diff_community_bsppre_p300_random_n100_36, type="1") 
norm_2_community_bsppre_p300_random_n100_36 <- norm(diff_community_bsppre_p300_random_n100_36, type="2") 
norm_m_community_bsppre_p300_random_n100_36 <- norm(diff_community_bsppre_p300_random_n100_36, type="m") 

# i = 37
diff_community_bsppre_p300_random_n100_37 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_37
norm_f_community_bsppre_p300_random_n100_37 <- norm(diff_community_bsppre_p300_random_n100_37, type="f") 
norm_1_community_bsppre_p300_random_n100_37 <- norm(diff_community_bsppre_p300_random_n100_37, type="1") 
norm_2_community_bsppre_p300_random_n100_37 <- norm(diff_community_bsppre_p300_random_n100_37, type="2") 
norm_m_community_bsppre_p300_random_n100_37 <- norm(diff_community_bsppre_p300_random_n100_37, type="m") 

# i = 38
diff_community_bsppre_p300_random_n100_38 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_38
norm_f_community_bsppre_p300_random_n100_38 <- norm(diff_community_bsppre_p300_random_n100_38, type="f") 
norm_1_community_bsppre_p300_random_n100_38 <- norm(diff_community_bsppre_p300_random_n100_38, type="1") 
norm_2_community_bsppre_p300_random_n100_38 <- norm(diff_community_bsppre_p300_random_n100_38, type="2") 
norm_m_community_bsppre_p300_random_n100_38 <- norm(diff_community_bsppre_p300_random_n100_38, type="m") 

# i = 39
diff_community_bsppre_p300_random_n100_39 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_39
norm_f_community_bsppre_p300_random_n100_39 <- norm(diff_community_bsppre_p300_random_n100_39, type="f") 
norm_1_community_bsppre_p300_random_n100_39 <- norm(diff_community_bsppre_p300_random_n100_39, type="1") 
norm_2_community_bsppre_p300_random_n100_39 <- norm(diff_community_bsppre_p300_random_n100_39, type="2") 
norm_m_community_bsppre_p300_random_n100_39 <- norm(diff_community_bsppre_p300_random_n100_39, type="m") 

# i = 40
diff_community_bsppre_p300_random_n100_40 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_40
norm_f_community_bsppre_p300_random_n100_40 <- norm(diff_community_bsppre_p300_random_n100_40, type="f") 
norm_1_community_bsppre_p300_random_n100_40 <- norm(diff_community_bsppre_p300_random_n100_40, type="1") 
norm_2_community_bsppre_p300_random_n100_40 <- norm(diff_community_bsppre_p300_random_n100_40, type="2") 
norm_m_community_bsppre_p300_random_n100_40 <- norm(diff_community_bsppre_p300_random_n100_40, type="m") 

# i = 41
diff_community_bsppre_p300_random_n100_41 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_41
norm_f_community_bsppre_p300_random_n100_41 <- norm(diff_community_bsppre_p300_random_n100_41, type="f") 
norm_1_community_bsppre_p300_random_n100_41 <- norm(diff_community_bsppre_p300_random_n100_41, type="1") 
norm_2_community_bsppre_p300_random_n100_41 <- norm(diff_community_bsppre_p300_random_n100_41, type="2") 
norm_m_community_bsppre_p300_random_n100_41 <- norm(diff_community_bsppre_p300_random_n100_41, type="m") 

# i = 42
diff_community_bsppre_p300_random_n100_42 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_42
norm_f_community_bsppre_p300_random_n100_42 <- norm(diff_community_bsppre_p300_random_n100_42, type="f") 
norm_1_community_bsppre_p300_random_n100_42 <- norm(diff_community_bsppre_p300_random_n100_42, type="1") 
norm_2_community_bsppre_p300_random_n100_42 <- norm(diff_community_bsppre_p300_random_n100_42, type="2") 
norm_m_community_bsppre_p300_random_n100_42 <- norm(diff_community_bsppre_p300_random_n100_42, type="m") 

# i = 43
diff_community_bsppre_p300_random_n100_43 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_43
norm_f_community_bsppre_p300_random_n100_43 <- norm(diff_community_bsppre_p300_random_n100_43, type="f") 
norm_1_community_bsppre_p300_random_n100_43 <- norm(diff_community_bsppre_p300_random_n100_43, type="1") 
norm_2_community_bsppre_p300_random_n100_43 <- norm(diff_community_bsppre_p300_random_n100_43, type="2") 
norm_m_community_bsppre_p300_random_n100_43 <- norm(diff_community_bsppre_p300_random_n100_43, type="m") 

# i = 44
diff_community_bsppre_p300_random_n100_44 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_44
norm_f_community_bsppre_p300_random_n100_44 <- norm(diff_community_bsppre_p300_random_n100_44, type="f") 
norm_1_community_bsppre_p300_random_n100_44 <- norm(diff_community_bsppre_p300_random_n100_44, type="1") 
norm_2_community_bsppre_p300_random_n100_44 <- norm(diff_community_bsppre_p300_random_n100_44, type="2") 
norm_m_community_bsppre_p300_random_n100_44 <- norm(diff_community_bsppre_p300_random_n100_44, type="m") 

# i = 45
diff_community_bsppre_p300_random_n100_45 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_45
norm_f_community_bsppre_p300_random_n100_45 <- norm(diff_community_bsppre_p300_random_n100_45, type="f") 
norm_1_community_bsppre_p300_random_n100_45 <- norm(diff_community_bsppre_p300_random_n100_45, type="1") 
norm_2_community_bsppre_p300_random_n100_45 <- norm(diff_community_bsppre_p300_random_n100_45, type="2") 
norm_m_community_bsppre_p300_random_n100_45 <- norm(diff_community_bsppre_p300_random_n100_45, type="m") 

# i = 46
diff_community_bsppre_p300_random_n100_46 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_46
norm_f_community_bsppre_p300_random_n100_46 <- norm(diff_community_bsppre_p300_random_n100_46, type="f") 
norm_1_community_bsppre_p300_random_n100_46 <- norm(diff_community_bsppre_p300_random_n100_46, type="1") 
norm_2_community_bsppre_p300_random_n100_46 <- norm(diff_community_bsppre_p300_random_n100_46, type="2") 
norm_m_community_bsppre_p300_random_n100_46 <- norm(diff_community_bsppre_p300_random_n100_46, type="m") 

# i = 47
diff_community_bsppre_p300_random_n100_47 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_47
norm_f_community_bsppre_p300_random_n100_47 <- norm(diff_community_bsppre_p300_random_n100_47, type="f") 
norm_1_community_bsppre_p300_random_n100_47 <- norm(diff_community_bsppre_p300_random_n100_47, type="1") 
norm_2_community_bsppre_p300_random_n100_47 <- norm(diff_community_bsppre_p300_random_n100_47, type="2") 
norm_m_community_bsppre_p300_random_n100_47 <- norm(diff_community_bsppre_p300_random_n100_47, type="m") 

# i = 48
diff_community_bsppre_p300_random_n100_48 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_48
norm_f_community_bsppre_p300_random_n100_48 <- norm(diff_community_bsppre_p300_random_n100_48, type="f") 
norm_1_community_bsppre_p300_random_n100_48 <- norm(diff_community_bsppre_p300_random_n100_48, type="1") 
norm_2_community_bsppre_p300_random_n100_48 <- norm(diff_community_bsppre_p300_random_n100_48, type="2") 
norm_m_community_bsppre_p300_random_n100_48 <- norm(diff_community_bsppre_p300_random_n100_48, type="m") 

# i = 49
diff_community_bsppre_p300_random_n100_49 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_49
norm_f_community_bsppre_p300_random_n100_49 <- norm(diff_community_bsppre_p300_random_n100_49, type="f") 
norm_1_community_bsppre_p300_random_n100_49 <- norm(diff_community_bsppre_p300_random_n100_49, type="1") 
norm_2_community_bsppre_p300_random_n100_49 <- norm(diff_community_bsppre_p300_random_n100_49, type="2") 
norm_m_community_bsppre_p300_random_n100_49 <- norm(diff_community_bsppre_p300_random_n100_49, type="m") 

# i = 50
diff_community_bsppre_p300_random_n100_50 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_50
norm_f_community_bsppre_p300_random_n100_50 <- norm(diff_community_bsppre_p300_random_n100_50, type="f") 
norm_1_community_bsppre_p300_random_n100_50 <- norm(diff_community_bsppre_p300_random_n100_50, type="1") 
norm_2_community_bsppre_p300_random_n100_50 <- norm(diff_community_bsppre_p300_random_n100_50, type="2") 
norm_m_community_bsppre_p300_random_n100_50 <- norm(diff_community_bsppre_p300_random_n100_50, type="m") 

# i = 51
diff_community_bsppre_p300_random_n100_51 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_51
norm_f_community_bsppre_p300_random_n100_51 <- norm(diff_community_bsppre_p300_random_n100_51, type="f") 
norm_1_community_bsppre_p300_random_n100_51 <- norm(diff_community_bsppre_p300_random_n100_51, type="1") 
norm_2_community_bsppre_p300_random_n100_51 <- norm(diff_community_bsppre_p300_random_n100_51, type="2") 
norm_m_community_bsppre_p300_random_n100_51 <- norm(diff_community_bsppre_p300_random_n100_51, type="m") 

# i = 52
diff_community_bsppre_p300_random_n100_52 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_52
norm_f_community_bsppre_p300_random_n100_52 <- norm(diff_community_bsppre_p300_random_n100_52, type="f") 
norm_1_community_bsppre_p300_random_n100_52 <- norm(diff_community_bsppre_p300_random_n100_52, type="1") 
norm_2_community_bsppre_p300_random_n100_52 <- norm(diff_community_bsppre_p300_random_n100_52, type="2") 
norm_m_community_bsppre_p300_random_n100_52 <- norm(diff_community_bsppre_p300_random_n100_52, type="m") 

# i = 53
diff_community_bsppre_p300_random_n100_53 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_53
norm_f_community_bsppre_p300_random_n100_53 <- norm(diff_community_bsppre_p300_random_n100_53, type="f") 
norm_1_community_bsppre_p300_random_n100_53 <- norm(diff_community_bsppre_p300_random_n100_53, type="1") 
norm_2_community_bsppre_p300_random_n100_53 <- norm(diff_community_bsppre_p300_random_n100_53, type="2") 
norm_m_community_bsppre_p300_random_n100_53 <- norm(diff_community_bsppre_p300_random_n100_53, type="m") 

# i = 54
diff_community_bsppre_p300_random_n100_54 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_54
norm_f_community_bsppre_p300_random_n100_54 <- norm(diff_community_bsppre_p300_random_n100_54, type="f") 
norm_1_community_bsppre_p300_random_n100_54 <- norm(diff_community_bsppre_p300_random_n100_54, type="1") 
norm_2_community_bsppre_p300_random_n100_54 <- norm(diff_community_bsppre_p300_random_n100_54, type="2") 
norm_m_community_bsppre_p300_random_n100_54 <- norm(diff_community_bsppre_p300_random_n100_54, type="m") 

# i = 55
diff_community_bsppre_p300_random_n100_55 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_55
norm_f_community_bsppre_p300_random_n100_55 <- norm(diff_community_bsppre_p300_random_n100_55, type="f") 
norm_1_community_bsppre_p300_random_n100_55 <- norm(diff_community_bsppre_p300_random_n100_55, type="1") 
norm_2_community_bsppre_p300_random_n100_55 <- norm(diff_community_bsppre_p300_random_n100_55, type="2") 
norm_m_community_bsppre_p300_random_n100_55 <- norm(diff_community_bsppre_p300_random_n100_55, type="m") 

# i = 56
diff_community_bsppre_p300_random_n100_56 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_56
norm_f_community_bsppre_p300_random_n100_56 <- norm(diff_community_bsppre_p300_random_n100_56, type="f") 
norm_1_community_bsppre_p300_random_n100_56 <- norm(diff_community_bsppre_p300_random_n100_56, type="1") 
norm_2_community_bsppre_p300_random_n100_56 <- norm(diff_community_bsppre_p300_random_n100_56, type="2") 
norm_m_community_bsppre_p300_random_n100_56 <- norm(diff_community_bsppre_p300_random_n100_56, type="m") 

# i = 57
diff_community_bsppre_p300_random_n100_57 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_57
norm_f_community_bsppre_p300_random_n100_57 <- norm(diff_community_bsppre_p300_random_n100_57, type="f") 
norm_1_community_bsppre_p300_random_n100_57 <- norm(diff_community_bsppre_p300_random_n100_57, type="1") 
norm_2_community_bsppre_p300_random_n100_57 <- norm(diff_community_bsppre_p300_random_n100_57, type="2") 
norm_m_community_bsppre_p300_random_n100_57 <- norm(diff_community_bsppre_p300_random_n100_57, type="m") 

# i = 58
diff_community_bsppre_p300_random_n100_58 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_58
norm_f_community_bsppre_p300_random_n100_58 <- norm(diff_community_bsppre_p300_random_n100_58, type="f") 
norm_1_community_bsppre_p300_random_n100_58 <- norm(diff_community_bsppre_p300_random_n100_58, type="1") 
norm_2_community_bsppre_p300_random_n100_58 <- norm(diff_community_bsppre_p300_random_n100_58, type="2") 
norm_m_community_bsppre_p300_random_n100_58 <- norm(diff_community_bsppre_p300_random_n100_58, type="m") 

# i = 59
diff_community_bsppre_p300_random_n100_59 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_59
norm_f_community_bsppre_p300_random_n100_59 <- norm(diff_community_bsppre_p300_random_n100_59, type="f") 
norm_1_community_bsppre_p300_random_n100_59 <- norm(diff_community_bsppre_p300_random_n100_59, type="1") 
norm_2_community_bsppre_p300_random_n100_59 <- norm(diff_community_bsppre_p300_random_n100_59, type="2") 
norm_m_community_bsppre_p300_random_n100_59 <- norm(diff_community_bsppre_p300_random_n100_59, type="m") 

# i = 60
diff_community_bsppre_p300_random_n100_60 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_60
norm_f_community_bsppre_p300_random_n100_60 <- norm(diff_community_bsppre_p300_random_n100_60, type="f") 
norm_1_community_bsppre_p300_random_n100_60 <- norm(diff_community_bsppre_p300_random_n100_60, type="1") 
norm_2_community_bsppre_p300_random_n100_60 <- norm(diff_community_bsppre_p300_random_n100_60, type="2") 
norm_m_community_bsppre_p300_random_n100_60 <- norm(diff_community_bsppre_p300_random_n100_60, type="m") 

# i = 61
diff_community_bsppre_p300_random_n100_61 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_61
norm_f_community_bsppre_p300_random_n100_61 <- norm(diff_community_bsppre_p300_random_n100_61, type="f") 
norm_1_community_bsppre_p300_random_n100_61 <- norm(diff_community_bsppre_p300_random_n100_61, type="1") 
norm_2_community_bsppre_p300_random_n100_61 <- norm(diff_community_bsppre_p300_random_n100_61, type="2") 
norm_m_community_bsppre_p300_random_n100_61 <- norm(diff_community_bsppre_p300_random_n100_61, type="m") 

# i = 62
diff_community_bsppre_p300_random_n100_62 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_62
norm_f_community_bsppre_p300_random_n100_62 <- norm(diff_community_bsppre_p300_random_n100_62, type="f") 
norm_1_community_bsppre_p300_random_n100_62 <- norm(diff_community_bsppre_p300_random_n100_62, type="1") 
norm_2_community_bsppre_p300_random_n100_62 <- norm(diff_community_bsppre_p300_random_n100_62, type="2") 
norm_m_community_bsppre_p300_random_n100_62 <- norm(diff_community_bsppre_p300_random_n100_62, type="m") 

# i = 63
diff_community_bsppre_p300_random_n100_63 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_63
norm_f_community_bsppre_p300_random_n100_63 <- norm(diff_community_bsppre_p300_random_n100_63, type="f") 
norm_1_community_bsppre_p300_random_n100_63 <- norm(diff_community_bsppre_p300_random_n100_63, type="1") 
norm_2_community_bsppre_p300_random_n100_63 <- norm(diff_community_bsppre_p300_random_n100_63, type="2") 
norm_m_community_bsppre_p300_random_n100_63 <- norm(diff_community_bsppre_p300_random_n100_63, type="m") 

# i = 64
diff_community_bsppre_p300_random_n100_64 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_64
norm_f_community_bsppre_p300_random_n100_64 <- norm(diff_community_bsppre_p300_random_n100_64, type="f") 
norm_1_community_bsppre_p300_random_n100_64 <- norm(diff_community_bsppre_p300_random_n100_64, type="1") 
norm_2_community_bsppre_p300_random_n100_64 <- norm(diff_community_bsppre_p300_random_n100_64, type="2") 
norm_m_community_bsppre_p300_random_n100_64 <- norm(diff_community_bsppre_p300_random_n100_64, type="m") 

# i = 65
diff_community_bsppre_p300_random_n100_65 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_65
norm_f_community_bsppre_p300_random_n100_65 <- norm(diff_community_bsppre_p300_random_n100_65, type="f") 
norm_1_community_bsppre_p300_random_n100_65 <- norm(diff_community_bsppre_p300_random_n100_65, type="1") 
norm_2_community_bsppre_p300_random_n100_65 <- norm(diff_community_bsppre_p300_random_n100_65, type="2") 
norm_m_community_bsppre_p300_random_n100_65 <- norm(diff_community_bsppre_p300_random_n100_65, type="m") 

# i = 66
diff_community_bsppre_p300_random_n100_66 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_66
norm_f_community_bsppre_p300_random_n100_66 <- norm(diff_community_bsppre_p300_random_n100_66, type="f") 
norm_1_community_bsppre_p300_random_n100_66 <- norm(diff_community_bsppre_p300_random_n100_66, type="1") 
norm_2_community_bsppre_p300_random_n100_66 <- norm(diff_community_bsppre_p300_random_n100_66, type="2") 
norm_m_community_bsppre_p300_random_n100_66 <- norm(diff_community_bsppre_p300_random_n100_66, type="m") 

# i = 67
diff_community_bsppre_p300_random_n100_67 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_67
norm_f_community_bsppre_p300_random_n100_67 <- norm(diff_community_bsppre_p300_random_n100_67, type="f") 
norm_1_community_bsppre_p300_random_n100_67 <- norm(diff_community_bsppre_p300_random_n100_67, type="1") 
norm_2_community_bsppre_p300_random_n100_67 <- norm(diff_community_bsppre_p300_random_n100_67, type="2") 
norm_m_community_bsppre_p300_random_n100_67 <- norm(diff_community_bsppre_p300_random_n100_67, type="m") 

# i = 68
diff_community_bsppre_p300_random_n100_68 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_68
norm_f_community_bsppre_p300_random_n100_68 <- norm(diff_community_bsppre_p300_random_n100_68, type="f") 
norm_1_community_bsppre_p300_random_n100_68 <- norm(diff_community_bsppre_p300_random_n100_68, type="1") 
norm_2_community_bsppre_p300_random_n100_68 <- norm(diff_community_bsppre_p300_random_n100_68, type="2") 
norm_m_community_bsppre_p300_random_n100_68 <- norm(diff_community_bsppre_p300_random_n100_68, type="m") 

# i = 69
diff_community_bsppre_p300_random_n100_69 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_69
norm_f_community_bsppre_p300_random_n100_69 <- norm(diff_community_bsppre_p300_random_n100_69, type="f") 
norm_1_community_bsppre_p300_random_n100_69 <- norm(diff_community_bsppre_p300_random_n100_69, type="1") 
norm_2_community_bsppre_p300_random_n100_69 <- norm(diff_community_bsppre_p300_random_n100_69, type="2") 
norm_m_community_bsppre_p300_random_n100_69 <- norm(diff_community_bsppre_p300_random_n100_69, type="m") 

# i = 70
diff_community_bsppre_p300_random_n100_70 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_70
norm_f_community_bsppre_p300_random_n100_70 <- norm(diff_community_bsppre_p300_random_n100_70, type="f") 
norm_1_community_bsppre_p300_random_n100_70 <- norm(diff_community_bsppre_p300_random_n100_70, type="1") 
norm_2_community_bsppre_p300_random_n100_70 <- norm(diff_community_bsppre_p300_random_n100_70, type="2") 
norm_m_community_bsppre_p300_random_n100_70 <- norm(diff_community_bsppre_p300_random_n100_70, type="m") 

# i = 71
diff_community_bsppre_p300_random_n100_71 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_71
norm_f_community_bsppre_p300_random_n100_71 <- norm(diff_community_bsppre_p300_random_n100_71, type="f") 
norm_1_community_bsppre_p300_random_n100_71 <- norm(diff_community_bsppre_p300_random_n100_71, type="1") 
norm_2_community_bsppre_p300_random_n100_71 <- norm(diff_community_bsppre_p300_random_n100_71, type="2") 
norm_m_community_bsppre_p300_random_n100_71 <- norm(diff_community_bsppre_p300_random_n100_71, type="m") 

# i = 72
diff_community_bsppre_p300_random_n100_72 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_72
norm_f_community_bsppre_p300_random_n100_72 <- norm(diff_community_bsppre_p300_random_n100_72, type="f") 
norm_1_community_bsppre_p300_random_n100_72 <- norm(diff_community_bsppre_p300_random_n100_72, type="1") 
norm_2_community_bsppre_p300_random_n100_72 <- norm(diff_community_bsppre_p300_random_n100_72, type="2") 
norm_m_community_bsppre_p300_random_n100_72 <- norm(diff_community_bsppre_p300_random_n100_72, type="m") 

# i = 73
diff_community_bsppre_p300_random_n100_73 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_73
norm_f_community_bsppre_p300_random_n100_73 <- norm(diff_community_bsppre_p300_random_n100_73, type="f") 
norm_1_community_bsppre_p300_random_n100_73 <- norm(diff_community_bsppre_p300_random_n100_73, type="1") 
norm_2_community_bsppre_p300_random_n100_73 <- norm(diff_community_bsppre_p300_random_n100_73, type="2") 
norm_m_community_bsppre_p300_random_n100_73 <- norm(diff_community_bsppre_p300_random_n100_73, type="m") 

# i = 74
diff_community_bsppre_p300_random_n100_74 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_74
norm_f_community_bsppre_p300_random_n100_74 <- norm(diff_community_bsppre_p300_random_n100_74, type="f") 
norm_1_community_bsppre_p300_random_n100_74 <- norm(diff_community_bsppre_p300_random_n100_74, type="1") 
norm_2_community_bsppre_p300_random_n100_74 <- norm(diff_community_bsppre_p300_random_n100_74, type="2") 
norm_m_community_bsppre_p300_random_n100_74 <- norm(diff_community_bsppre_p300_random_n100_74, type="m") 

# i = 75
diff_community_bsppre_p300_random_n100_75 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_75
norm_f_community_bsppre_p300_random_n100_75 <- norm(diff_community_bsppre_p300_random_n100_75, type="f") 
norm_1_community_bsppre_p300_random_n100_75 <- norm(diff_community_bsppre_p300_random_n100_75, type="1") 
norm_2_community_bsppre_p300_random_n100_75 <- norm(diff_community_bsppre_p300_random_n100_75, type="2") 
norm_m_community_bsppre_p300_random_n100_75 <- norm(diff_community_bsppre_p300_random_n100_75, type="m") 

# i = 76
diff_community_bsppre_p300_random_n100_76 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_76
norm_f_community_bsppre_p300_random_n100_76 <- norm(diff_community_bsppre_p300_random_n100_76, type="f") 
norm_1_community_bsppre_p300_random_n100_76 <- norm(diff_community_bsppre_p300_random_n100_76, type="1") 
norm_2_community_bsppre_p300_random_n100_76 <- norm(diff_community_bsppre_p300_random_n100_76, type="2") 
norm_m_community_bsppre_p300_random_n100_76 <- norm(diff_community_bsppre_p300_random_n100_76, type="m") 

# i = 77
diff_community_bsppre_p300_random_n100_77 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_77
norm_f_community_bsppre_p300_random_n100_77 <- norm(diff_community_bsppre_p300_random_n100_77, type="f") 
norm_1_community_bsppre_p300_random_n100_77 <- norm(diff_community_bsppre_p300_random_n100_77, type="1") 
norm_2_community_bsppre_p300_random_n100_77 <- norm(diff_community_bsppre_p300_random_n100_77, type="2") 
norm_m_community_bsppre_p300_random_n100_77 <- norm(diff_community_bsppre_p300_random_n100_77, type="m") 

# i = 78
diff_community_bsppre_p300_random_n100_78 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_78
norm_f_community_bsppre_p300_random_n100_78 <- norm(diff_community_bsppre_p300_random_n100_78, type="f") 
norm_1_community_bsppre_p300_random_n100_78 <- norm(diff_community_bsppre_p300_random_n100_78, type="1") 
norm_2_community_bsppre_p300_random_n100_78 <- norm(diff_community_bsppre_p300_random_n100_78, type="2") 
norm_m_community_bsppre_p300_random_n100_78 <- norm(diff_community_bsppre_p300_random_n100_78, type="m") 

# i = 79
diff_community_bsppre_p300_random_n100_79 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_79
norm_f_community_bsppre_p300_random_n100_79 <- norm(diff_community_bsppre_p300_random_n100_79, type="f") 
norm_1_community_bsppre_p300_random_n100_79 <- norm(diff_community_bsppre_p300_random_n100_79, type="1") 
norm_2_community_bsppre_p300_random_n100_79 <- norm(diff_community_bsppre_p300_random_n100_79, type="2") 
norm_m_community_bsppre_p300_random_n100_79 <- norm(diff_community_bsppre_p300_random_n100_79, type="m") 

# i = 80
diff_community_bsppre_p300_random_n100_80 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_80
norm_f_community_bsppre_p300_random_n100_80 <- norm(diff_community_bsppre_p300_random_n100_80, type="f") 
norm_1_community_bsppre_p300_random_n100_80 <- norm(diff_community_bsppre_p300_random_n100_80, type="1") 
norm_2_community_bsppre_p300_random_n100_80 <- norm(diff_community_bsppre_p300_random_n100_80, type="2") 
norm_m_community_bsppre_p300_random_n100_80 <- norm(diff_community_bsppre_p300_random_n100_80, type="m") 

# i = 81
diff_community_bsppre_p300_random_n100_81 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_81
norm_f_community_bsppre_p300_random_n100_81 <- norm(diff_community_bsppre_p300_random_n100_81, type="f") 
norm_1_community_bsppre_p300_random_n100_81 <- norm(diff_community_bsppre_p300_random_n100_81, type="1") 
norm_2_community_bsppre_p300_random_n100_81 <- norm(diff_community_bsppre_p300_random_n100_81, type="2") 
norm_m_community_bsppre_p300_random_n100_81 <- norm(diff_community_bsppre_p300_random_n100_81, type="m") 

# i = 82
diff_community_bsppre_p300_random_n100_82 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_82
norm_f_community_bsppre_p300_random_n100_82 <- norm(diff_community_bsppre_p300_random_n100_82, type="f") 
norm_1_community_bsppre_p300_random_n100_82 <- norm(diff_community_bsppre_p300_random_n100_82, type="1") 
norm_2_community_bsppre_p300_random_n100_82 <- norm(diff_community_bsppre_p300_random_n100_82, type="2") 
norm_m_community_bsppre_p300_random_n100_82 <- norm(diff_community_bsppre_p300_random_n100_82, type="m") 

# i = 83
diff_community_bsppre_p300_random_n100_83 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_83
norm_f_community_bsppre_p300_random_n100_83 <- norm(diff_community_bsppre_p300_random_n100_83, type="f") 
norm_1_community_bsppre_p300_random_n100_83 <- norm(diff_community_bsppre_p300_random_n100_83, type="1") 
norm_2_community_bsppre_p300_random_n100_83 <- norm(diff_community_bsppre_p300_random_n100_83, type="2") 
norm_m_community_bsppre_p300_random_n100_83 <- norm(diff_community_bsppre_p300_random_n100_83, type="m") 

# i = 84
diff_community_bsppre_p300_random_n100_84 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_84
norm_f_community_bsppre_p300_random_n100_84 <- norm(diff_community_bsppre_p300_random_n100_84, type="f") 
norm_1_community_bsppre_p300_random_n100_84 <- norm(diff_community_bsppre_p300_random_n100_84, type="1") 
norm_2_community_bsppre_p300_random_n100_84 <- norm(diff_community_bsppre_p300_random_n100_84, type="2") 
norm_m_community_bsppre_p300_random_n100_84 <- norm(diff_community_bsppre_p300_random_n100_84, type="m") 

# i = 85
diff_community_bsppre_p300_random_n100_85 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_85
norm_f_community_bsppre_p300_random_n100_85 <- norm(diff_community_bsppre_p300_random_n100_85, type="f") 
norm_1_community_bsppre_p300_random_n100_85 <- norm(diff_community_bsppre_p300_random_n100_85, type="1") 
norm_2_community_bsppre_p300_random_n100_85 <- norm(diff_community_bsppre_p300_random_n100_85, type="2") 
norm_m_community_bsppre_p300_random_n100_85 <- norm(diff_community_bsppre_p300_random_n100_85, type="m") 

# i = 86
diff_community_bsppre_p300_random_n100_86 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_86
norm_f_community_bsppre_p300_random_n100_86 <- norm(diff_community_bsppre_p300_random_n100_86, type="f") 
norm_1_community_bsppre_p300_random_n100_86 <- norm(diff_community_bsppre_p300_random_n100_86, type="1") 
norm_2_community_bsppre_p300_random_n100_86 <- norm(diff_community_bsppre_p300_random_n100_86, type="2") 
norm_m_community_bsppre_p300_random_n100_86 <- norm(diff_community_bsppre_p300_random_n100_86, type="m") 

# i = 87
diff_community_bsppre_p300_random_n100_87 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_87
norm_f_community_bsppre_p300_random_n100_87 <- norm(diff_community_bsppre_p300_random_n100_87, type="f") 
norm_1_community_bsppre_p300_random_n100_87 <- norm(diff_community_bsppre_p300_random_n100_87, type="1") 
norm_2_community_bsppre_p300_random_n100_87 <- norm(diff_community_bsppre_p300_random_n100_87, type="2") 
norm_m_community_bsppre_p300_random_n100_87 <- norm(diff_community_bsppre_p300_random_n100_87, type="m") 

# i = 88
diff_community_bsppre_p300_random_n100_88 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_88
norm_f_community_bsppre_p300_random_n100_88 <- norm(diff_community_bsppre_p300_random_n100_88, type="f") 
norm_1_community_bsppre_p300_random_n100_88 <- norm(diff_community_bsppre_p300_random_n100_88, type="1") 
norm_2_community_bsppre_p300_random_n100_88 <- norm(diff_community_bsppre_p300_random_n100_88, type="2") 
norm_m_community_bsppre_p300_random_n100_88 <- norm(diff_community_bsppre_p300_random_n100_88, type="m") 

# i = 89
diff_community_bsppre_p300_random_n100_89 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_89
norm_f_community_bsppre_p300_random_n100_89 <- norm(diff_community_bsppre_p300_random_n100_89, type="f") 
norm_1_community_bsppre_p300_random_n100_89 <- norm(diff_community_bsppre_p300_random_n100_89, type="1") 
norm_2_community_bsppre_p300_random_n100_89 <- norm(diff_community_bsppre_p300_random_n100_89, type="2") 
norm_m_community_bsppre_p300_random_n100_89 <- norm(diff_community_bsppre_p300_random_n100_89, type="m") 

# i = 90
diff_community_bsppre_p300_random_n100_90 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_90
norm_f_community_bsppre_p300_random_n100_90 <- norm(diff_community_bsppre_p300_random_n100_90, type="f") 
norm_1_community_bsppre_p300_random_n100_90 <- norm(diff_community_bsppre_p300_random_n100_90, type="1") 
norm_2_community_bsppre_p300_random_n100_90 <- norm(diff_community_bsppre_p300_random_n100_90, type="2") 
norm_m_community_bsppre_p300_random_n100_90 <- norm(diff_community_bsppre_p300_random_n100_90, type="m") 

# i = 91
diff_community_bsppre_p300_random_n100_91 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_91
norm_f_community_bsppre_p300_random_n100_91 <- norm(diff_community_bsppre_p300_random_n100_91, type="f") 
norm_1_community_bsppre_p300_random_n100_91 <- norm(diff_community_bsppre_p300_random_n100_91, type="1") 
norm_2_community_bsppre_p300_random_n100_91 <- norm(diff_community_bsppre_p300_random_n100_91, type="2") 
norm_m_community_bsppre_p300_random_n100_91 <- norm(diff_community_bsppre_p300_random_n100_91, type="m") 

# i = 92
diff_community_bsppre_p300_random_n100_92 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_92
norm_f_community_bsppre_p300_random_n100_92 <- norm(diff_community_bsppre_p300_random_n100_92, type="f") 
norm_1_community_bsppre_p300_random_n100_92 <- norm(diff_community_bsppre_p300_random_n100_92, type="1") 
norm_2_community_bsppre_p300_random_n100_92 <- norm(diff_community_bsppre_p300_random_n100_92, type="2") 
norm_m_community_bsppre_p300_random_n100_92 <- norm(diff_community_bsppre_p300_random_n100_92, type="m") 

# i = 93
diff_community_bsppre_p300_random_n100_93 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_93
norm_f_community_bsppre_p300_random_n100_93 <- norm(diff_community_bsppre_p300_random_n100_93, type="f") 
norm_1_community_bsppre_p300_random_n100_93 <- norm(diff_community_bsppre_p300_random_n100_93, type="1") 
norm_2_community_bsppre_p300_random_n100_93 <- norm(diff_community_bsppre_p300_random_n100_93, type="2") 
norm_m_community_bsppre_p300_random_n100_93 <- norm(diff_community_bsppre_p300_random_n100_93, type="m") 

# i = 94
diff_community_bsppre_p300_random_n100_94 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_94
norm_f_community_bsppre_p300_random_n100_94 <- norm(diff_community_bsppre_p300_random_n100_94, type="f") 
norm_1_community_bsppre_p300_random_n100_94 <- norm(diff_community_bsppre_p300_random_n100_94, type="1") 
norm_2_community_bsppre_p300_random_n100_94 <- norm(diff_community_bsppre_p300_random_n100_94, type="2") 
norm_m_community_bsppre_p300_random_n100_94 <- norm(diff_community_bsppre_p300_random_n100_94, type="m") 

# i = 95
diff_community_bsppre_p300_random_n100_95 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_95
norm_f_community_bsppre_p300_random_n100_95 <- norm(diff_community_bsppre_p300_random_n100_95, type="f") 
norm_1_community_bsppre_p300_random_n100_95 <- norm(diff_community_bsppre_p300_random_n100_95, type="1") 
norm_2_community_bsppre_p300_random_n100_95 <- norm(diff_community_bsppre_p300_random_n100_95, type="2") 
norm_m_community_bsppre_p300_random_n100_95 <- norm(diff_community_bsppre_p300_random_n100_95, type="m") 

# i = 96
diff_community_bsppre_p300_random_n100_96 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_96
norm_f_community_bsppre_p300_random_n100_96 <- norm(diff_community_bsppre_p300_random_n100_96, type="f") 
norm_1_community_bsppre_p300_random_n100_96 <- norm(diff_community_bsppre_p300_random_n100_96, type="1") 
norm_2_community_bsppre_p300_random_n100_96 <- norm(diff_community_bsppre_p300_random_n100_96, type="2") 
norm_m_community_bsppre_p300_random_n100_96 <- norm(diff_community_bsppre_p300_random_n100_96, type="m") 

# i = 97
diff_community_bsppre_p300_random_n100_97 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_97
norm_f_community_bsppre_p300_random_n100_97 <- norm(diff_community_bsppre_p300_random_n100_97, type="f") 
norm_1_community_bsppre_p300_random_n100_97 <- norm(diff_community_bsppre_p300_random_n100_97, type="1") 
norm_2_community_bsppre_p300_random_n100_97 <- norm(diff_community_bsppre_p300_random_n100_97, type="2") 
norm_m_community_bsppre_p300_random_n100_97 <- norm(diff_community_bsppre_p300_random_n100_97, type="m") 

# i = 98
diff_community_bsppre_p300_random_n100_98 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_98
norm_f_community_bsppre_p300_random_n100_98 <- norm(diff_community_bsppre_p300_random_n100_98, type="f") 
norm_1_community_bsppre_p300_random_n100_98 <- norm(diff_community_bsppre_p300_random_n100_98, type="1") 
norm_2_community_bsppre_p300_random_n100_98 <- norm(diff_community_bsppre_p300_random_n100_98, type="2") 
norm_m_community_bsppre_p300_random_n100_98 <- norm(diff_community_bsppre_p300_random_n100_98, type="m") 

# i = 99
diff_community_bsppre_p300_random_n100_99 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_99
norm_f_community_bsppre_p300_random_n100_99 <- norm(diff_community_bsppre_p300_random_n100_99, type="f") 
norm_1_community_bsppre_p300_random_n100_99 <- norm(diff_community_bsppre_p300_random_n100_99, type="1") 
norm_2_community_bsppre_p300_random_n100_99 <- norm(diff_community_bsppre_p300_random_n100_99, type="2") 
norm_m_community_bsppre_p300_random_n100_99 <- norm(diff_community_bsppre_p300_random_n100_99, type="m") 

# i = 100
diff_community_bsppre_p300_random_n100_100 <- true_precision_p300_random - estimated_community_bsppre_p300_random_n100_100
norm_f_community_bsppre_p300_random_n100_100 <- norm(diff_community_bsppre_p300_random_n100_100, type="f") 
norm_1_community_bsppre_p300_random_n100_100 <- norm(diff_community_bsppre_p300_random_n100_100, type="1") 
norm_2_community_bsppre_p300_random_n100_100 <- norm(diff_community_bsppre_p300_random_n100_100, type="2") 
norm_m_community_bsppre_p300_random_n100_100 <- norm(diff_community_bsppre_p300_random_n100_100, type="m") 




##################################### Norm f #######################################
norm_f_community_bsppre_p300_random_n100 <- c(
  norm_f_community_bsppre_p300_random_n100_1, 
  norm_f_community_bsppre_p300_random_n100_2, 
  norm_f_community_bsppre_p300_random_n100_3, 
  norm_f_community_bsppre_p300_random_n100_4, 
  norm_f_community_bsppre_p300_random_n100_5, 
  norm_f_community_bsppre_p300_random_n100_6, 
  norm_f_community_bsppre_p300_random_n100_7, 
  norm_f_community_bsppre_p300_random_n100_8, 
  norm_f_community_bsppre_p300_random_n100_9, 
  norm_f_community_bsppre_p300_random_n100_10, 
  norm_f_community_bsppre_p300_random_n100_11, 
  norm_f_community_bsppre_p300_random_n100_12, 
  norm_f_community_bsppre_p300_random_n100_13, 
  norm_f_community_bsppre_p300_random_n100_14, 
  norm_f_community_bsppre_p300_random_n100_15, 
  norm_f_community_bsppre_p300_random_n100_16, 
  norm_f_community_bsppre_p300_random_n100_17, 
  norm_f_community_bsppre_p300_random_n100_18, 
  norm_f_community_bsppre_p300_random_n100_19, 
  norm_f_community_bsppre_p300_random_n100_20, 
  norm_f_community_bsppre_p300_random_n100_21, 
  norm_f_community_bsppre_p300_random_n100_22, 
  norm_f_community_bsppre_p300_random_n100_23, 
  norm_f_community_bsppre_p300_random_n100_24, 
  norm_f_community_bsppre_p300_random_n100_25, 
  norm_f_community_bsppre_p300_random_n100_26, 
  norm_f_community_bsppre_p300_random_n100_27, 
  norm_f_community_bsppre_p300_random_n100_28, 
  norm_f_community_bsppre_p300_random_n100_29, 
  norm_f_community_bsppre_p300_random_n100_30, 
  norm_f_community_bsppre_p300_random_n100_31, 
  norm_f_community_bsppre_p300_random_n100_32, 
  norm_f_community_bsppre_p300_random_n100_33, 
  norm_f_community_bsppre_p300_random_n100_34, 
  norm_f_community_bsppre_p300_random_n100_35, 
  norm_f_community_bsppre_p300_random_n100_36, 
  norm_f_community_bsppre_p300_random_n100_37, 
  norm_f_community_bsppre_p300_random_n100_38, 
  norm_f_community_bsppre_p300_random_n100_39, 
  norm_f_community_bsppre_p300_random_n100_40, 
  norm_f_community_bsppre_p300_random_n100_41, 
  norm_f_community_bsppre_p300_random_n100_42, 
  norm_f_community_bsppre_p300_random_n100_43, 
  norm_f_community_bsppre_p300_random_n100_44, 
  norm_f_community_bsppre_p300_random_n100_45, 
  norm_f_community_bsppre_p300_random_n100_46, 
  norm_f_community_bsppre_p300_random_n100_47, 
  norm_f_community_bsppre_p300_random_n100_48, 
  norm_f_community_bsppre_p300_random_n100_49, 
  norm_f_community_bsppre_p300_random_n100_50, 
  norm_f_community_bsppre_p300_random_n100_51, 
  norm_f_community_bsppre_p300_random_n100_52, 
  norm_f_community_bsppre_p300_random_n100_53, 
  norm_f_community_bsppre_p300_random_n100_54, 
  norm_f_community_bsppre_p300_random_n100_55, 
  norm_f_community_bsppre_p300_random_n100_56, 
  norm_f_community_bsppre_p300_random_n100_57, 
  norm_f_community_bsppre_p300_random_n100_58, 
  norm_f_community_bsppre_p300_random_n100_59, 
  norm_f_community_bsppre_p300_random_n100_60, 
  norm_f_community_bsppre_p300_random_n100_61, 
  norm_f_community_bsppre_p300_random_n100_62, 
  norm_f_community_bsppre_p300_random_n100_63, 
  norm_f_community_bsppre_p300_random_n100_64, 
  norm_f_community_bsppre_p300_random_n100_65, 
  norm_f_community_bsppre_p300_random_n100_66, 
  norm_f_community_bsppre_p300_random_n100_67, 
  norm_f_community_bsppre_p300_random_n100_68, 
  norm_f_community_bsppre_p300_random_n100_69, 
  norm_f_community_bsppre_p300_random_n100_70, 
  norm_f_community_bsppre_p300_random_n100_71, 
  norm_f_community_bsppre_p300_random_n100_72, 
  norm_f_community_bsppre_p300_random_n100_73, 
  norm_f_community_bsppre_p300_random_n100_74, 
  norm_f_community_bsppre_p300_random_n100_75, 
  norm_f_community_bsppre_p300_random_n100_76, 
  norm_f_community_bsppre_p300_random_n100_77, 
  norm_f_community_bsppre_p300_random_n100_78, 
  norm_f_community_bsppre_p300_random_n100_79, 
  norm_f_community_bsppre_p300_random_n100_80, 
  norm_f_community_bsppre_p300_random_n100_81, 
  norm_f_community_bsppre_p300_random_n100_82, 
  norm_f_community_bsppre_p300_random_n100_83, 
  norm_f_community_bsppre_p300_random_n100_84, 
  norm_f_community_bsppre_p300_random_n100_85, 
  norm_f_community_bsppre_p300_random_n100_86, 
  norm_f_community_bsppre_p300_random_n100_87, 
  norm_f_community_bsppre_p300_random_n100_88, 
  norm_f_community_bsppre_p300_random_n100_89, 
  norm_f_community_bsppre_p300_random_n100_90, 
  norm_f_community_bsppre_p300_random_n100_91, 
  norm_f_community_bsppre_p300_random_n100_92, 
  norm_f_community_bsppre_p300_random_n100_93, 
  norm_f_community_bsppre_p300_random_n100_94, 
  norm_f_community_bsppre_p300_random_n100_95, 
  norm_f_community_bsppre_p300_random_n100_96, 
  norm_f_community_bsppre_p300_random_n100_97, 
  norm_f_community_bsppre_p300_random_n100_98, 
  norm_f_community_bsppre_p300_random_n100_99, 
  norm_f_community_bsppre_p300_random_n100_100
)


mean_norm_f_community_bsppre_p300_random_n100 <- mean(norm_f_community_bsppre_p300_random_n100)
sd_norm_f_community_bsppre_p300_random_n100 <- sd(norm_f_community_bsppre_p300_random_n100)



##################################### Norm 1 #######################################
norm_1_community_bsppre_p300_random_n100 <- c(
  norm_1_community_bsppre_p300_random_n100_1, 
  norm_1_community_bsppre_p300_random_n100_2, 
  norm_1_community_bsppre_p300_random_n100_3, 
  norm_1_community_bsppre_p300_random_n100_4, 
  norm_1_community_bsppre_p300_random_n100_5, 
  norm_1_community_bsppre_p300_random_n100_6, 
  norm_1_community_bsppre_p300_random_n100_7, 
  norm_1_community_bsppre_p300_random_n100_8, 
  norm_1_community_bsppre_p300_random_n100_9, 
  norm_1_community_bsppre_p300_random_n100_10, 
  norm_1_community_bsppre_p300_random_n100_11, 
  norm_1_community_bsppre_p300_random_n100_12, 
  norm_1_community_bsppre_p300_random_n100_13, 
  norm_1_community_bsppre_p300_random_n100_14, 
  norm_1_community_bsppre_p300_random_n100_15, 
  norm_1_community_bsppre_p300_random_n100_16, 
  norm_1_community_bsppre_p300_random_n100_17, 
  norm_1_community_bsppre_p300_random_n100_18, 
  norm_1_community_bsppre_p300_random_n100_19, 
  norm_1_community_bsppre_p300_random_n100_20, 
  norm_1_community_bsppre_p300_random_n100_21, 
  norm_1_community_bsppre_p300_random_n100_22, 
  norm_1_community_bsppre_p300_random_n100_23, 
  norm_1_community_bsppre_p300_random_n100_24, 
  norm_1_community_bsppre_p300_random_n100_25, 
  norm_1_community_bsppre_p300_random_n100_26, 
  norm_1_community_bsppre_p300_random_n100_27, 
  norm_1_community_bsppre_p300_random_n100_28, 
  norm_1_community_bsppre_p300_random_n100_29, 
  norm_1_community_bsppre_p300_random_n100_30, 
  norm_1_community_bsppre_p300_random_n100_31, 
  norm_1_community_bsppre_p300_random_n100_32, 
  norm_1_community_bsppre_p300_random_n100_33, 
  norm_1_community_bsppre_p300_random_n100_34, 
  norm_1_community_bsppre_p300_random_n100_35, 
  norm_1_community_bsppre_p300_random_n100_36, 
  norm_1_community_bsppre_p300_random_n100_37, 
  norm_1_community_bsppre_p300_random_n100_38, 
  norm_1_community_bsppre_p300_random_n100_39, 
  norm_1_community_bsppre_p300_random_n100_40, 
  norm_1_community_bsppre_p300_random_n100_41, 
  norm_1_community_bsppre_p300_random_n100_42, 
  norm_1_community_bsppre_p300_random_n100_43, 
  norm_1_community_bsppre_p300_random_n100_44, 
  norm_1_community_bsppre_p300_random_n100_45, 
  norm_1_community_bsppre_p300_random_n100_46, 
  norm_1_community_bsppre_p300_random_n100_47, 
  norm_1_community_bsppre_p300_random_n100_48, 
  norm_1_community_bsppre_p300_random_n100_49, 
  norm_1_community_bsppre_p300_random_n100_50, 
  norm_1_community_bsppre_p300_random_n100_51, 
  norm_1_community_bsppre_p300_random_n100_52, 
  norm_1_community_bsppre_p300_random_n100_53, 
  norm_1_community_bsppre_p300_random_n100_54, 
  norm_1_community_bsppre_p300_random_n100_55, 
  norm_1_community_bsppre_p300_random_n100_56, 
  norm_1_community_bsppre_p300_random_n100_57, 
  norm_1_community_bsppre_p300_random_n100_58, 
  norm_1_community_bsppre_p300_random_n100_59, 
  norm_1_community_bsppre_p300_random_n100_60, 
  norm_1_community_bsppre_p300_random_n100_61, 
  norm_1_community_bsppre_p300_random_n100_62, 
  norm_1_community_bsppre_p300_random_n100_63, 
  norm_1_community_bsppre_p300_random_n100_64, 
  norm_1_community_bsppre_p300_random_n100_65, 
  norm_1_community_bsppre_p300_random_n100_66, 
  norm_1_community_bsppre_p300_random_n100_67, 
  norm_1_community_bsppre_p300_random_n100_68, 
  norm_1_community_bsppre_p300_random_n100_69, 
  norm_1_community_bsppre_p300_random_n100_70, 
  norm_1_community_bsppre_p300_random_n100_71, 
  norm_1_community_bsppre_p300_random_n100_72, 
  norm_1_community_bsppre_p300_random_n100_73, 
  norm_1_community_bsppre_p300_random_n100_74, 
  norm_1_community_bsppre_p300_random_n100_75, 
  norm_1_community_bsppre_p300_random_n100_76, 
  norm_1_community_bsppre_p300_random_n100_77, 
  norm_1_community_bsppre_p300_random_n100_78, 
  norm_1_community_bsppre_p300_random_n100_79, 
  norm_1_community_bsppre_p300_random_n100_80, 
  norm_1_community_bsppre_p300_random_n100_81, 
  norm_1_community_bsppre_p300_random_n100_82, 
  norm_1_community_bsppre_p300_random_n100_83, 
  norm_1_community_bsppre_p300_random_n100_84, 
  norm_1_community_bsppre_p300_random_n100_85, 
  norm_1_community_bsppre_p300_random_n100_86, 
  norm_1_community_bsppre_p300_random_n100_87, 
  norm_1_community_bsppre_p300_random_n100_88, 
  norm_1_community_bsppre_p300_random_n100_89, 
  norm_1_community_bsppre_p300_random_n100_90, 
  norm_1_community_bsppre_p300_random_n100_91, 
  norm_1_community_bsppre_p300_random_n100_92, 
  norm_1_community_bsppre_p300_random_n100_93, 
  norm_1_community_bsppre_p300_random_n100_94, 
  norm_1_community_bsppre_p300_random_n100_95, 
  norm_1_community_bsppre_p300_random_n100_96, 
  norm_1_community_bsppre_p300_random_n100_97, 
  norm_1_community_bsppre_p300_random_n100_98, 
  norm_1_community_bsppre_p300_random_n100_99, 
  norm_1_community_bsppre_p300_random_n100_100
)


mean_norm_1_community_bsppre_p300_random_n100 <- mean(norm_1_community_bsppre_p300_random_n100)
sd_norm_1_community_bsppre_p300_random_n100 <- sd(norm_1_community_bsppre_p300_random_n100)



##################################### Norm 2 #######################################
norm_2_community_bsppre_p300_random_n100 <- c(
  norm_2_community_bsppre_p300_random_n100_1, 
  norm_2_community_bsppre_p300_random_n100_2, 
  norm_2_community_bsppre_p300_random_n100_3, 
  norm_2_community_bsppre_p300_random_n100_4, 
  norm_2_community_bsppre_p300_random_n100_5, 
  norm_2_community_bsppre_p300_random_n100_6, 
  norm_2_community_bsppre_p300_random_n100_7, 
  norm_2_community_bsppre_p300_random_n100_8, 
  norm_2_community_bsppre_p300_random_n100_9, 
  norm_2_community_bsppre_p300_random_n100_10, 
  norm_2_community_bsppre_p300_random_n100_11, 
  norm_2_community_bsppre_p300_random_n100_12, 
  norm_2_community_bsppre_p300_random_n100_13, 
  norm_2_community_bsppre_p300_random_n100_14, 
  norm_2_community_bsppre_p300_random_n100_15, 
  norm_2_community_bsppre_p300_random_n100_16, 
  norm_2_community_bsppre_p300_random_n100_17, 
  norm_2_community_bsppre_p300_random_n100_18, 
  norm_2_community_bsppre_p300_random_n100_19, 
  norm_2_community_bsppre_p300_random_n100_20, 
  norm_2_community_bsppre_p300_random_n100_21, 
  norm_2_community_bsppre_p300_random_n100_22, 
  norm_2_community_bsppre_p300_random_n100_23, 
  norm_2_community_bsppre_p300_random_n100_24, 
  norm_2_community_bsppre_p300_random_n100_25, 
  norm_2_community_bsppre_p300_random_n100_26, 
  norm_2_community_bsppre_p300_random_n100_27, 
  norm_2_community_bsppre_p300_random_n100_28, 
  norm_2_community_bsppre_p300_random_n100_29, 
  norm_2_community_bsppre_p300_random_n100_30, 
  norm_2_community_bsppre_p300_random_n100_31, 
  norm_2_community_bsppre_p300_random_n100_32, 
  norm_2_community_bsppre_p300_random_n100_33, 
  norm_2_community_bsppre_p300_random_n100_34, 
  norm_2_community_bsppre_p300_random_n100_35, 
  norm_2_community_bsppre_p300_random_n100_36, 
  norm_2_community_bsppre_p300_random_n100_37, 
  norm_2_community_bsppre_p300_random_n100_38, 
  norm_2_community_bsppre_p300_random_n100_39, 
  norm_2_community_bsppre_p300_random_n100_40, 
  norm_2_community_bsppre_p300_random_n100_41, 
  norm_2_community_bsppre_p300_random_n100_42, 
  norm_2_community_bsppre_p300_random_n100_43, 
  norm_2_community_bsppre_p300_random_n100_44, 
  norm_2_community_bsppre_p300_random_n100_45, 
  norm_2_community_bsppre_p300_random_n100_46, 
  norm_2_community_bsppre_p300_random_n100_47, 
  norm_2_community_bsppre_p300_random_n100_48, 
  norm_2_community_bsppre_p300_random_n100_49, 
  norm_2_community_bsppre_p300_random_n100_50, 
  norm_2_community_bsppre_p300_random_n100_51, 
  norm_2_community_bsppre_p300_random_n100_52, 
  norm_2_community_bsppre_p300_random_n100_53, 
  norm_2_community_bsppre_p300_random_n100_54, 
  norm_2_community_bsppre_p300_random_n100_55, 
  norm_2_community_bsppre_p300_random_n100_56, 
  norm_2_community_bsppre_p300_random_n100_57, 
  norm_2_community_bsppre_p300_random_n100_58, 
  norm_2_community_bsppre_p300_random_n100_59, 
  norm_2_community_bsppre_p300_random_n100_60, 
  norm_2_community_bsppre_p300_random_n100_61, 
  norm_2_community_bsppre_p300_random_n100_62, 
  norm_2_community_bsppre_p300_random_n100_63, 
  norm_2_community_bsppre_p300_random_n100_64, 
  norm_2_community_bsppre_p300_random_n100_65, 
  norm_2_community_bsppre_p300_random_n100_66, 
  norm_2_community_bsppre_p300_random_n100_67, 
  norm_2_community_bsppre_p300_random_n100_68, 
  norm_2_community_bsppre_p300_random_n100_69, 
  norm_2_community_bsppre_p300_random_n100_70, 
  norm_2_community_bsppre_p300_random_n100_71, 
  norm_2_community_bsppre_p300_random_n100_72, 
  norm_2_community_bsppre_p300_random_n100_73, 
  norm_2_community_bsppre_p300_random_n100_74, 
  norm_2_community_bsppre_p300_random_n100_75, 
  norm_2_community_bsppre_p300_random_n100_76, 
  norm_2_community_bsppre_p300_random_n100_77, 
  norm_2_community_bsppre_p300_random_n100_78, 
  norm_2_community_bsppre_p300_random_n100_79, 
  norm_2_community_bsppre_p300_random_n100_80, 
  norm_2_community_bsppre_p300_random_n100_81, 
  norm_2_community_bsppre_p300_random_n100_82, 
  norm_2_community_bsppre_p300_random_n100_83, 
  norm_2_community_bsppre_p300_random_n100_84, 
  norm_2_community_bsppre_p300_random_n100_85, 
  norm_2_community_bsppre_p300_random_n100_86, 
  norm_2_community_bsppre_p300_random_n100_87, 
  norm_2_community_bsppre_p300_random_n100_88, 
  norm_2_community_bsppre_p300_random_n100_89, 
  norm_2_community_bsppre_p300_random_n100_90, 
  norm_2_community_bsppre_p300_random_n100_91, 
  norm_2_community_bsppre_p300_random_n100_92, 
  norm_2_community_bsppre_p300_random_n100_93, 
  norm_2_community_bsppre_p300_random_n100_94, 
  norm_2_community_bsppre_p300_random_n100_95, 
  norm_2_community_bsppre_p300_random_n100_96, 
  norm_2_community_bsppre_p300_random_n100_97, 
  norm_2_community_bsppre_p300_random_n100_98, 
  norm_2_community_bsppre_p300_random_n100_99, 
  norm_2_community_bsppre_p300_random_n100_100
)


mean_norm_2_community_bsppre_p300_random_n100 <- mean(norm_2_community_bsppre_p300_random_n100)
sd_norm_2_community_bsppre_p300_random_n100 <- sd(norm_2_community_bsppre_p300_random_n100)


##################################### Norm m #######################################
norm_m_community_bsppre_p300_random_n100 <- c(
  norm_m_community_bsppre_p300_random_n100_1, 
  norm_m_community_bsppre_p300_random_n100_2, 
  norm_m_community_bsppre_p300_random_n100_3, 
  norm_m_community_bsppre_p300_random_n100_4, 
  norm_m_community_bsppre_p300_random_n100_5, 
  norm_m_community_bsppre_p300_random_n100_6, 
  norm_m_community_bsppre_p300_random_n100_7, 
  norm_m_community_bsppre_p300_random_n100_8, 
  norm_m_community_bsppre_p300_random_n100_9, 
  norm_m_community_bsppre_p300_random_n100_10, 
  norm_m_community_bsppre_p300_random_n100_11, 
  norm_m_community_bsppre_p300_random_n100_12, 
  norm_m_community_bsppre_p300_random_n100_13, 
  norm_m_community_bsppre_p300_random_n100_14, 
  norm_m_community_bsppre_p300_random_n100_15, 
  norm_m_community_bsppre_p300_random_n100_16, 
  norm_m_community_bsppre_p300_random_n100_17, 
  norm_m_community_bsppre_p300_random_n100_18, 
  norm_m_community_bsppre_p300_random_n100_19, 
  norm_m_community_bsppre_p300_random_n100_20, 
  norm_m_community_bsppre_p300_random_n100_21, 
  norm_m_community_bsppre_p300_random_n100_22, 
  norm_m_community_bsppre_p300_random_n100_23, 
  norm_m_community_bsppre_p300_random_n100_24, 
  norm_m_community_bsppre_p300_random_n100_25, 
  norm_m_community_bsppre_p300_random_n100_26, 
  norm_m_community_bsppre_p300_random_n100_27, 
  norm_m_community_bsppre_p300_random_n100_28, 
  norm_m_community_bsppre_p300_random_n100_29, 
  norm_m_community_bsppre_p300_random_n100_30, 
  norm_m_community_bsppre_p300_random_n100_31, 
  norm_m_community_bsppre_p300_random_n100_32, 
  norm_m_community_bsppre_p300_random_n100_33, 
  norm_m_community_bsppre_p300_random_n100_34, 
  norm_m_community_bsppre_p300_random_n100_35, 
  norm_m_community_bsppre_p300_random_n100_36, 
  norm_m_community_bsppre_p300_random_n100_37, 
  norm_m_community_bsppre_p300_random_n100_38, 
  norm_m_community_bsppre_p300_random_n100_39, 
  norm_m_community_bsppre_p300_random_n100_40, 
  norm_m_community_bsppre_p300_random_n100_41, 
  norm_m_community_bsppre_p300_random_n100_42, 
  norm_m_community_bsppre_p300_random_n100_43, 
  norm_m_community_bsppre_p300_random_n100_44, 
  norm_m_community_bsppre_p300_random_n100_45, 
  norm_m_community_bsppre_p300_random_n100_46, 
  norm_m_community_bsppre_p300_random_n100_47, 
  norm_m_community_bsppre_p300_random_n100_48, 
  norm_m_community_bsppre_p300_random_n100_49, 
  norm_m_community_bsppre_p300_random_n100_50, 
  norm_m_community_bsppre_p300_random_n100_51, 
  norm_m_community_bsppre_p300_random_n100_52, 
  norm_m_community_bsppre_p300_random_n100_53, 
  norm_m_community_bsppre_p300_random_n100_54, 
  norm_m_community_bsppre_p300_random_n100_55, 
  norm_m_community_bsppre_p300_random_n100_56, 
  norm_m_community_bsppre_p300_random_n100_57, 
  norm_m_community_bsppre_p300_random_n100_58, 
  norm_m_community_bsppre_p300_random_n100_59, 
  norm_m_community_bsppre_p300_random_n100_60, 
  norm_m_community_bsppre_p300_random_n100_61, 
  norm_m_community_bsppre_p300_random_n100_62, 
  norm_m_community_bsppre_p300_random_n100_63, 
  norm_m_community_bsppre_p300_random_n100_64, 
  norm_m_community_bsppre_p300_random_n100_65, 
  norm_m_community_bsppre_p300_random_n100_66, 
  norm_m_community_bsppre_p300_random_n100_67, 
  norm_m_community_bsppre_p300_random_n100_68, 
  norm_m_community_bsppre_p300_random_n100_69, 
  norm_m_community_bsppre_p300_random_n100_70, 
  norm_m_community_bsppre_p300_random_n100_71, 
  norm_m_community_bsppre_p300_random_n100_72, 
  norm_m_community_bsppre_p300_random_n100_73, 
  norm_m_community_bsppre_p300_random_n100_74, 
  norm_m_community_bsppre_p300_random_n100_75, 
  norm_m_community_bsppre_p300_random_n100_76, 
  norm_m_community_bsppre_p300_random_n100_77, 
  norm_m_community_bsppre_p300_random_n100_78, 
  norm_m_community_bsppre_p300_random_n100_79, 
  norm_m_community_bsppre_p300_random_n100_80, 
  norm_m_community_bsppre_p300_random_n100_81, 
  norm_m_community_bsppre_p300_random_n100_82, 
  norm_m_community_bsppre_p300_random_n100_83, 
  norm_m_community_bsppre_p300_random_n100_84, 
  norm_m_community_bsppre_p300_random_n100_85, 
  norm_m_community_bsppre_p300_random_n100_86, 
  norm_m_community_bsppre_p300_random_n100_87, 
  norm_m_community_bsppre_p300_random_n100_88, 
  norm_m_community_bsppre_p300_random_n100_89, 
  norm_m_community_bsppre_p300_random_n100_90, 
  norm_m_community_bsppre_p300_random_n100_91, 
  norm_m_community_bsppre_p300_random_n100_92, 
  norm_m_community_bsppre_p300_random_n100_93, 
  norm_m_community_bsppre_p300_random_n100_94, 
  norm_m_community_bsppre_p300_random_n100_95, 
  norm_m_community_bsppre_p300_random_n100_96, 
  norm_m_community_bsppre_p300_random_n100_97, 
  norm_m_community_bsppre_p300_random_n100_98, 
  norm_m_community_bsppre_p300_random_n100_99, 
  norm_m_community_bsppre_p300_random_n100_100
)

mean_norm_m_community_bsppre_p300_random_n100 <- mean(norm_m_community_bsppre_p300_random_n100)
sd_norm_m_community_bsppre_p300_random_n100 <- sd(norm_m_community_bsppre_p300_random_n100)



##################################### Time #######################################
time_community_bsppre_p300_random_n100 <- c(
  result_community_bsppre_p300_random_n100_1$time["elapsed"], 
  result_community_bsppre_p300_random_n100_2$time["elapsed"], 
  result_community_bsppre_p300_random_n100_3$time["elapsed"], 
  result_community_bsppre_p300_random_n100_4$time["elapsed"], 
  result_community_bsppre_p300_random_n100_5$time["elapsed"], 
  result_community_bsppre_p300_random_n100_6$time["elapsed"], 
  result_community_bsppre_p300_random_n100_7$time["elapsed"], 
  result_community_bsppre_p300_random_n100_8$time["elapsed"], 
  result_community_bsppre_p300_random_n100_9$time["elapsed"], 
  result_community_bsppre_p300_random_n100_10$time["elapsed"], 
  result_community_bsppre_p300_random_n100_11$time["elapsed"], 
  result_community_bsppre_p300_random_n100_12$time["elapsed"], 
  result_community_bsppre_p300_random_n100_13$time["elapsed"], 
  result_community_bsppre_p300_random_n100_14$time["elapsed"], 
  result_community_bsppre_p300_random_n100_15$time["elapsed"], 
  result_community_bsppre_p300_random_n100_16$time["elapsed"], 
  result_community_bsppre_p300_random_n100_17$time["elapsed"], 
  result_community_bsppre_p300_random_n100_18$time["elapsed"], 
  result_community_bsppre_p300_random_n100_19$time["elapsed"], 
  result_community_bsppre_p300_random_n100_20$time["elapsed"], 
  result_community_bsppre_p300_random_n100_21$time["elapsed"], 
  result_community_bsppre_p300_random_n100_22$time["elapsed"], 
  result_community_bsppre_p300_random_n100_23$time["elapsed"], 
  result_community_bsppre_p300_random_n100_24$time["elapsed"], 
  result_community_bsppre_p300_random_n100_25$time["elapsed"], 
  result_community_bsppre_p300_random_n100_26$time["elapsed"], 
  result_community_bsppre_p300_random_n100_27$time["elapsed"], 
  result_community_bsppre_p300_random_n100_28$time["elapsed"], 
  result_community_bsppre_p300_random_n100_29$time["elapsed"], 
  result_community_bsppre_p300_random_n100_30$time["elapsed"], 
  result_community_bsppre_p300_random_n100_31$time["elapsed"], 
  result_community_bsppre_p300_random_n100_32$time["elapsed"], 
  result_community_bsppre_p300_random_n100_33$time["elapsed"], 
  result_community_bsppre_p300_random_n100_34$time["elapsed"], 
  result_community_bsppre_p300_random_n100_35$time["elapsed"], 
  result_community_bsppre_p300_random_n100_36$time["elapsed"], 
  result_community_bsppre_p300_random_n100_37$time["elapsed"], 
  result_community_bsppre_p300_random_n100_38$time["elapsed"], 
  result_community_bsppre_p300_random_n100_39$time["elapsed"], 
  result_community_bsppre_p300_random_n100_40$time["elapsed"], 
  result_community_bsppre_p300_random_n100_41$time["elapsed"], 
  result_community_bsppre_p300_random_n100_42$time["elapsed"], 
  result_community_bsppre_p300_random_n100_43$time["elapsed"], 
  result_community_bsppre_p300_random_n100_44$time["elapsed"], 
  result_community_bsppre_p300_random_n100_45$time["elapsed"], 
  result_community_bsppre_p300_random_n100_46$time["elapsed"], 
  result_community_bsppre_p300_random_n100_47$time["elapsed"], 
  result_community_bsppre_p300_random_n100_48$time["elapsed"], 
  result_community_bsppre_p300_random_n100_49$time["elapsed"], 
  result_community_bsppre_p300_random_n100_50$time["elapsed"], 
  result_community_bsppre_p300_random_n100_51$time["elapsed"], 
  result_community_bsppre_p300_random_n100_52$time["elapsed"], 
  result_community_bsppre_p300_random_n100_53$time["elapsed"], 
  result_community_bsppre_p300_random_n100_54$time["elapsed"], 
  result_community_bsppre_p300_random_n100_55$time["elapsed"], 
  result_community_bsppre_p300_random_n100_56$time["elapsed"], 
  result_community_bsppre_p300_random_n100_57$time["elapsed"], 
  result_community_bsppre_p300_random_n100_58$time["elapsed"], 
  result_community_bsppre_p300_random_n100_59$time["elapsed"], 
  result_community_bsppre_p300_random_n100_60$time["elapsed"], 
  result_community_bsppre_p300_random_n100_61$time["elapsed"], 
  result_community_bsppre_p300_random_n100_62$time["elapsed"], 
  result_community_bsppre_p300_random_n100_63$time["elapsed"], 
  result_community_bsppre_p300_random_n100_64$time["elapsed"], 
  result_community_bsppre_p300_random_n100_65$time["elapsed"], 
  result_community_bsppre_p300_random_n100_66$time["elapsed"], 
  result_community_bsppre_p300_random_n100_67$time["elapsed"], 
  result_community_bsppre_p300_random_n100_68$time["elapsed"], 
  result_community_bsppre_p300_random_n100_69$time["elapsed"], 
  result_community_bsppre_p300_random_n100_70$time["elapsed"], 
  result_community_bsppre_p300_random_n100_71$time["elapsed"], 
  result_community_bsppre_p300_random_n100_72$time["elapsed"], 
  result_community_bsppre_p300_random_n100_73$time["elapsed"], 
  result_community_bsppre_p300_random_n100_74$time["elapsed"], 
  result_community_bsppre_p300_random_n100_75$time["elapsed"], 
  result_community_bsppre_p300_random_n100_76$time["elapsed"], 
  result_community_bsppre_p300_random_n100_77$time["elapsed"], 
  result_community_bsppre_p300_random_n100_78$time["elapsed"], 
  result_community_bsppre_p300_random_n100_79$time["elapsed"], 
  result_community_bsppre_p300_random_n100_80$time["elapsed"], 
  result_community_bsppre_p300_random_n100_81$time["elapsed"], 
  result_community_bsppre_p300_random_n100_82$time["elapsed"], 
  result_community_bsppre_p300_random_n100_83$time["elapsed"], 
  result_community_bsppre_p300_random_n100_84$time["elapsed"], 
  result_community_bsppre_p300_random_n100_85$time["elapsed"], 
  result_community_bsppre_p300_random_n100_86$time["elapsed"], 
  result_community_bsppre_p300_random_n100_87$time["elapsed"], 
  result_community_bsppre_p300_random_n100_88$time["elapsed"], 
  result_community_bsppre_p300_random_n100_89$time["elapsed"], 
  result_community_bsppre_p300_random_n100_90$time["elapsed"], 
  result_community_bsppre_p300_random_n100_91$time["elapsed"], 
  result_community_bsppre_p300_random_n100_92$time["elapsed"], 
  result_community_bsppre_p300_random_n100_93$time["elapsed"], 
  result_community_bsppre_p300_random_n100_94$time["elapsed"], 
  result_community_bsppre_p300_random_n100_95$time["elapsed"], 
  result_community_bsppre_p300_random_n100_96$time["elapsed"], 
  result_community_bsppre_p300_random_n100_97$time["elapsed"], 
  result_community_bsppre_p300_random_n100_98$time["elapsed"], 
  result_community_bsppre_p300_random_n100_99$time["elapsed"], 
  result_community_bsppre_p300_random_n100_100$time["elapsed"]
)


mean_time_community_bsppre_p300_random_n100 <- mean(time_community_bsppre_p300_random_n100)





##########################################################
################## Graphical Lasso #######################
##########################################################
# i = 1
diff_g.lasso_p300_random_n100_1 <- true_precision_p300_random - g.lasso_p300_random_n100_1
norm_f_g.lasso_p300_random_n100_1 <- norm(diff_g.lasso_p300_random_n100_1, type="f") 
norm_1_g.lasso_p300_random_n100_1 <- norm(diff_g.lasso_p300_random_n100_1, type="1") 
norm_2_g.lasso_p300_random_n100_1 <- norm(diff_g.lasso_p300_random_n100_1, type="2") 
norm_m_g.lasso_p300_random_n100_1 <- norm(diff_g.lasso_p300_random_n100_1, type="m") 

# i = 2
diff_g.lasso_p300_random_n100_2 <- true_precision_p300_random - g.lasso_p300_random_n100_2
norm_f_g.lasso_p300_random_n100_2 <- norm(diff_g.lasso_p300_random_n100_2, type="f") 
norm_1_g.lasso_p300_random_n100_2 <- norm(diff_g.lasso_p300_random_n100_2, type="1") 
norm_2_g.lasso_p300_random_n100_2 <- norm(diff_g.lasso_p300_random_n100_2, type="2") 
norm_m_g.lasso_p300_random_n100_2 <- norm(diff_g.lasso_p300_random_n100_2, type="m") 

# i = 3
diff_g.lasso_p300_random_n100_3 <- true_precision_p300_random - g.lasso_p300_random_n100_3
norm_f_g.lasso_p300_random_n100_3 <- norm(diff_g.lasso_p300_random_n100_3, type="f") 
norm_1_g.lasso_p300_random_n100_3 <- norm(diff_g.lasso_p300_random_n100_3, type="1") 
norm_2_g.lasso_p300_random_n100_3 <- norm(diff_g.lasso_p300_random_n100_3, type="2") 
norm_m_g.lasso_p300_random_n100_3 <- norm(diff_g.lasso_p300_random_n100_3, type="m") 

# i = 4
diff_g.lasso_p300_random_n100_4 <- true_precision_p300_random - g.lasso_p300_random_n100_4
norm_f_g.lasso_p300_random_n100_4 <- norm(diff_g.lasso_p300_random_n100_4, type="f") 
norm_1_g.lasso_p300_random_n100_4 <- norm(diff_g.lasso_p300_random_n100_4, type="1") 
norm_2_g.lasso_p300_random_n100_4 <- norm(diff_g.lasso_p300_random_n100_4, type="2") 
norm_m_g.lasso_p300_random_n100_4 <- norm(diff_g.lasso_p300_random_n100_4, type="m") 

# i = 5
diff_g.lasso_p300_random_n100_5 <- true_precision_p300_random - g.lasso_p300_random_n100_5
norm_f_g.lasso_p300_random_n100_5 <- norm(diff_g.lasso_p300_random_n100_5, type="f") 
norm_1_g.lasso_p300_random_n100_5 <- norm(diff_g.lasso_p300_random_n100_5, type="1") 
norm_2_g.lasso_p300_random_n100_5 <- norm(diff_g.lasso_p300_random_n100_5, type="2") 
norm_m_g.lasso_p300_random_n100_5 <- norm(diff_g.lasso_p300_random_n100_5, type="m") 

# i = 6
diff_g.lasso_p300_random_n100_6 <- true_precision_p300_random - g.lasso_p300_random_n100_6
norm_f_g.lasso_p300_random_n100_6 <- norm(diff_g.lasso_p300_random_n100_6, type="f") 
norm_1_g.lasso_p300_random_n100_6 <- norm(diff_g.lasso_p300_random_n100_6, type="1") 
norm_2_g.lasso_p300_random_n100_6 <- norm(diff_g.lasso_p300_random_n100_6, type="2") 
norm_m_g.lasso_p300_random_n100_6 <- norm(diff_g.lasso_p300_random_n100_6, type="m") 

# i = 7
diff_g.lasso_p300_random_n100_7 <- true_precision_p300_random - g.lasso_p300_random_n100_7
norm_f_g.lasso_p300_random_n100_7 <- norm(diff_g.lasso_p300_random_n100_7, type="f") 
norm_1_g.lasso_p300_random_n100_7 <- norm(diff_g.lasso_p300_random_n100_7, type="1") 
norm_2_g.lasso_p300_random_n100_7 <- norm(diff_g.lasso_p300_random_n100_7, type="2") 
norm_m_g.lasso_p300_random_n100_7 <- norm(diff_g.lasso_p300_random_n100_7, type="m") 

# i = 8
diff_g.lasso_p300_random_n100_8 <- true_precision_p300_random - g.lasso_p300_random_n100_8
norm_f_g.lasso_p300_random_n100_8 <- norm(diff_g.lasso_p300_random_n100_8, type="f") 
norm_1_g.lasso_p300_random_n100_8 <- norm(diff_g.lasso_p300_random_n100_8, type="1") 
norm_2_g.lasso_p300_random_n100_8 <- norm(diff_g.lasso_p300_random_n100_8, type="2") 
norm_m_g.lasso_p300_random_n100_8 <- norm(diff_g.lasso_p300_random_n100_8, type="m") 

# i = 9
diff_g.lasso_p300_random_n100_9 <- true_precision_p300_random - g.lasso_p300_random_n100_9
norm_f_g.lasso_p300_random_n100_9 <- norm(diff_g.lasso_p300_random_n100_9, type="f") 
norm_1_g.lasso_p300_random_n100_9 <- norm(diff_g.lasso_p300_random_n100_9, type="1") 
norm_2_g.lasso_p300_random_n100_9 <- norm(diff_g.lasso_p300_random_n100_9, type="2") 
norm_m_g.lasso_p300_random_n100_9 <- norm(diff_g.lasso_p300_random_n100_9, type="m") 

# i = 10
diff_g.lasso_p300_random_n100_10 <- true_precision_p300_random - g.lasso_p300_random_n100_10
norm_f_g.lasso_p300_random_n100_10 <- norm(diff_g.lasso_p300_random_n100_10, type="f") 
norm_1_g.lasso_p300_random_n100_10 <- norm(diff_g.lasso_p300_random_n100_10, type="1") 
norm_2_g.lasso_p300_random_n100_10 <- norm(diff_g.lasso_p300_random_n100_10, type="2") 
norm_m_g.lasso_p300_random_n100_10 <- norm(diff_g.lasso_p300_random_n100_10, type="m") 

# i = 11
diff_g.lasso_p300_random_n100_11 <- true_precision_p300_random - g.lasso_p300_random_n100_11
norm_f_g.lasso_p300_random_n100_11 <- norm(diff_g.lasso_p300_random_n100_11, type="f") 
norm_1_g.lasso_p300_random_n100_11 <- norm(diff_g.lasso_p300_random_n100_11, type="1") 
norm_2_g.lasso_p300_random_n100_11 <- norm(diff_g.lasso_p300_random_n100_11, type="2") 
norm_m_g.lasso_p300_random_n100_11 <- norm(diff_g.lasso_p300_random_n100_11, type="m") 

# i = 12
diff_g.lasso_p300_random_n100_12 <- true_precision_p300_random - g.lasso_p300_random_n100_12
norm_f_g.lasso_p300_random_n100_12 <- norm(diff_g.lasso_p300_random_n100_12, type="f") 
norm_1_g.lasso_p300_random_n100_12 <- norm(diff_g.lasso_p300_random_n100_12, type="1") 
norm_2_g.lasso_p300_random_n100_12 <- norm(diff_g.lasso_p300_random_n100_12, type="2") 
norm_m_g.lasso_p300_random_n100_12 <- norm(diff_g.lasso_p300_random_n100_12, type="m") 

# i = 13
diff_g.lasso_p300_random_n100_13 <- true_precision_p300_random - g.lasso_p300_random_n100_13
norm_f_g.lasso_p300_random_n100_13 <- norm(diff_g.lasso_p300_random_n100_13, type="f") 
norm_1_g.lasso_p300_random_n100_13 <- norm(diff_g.lasso_p300_random_n100_13, type="1") 
norm_2_g.lasso_p300_random_n100_13 <- norm(diff_g.lasso_p300_random_n100_13, type="2") 
norm_m_g.lasso_p300_random_n100_13 <- norm(diff_g.lasso_p300_random_n100_13, type="m") 

# i = 14
diff_g.lasso_p300_random_n100_14 <- true_precision_p300_random - g.lasso_p300_random_n100_14
norm_f_g.lasso_p300_random_n100_14 <- norm(diff_g.lasso_p300_random_n100_14, type="f") 
norm_1_g.lasso_p300_random_n100_14 <- norm(diff_g.lasso_p300_random_n100_14, type="1") 
norm_2_g.lasso_p300_random_n100_14 <- norm(diff_g.lasso_p300_random_n100_14, type="2") 
norm_m_g.lasso_p300_random_n100_14 <- norm(diff_g.lasso_p300_random_n100_14, type="m") 

# i = 15
diff_g.lasso_p300_random_n100_15 <- true_precision_p300_random - g.lasso_p300_random_n100_15
norm_f_g.lasso_p300_random_n100_15 <- norm(diff_g.lasso_p300_random_n100_15, type="f") 
norm_1_g.lasso_p300_random_n100_15 <- norm(diff_g.lasso_p300_random_n100_15, type="1") 
norm_2_g.lasso_p300_random_n100_15 <- norm(diff_g.lasso_p300_random_n100_15, type="2") 
norm_m_g.lasso_p300_random_n100_15 <- norm(diff_g.lasso_p300_random_n100_15, type="m") 

# i = 16
diff_g.lasso_p300_random_n100_16 <- true_precision_p300_random - g.lasso_p300_random_n100_16
norm_f_g.lasso_p300_random_n100_16 <- norm(diff_g.lasso_p300_random_n100_16, type="f") 
norm_1_g.lasso_p300_random_n100_16 <- norm(diff_g.lasso_p300_random_n100_16, type="1") 
norm_2_g.lasso_p300_random_n100_16 <- norm(diff_g.lasso_p300_random_n100_16, type="2") 
norm_m_g.lasso_p300_random_n100_16 <- norm(diff_g.lasso_p300_random_n100_16, type="m") 

# i = 17
diff_g.lasso_p300_random_n100_17 <- true_precision_p300_random - g.lasso_p300_random_n100_17
norm_f_g.lasso_p300_random_n100_17 <- norm(diff_g.lasso_p300_random_n100_17, type="f") 
norm_1_g.lasso_p300_random_n100_17 <- norm(diff_g.lasso_p300_random_n100_17, type="1") 
norm_2_g.lasso_p300_random_n100_17 <- norm(diff_g.lasso_p300_random_n100_17, type="2") 
norm_m_g.lasso_p300_random_n100_17 <- norm(diff_g.lasso_p300_random_n100_17, type="m") 

# i = 18
diff_g.lasso_p300_random_n100_18 <- true_precision_p300_random - g.lasso_p300_random_n100_18
norm_f_g.lasso_p300_random_n100_18 <- norm(diff_g.lasso_p300_random_n100_18, type="f") 
norm_1_g.lasso_p300_random_n100_18 <- norm(diff_g.lasso_p300_random_n100_18, type="1") 
norm_2_g.lasso_p300_random_n100_18 <- norm(diff_g.lasso_p300_random_n100_18, type="2") 
norm_m_g.lasso_p300_random_n100_18 <- norm(diff_g.lasso_p300_random_n100_18, type="m") 

# i = 19
diff_g.lasso_p300_random_n100_19 <- true_precision_p300_random - g.lasso_p300_random_n100_19
norm_f_g.lasso_p300_random_n100_19 <- norm(diff_g.lasso_p300_random_n100_19, type="f") 
norm_1_g.lasso_p300_random_n100_19 <- norm(diff_g.lasso_p300_random_n100_19, type="1") 
norm_2_g.lasso_p300_random_n100_19 <- norm(diff_g.lasso_p300_random_n100_19, type="2") 
norm_m_g.lasso_p300_random_n100_19 <- norm(diff_g.lasso_p300_random_n100_19, type="m") 

# i = 20
diff_g.lasso_p300_random_n100_20 <- true_precision_p300_random - g.lasso_p300_random_n100_20
norm_f_g.lasso_p300_random_n100_20 <- norm(diff_g.lasso_p300_random_n100_20, type="f") 
norm_1_g.lasso_p300_random_n100_20 <- norm(diff_g.lasso_p300_random_n100_20, type="1") 
norm_2_g.lasso_p300_random_n100_20 <- norm(diff_g.lasso_p300_random_n100_20, type="2") 
norm_m_g.lasso_p300_random_n100_20 <- norm(diff_g.lasso_p300_random_n100_20, type="m") 

# i = 21
diff_g.lasso_p300_random_n100_21 <- true_precision_p300_random - g.lasso_p300_random_n100_21
norm_f_g.lasso_p300_random_n100_21 <- norm(diff_g.lasso_p300_random_n100_21, type="f") 
norm_1_g.lasso_p300_random_n100_21 <- norm(diff_g.lasso_p300_random_n100_21, type="1") 
norm_2_g.lasso_p300_random_n100_21 <- norm(diff_g.lasso_p300_random_n100_21, type="2") 
norm_m_g.lasso_p300_random_n100_21 <- norm(diff_g.lasso_p300_random_n100_21, type="m") 

# i = 22
diff_g.lasso_p300_random_n100_22 <- true_precision_p300_random - g.lasso_p300_random_n100_22
norm_f_g.lasso_p300_random_n100_22 <- norm(diff_g.lasso_p300_random_n100_22, type="f") 
norm_1_g.lasso_p300_random_n100_22 <- norm(diff_g.lasso_p300_random_n100_22, type="1") 
norm_2_g.lasso_p300_random_n100_22 <- norm(diff_g.lasso_p300_random_n100_22, type="2") 
norm_m_g.lasso_p300_random_n100_22 <- norm(diff_g.lasso_p300_random_n100_22, type="m") 

# i = 23
diff_g.lasso_p300_random_n100_23 <- true_precision_p300_random - g.lasso_p300_random_n100_23
norm_f_g.lasso_p300_random_n100_23 <- norm(diff_g.lasso_p300_random_n100_23, type="f") 
norm_1_g.lasso_p300_random_n100_23 <- norm(diff_g.lasso_p300_random_n100_23, type="1") 
norm_2_g.lasso_p300_random_n100_23 <- norm(diff_g.lasso_p300_random_n100_23, type="2") 
norm_m_g.lasso_p300_random_n100_23 <- norm(diff_g.lasso_p300_random_n100_23, type="m") 

# i = 24
diff_g.lasso_p300_random_n100_24 <- true_precision_p300_random - g.lasso_p300_random_n100_24
norm_f_g.lasso_p300_random_n100_24 <- norm(diff_g.lasso_p300_random_n100_24, type="f") 
norm_1_g.lasso_p300_random_n100_24 <- norm(diff_g.lasso_p300_random_n100_24, type="1") 
norm_2_g.lasso_p300_random_n100_24 <- norm(diff_g.lasso_p300_random_n100_24, type="2") 
norm_m_g.lasso_p300_random_n100_24 <- norm(diff_g.lasso_p300_random_n100_24, type="m") 

# i = 25
diff_g.lasso_p300_random_n100_25 <- true_precision_p300_random - g.lasso_p300_random_n100_25
norm_f_g.lasso_p300_random_n100_25 <- norm(diff_g.lasso_p300_random_n100_25, type="f") 
norm_1_g.lasso_p300_random_n100_25 <- norm(diff_g.lasso_p300_random_n100_25, type="1") 
norm_2_g.lasso_p300_random_n100_25 <- norm(diff_g.lasso_p300_random_n100_25, type="2") 
norm_m_g.lasso_p300_random_n100_25 <- norm(diff_g.lasso_p300_random_n100_25, type="m") 

# i = 26
diff_g.lasso_p300_random_n100_26 <- true_precision_p300_random - g.lasso_p300_random_n100_26
norm_f_g.lasso_p300_random_n100_26 <- norm(diff_g.lasso_p300_random_n100_26, type="f") 
norm_1_g.lasso_p300_random_n100_26 <- norm(diff_g.lasso_p300_random_n100_26, type="1") 
norm_2_g.lasso_p300_random_n100_26 <- norm(diff_g.lasso_p300_random_n100_26, type="2") 
norm_m_g.lasso_p300_random_n100_26 <- norm(diff_g.lasso_p300_random_n100_26, type="m") 

# i = 27
diff_g.lasso_p300_random_n100_27 <- true_precision_p300_random - g.lasso_p300_random_n100_27
norm_f_g.lasso_p300_random_n100_27 <- norm(diff_g.lasso_p300_random_n100_27, type="f") 
norm_1_g.lasso_p300_random_n100_27 <- norm(diff_g.lasso_p300_random_n100_27, type="1") 
norm_2_g.lasso_p300_random_n100_27 <- norm(diff_g.lasso_p300_random_n100_27, type="2") 
norm_m_g.lasso_p300_random_n100_27 <- norm(diff_g.lasso_p300_random_n100_27, type="m") 

# i = 28
diff_g.lasso_p300_random_n100_28 <- true_precision_p300_random - g.lasso_p300_random_n100_28
norm_f_g.lasso_p300_random_n100_28 <- norm(diff_g.lasso_p300_random_n100_28, type="f") 
norm_1_g.lasso_p300_random_n100_28 <- norm(diff_g.lasso_p300_random_n100_28, type="1") 
norm_2_g.lasso_p300_random_n100_28 <- norm(diff_g.lasso_p300_random_n100_28, type="2") 
norm_m_g.lasso_p300_random_n100_28 <- norm(diff_g.lasso_p300_random_n100_28, type="m") 

# i = 29
diff_g.lasso_p300_random_n100_29 <- true_precision_p300_random - g.lasso_p300_random_n100_29
norm_f_g.lasso_p300_random_n100_29 <- norm(diff_g.lasso_p300_random_n100_29, type="f") 
norm_1_g.lasso_p300_random_n100_29 <- norm(diff_g.lasso_p300_random_n100_29, type="1") 
norm_2_g.lasso_p300_random_n100_29 <- norm(diff_g.lasso_p300_random_n100_29, type="2") 
norm_m_g.lasso_p300_random_n100_29 <- norm(diff_g.lasso_p300_random_n100_29, type="m") 

# i = 30
diff_g.lasso_p300_random_n100_30 <- true_precision_p300_random - g.lasso_p300_random_n100_30
norm_f_g.lasso_p300_random_n100_30 <- norm(diff_g.lasso_p300_random_n100_30, type="f") 
norm_1_g.lasso_p300_random_n100_30 <- norm(diff_g.lasso_p300_random_n100_30, type="1") 
norm_2_g.lasso_p300_random_n100_30 <- norm(diff_g.lasso_p300_random_n100_30, type="2") 
norm_m_g.lasso_p300_random_n100_30 <- norm(diff_g.lasso_p300_random_n100_30, type="m") 

# i = 31
diff_g.lasso_p300_random_n100_31 <- true_precision_p300_random - g.lasso_p300_random_n100_31
norm_f_g.lasso_p300_random_n100_31 <- norm(diff_g.lasso_p300_random_n100_31, type="f") 
norm_1_g.lasso_p300_random_n100_31 <- norm(diff_g.lasso_p300_random_n100_31, type="1") 
norm_2_g.lasso_p300_random_n100_31 <- norm(diff_g.lasso_p300_random_n100_31, type="2") 
norm_m_g.lasso_p300_random_n100_31 <- norm(diff_g.lasso_p300_random_n100_31, type="m") 

# i = 32
diff_g.lasso_p300_random_n100_32 <- true_precision_p300_random - g.lasso_p300_random_n100_32
norm_f_g.lasso_p300_random_n100_32 <- norm(diff_g.lasso_p300_random_n100_32, type="f") 
norm_1_g.lasso_p300_random_n100_32 <- norm(diff_g.lasso_p300_random_n100_32, type="1") 
norm_2_g.lasso_p300_random_n100_32 <- norm(diff_g.lasso_p300_random_n100_32, type="2") 
norm_m_g.lasso_p300_random_n100_32 <- norm(diff_g.lasso_p300_random_n100_32, type="m") 

# i = 33
diff_g.lasso_p300_random_n100_33 <- true_precision_p300_random - g.lasso_p300_random_n100_33
norm_f_g.lasso_p300_random_n100_33 <- norm(diff_g.lasso_p300_random_n100_33, type="f") 
norm_1_g.lasso_p300_random_n100_33 <- norm(diff_g.lasso_p300_random_n100_33, type="1") 
norm_2_g.lasso_p300_random_n100_33 <- norm(diff_g.lasso_p300_random_n100_33, type="2") 
norm_m_g.lasso_p300_random_n100_33 <- norm(diff_g.lasso_p300_random_n100_33, type="m") 

# i = 34
diff_g.lasso_p300_random_n100_34 <- true_precision_p300_random - g.lasso_p300_random_n100_34
norm_f_g.lasso_p300_random_n100_34 <- norm(diff_g.lasso_p300_random_n100_34, type="f") 
norm_1_g.lasso_p300_random_n100_34 <- norm(diff_g.lasso_p300_random_n100_34, type="1") 
norm_2_g.lasso_p300_random_n100_34 <- norm(diff_g.lasso_p300_random_n100_34, type="2") 
norm_m_g.lasso_p300_random_n100_34 <- norm(diff_g.lasso_p300_random_n100_34, type="m") 

# i = 35
diff_g.lasso_p300_random_n100_35 <- true_precision_p300_random - g.lasso_p300_random_n100_35
norm_f_g.lasso_p300_random_n100_35 <- norm(diff_g.lasso_p300_random_n100_35, type="f") 
norm_1_g.lasso_p300_random_n100_35 <- norm(diff_g.lasso_p300_random_n100_35, type="1") 
norm_2_g.lasso_p300_random_n100_35 <- norm(diff_g.lasso_p300_random_n100_35, type="2") 
norm_m_g.lasso_p300_random_n100_35 <- norm(diff_g.lasso_p300_random_n100_35, type="m") 

# i = 36
diff_g.lasso_p300_random_n100_36 <- true_precision_p300_random - g.lasso_p300_random_n100_36
norm_f_g.lasso_p300_random_n100_36 <- norm(diff_g.lasso_p300_random_n100_36, type="f") 
norm_1_g.lasso_p300_random_n100_36 <- norm(diff_g.lasso_p300_random_n100_36, type="1") 
norm_2_g.lasso_p300_random_n100_36 <- norm(diff_g.lasso_p300_random_n100_36, type="2") 
norm_m_g.lasso_p300_random_n100_36 <- norm(diff_g.lasso_p300_random_n100_36, type="m") 

# i = 37
diff_g.lasso_p300_random_n100_37 <- true_precision_p300_random - g.lasso_p300_random_n100_37
norm_f_g.lasso_p300_random_n100_37 <- norm(diff_g.lasso_p300_random_n100_37, type="f") 
norm_1_g.lasso_p300_random_n100_37 <- norm(diff_g.lasso_p300_random_n100_37, type="1") 
norm_2_g.lasso_p300_random_n100_37 <- norm(diff_g.lasso_p300_random_n100_37, type="2") 
norm_m_g.lasso_p300_random_n100_37 <- norm(diff_g.lasso_p300_random_n100_37, type="m") 

# i = 38
diff_g.lasso_p300_random_n100_38 <- true_precision_p300_random - g.lasso_p300_random_n100_38
norm_f_g.lasso_p300_random_n100_38 <- norm(diff_g.lasso_p300_random_n100_38, type="f") 
norm_1_g.lasso_p300_random_n100_38 <- norm(diff_g.lasso_p300_random_n100_38, type="1") 
norm_2_g.lasso_p300_random_n100_38 <- norm(diff_g.lasso_p300_random_n100_38, type="2") 
norm_m_g.lasso_p300_random_n100_38 <- norm(diff_g.lasso_p300_random_n100_38, type="m") 

# i = 39
diff_g.lasso_p300_random_n100_39 <- true_precision_p300_random - g.lasso_p300_random_n100_39
norm_f_g.lasso_p300_random_n100_39 <- norm(diff_g.lasso_p300_random_n100_39, type="f") 
norm_1_g.lasso_p300_random_n100_39 <- norm(diff_g.lasso_p300_random_n100_39, type="1") 
norm_2_g.lasso_p300_random_n100_39 <- norm(diff_g.lasso_p300_random_n100_39, type="2") 
norm_m_g.lasso_p300_random_n100_39 <- norm(diff_g.lasso_p300_random_n100_39, type="m") 

# i = 40
diff_g.lasso_p300_random_n100_40 <- true_precision_p300_random - g.lasso_p300_random_n100_40
norm_f_g.lasso_p300_random_n100_40 <- norm(diff_g.lasso_p300_random_n100_40, type="f") 
norm_1_g.lasso_p300_random_n100_40 <- norm(diff_g.lasso_p300_random_n100_40, type="1") 
norm_2_g.lasso_p300_random_n100_40 <- norm(diff_g.lasso_p300_random_n100_40, type="2") 
norm_m_g.lasso_p300_random_n100_40 <- norm(diff_g.lasso_p300_random_n100_40, type="m") 

# i = 41
diff_g.lasso_p300_random_n100_41 <- true_precision_p300_random - g.lasso_p300_random_n100_41
norm_f_g.lasso_p300_random_n100_41 <- norm(diff_g.lasso_p300_random_n100_41, type="f") 
norm_1_g.lasso_p300_random_n100_41 <- norm(diff_g.lasso_p300_random_n100_41, type="1") 
norm_2_g.lasso_p300_random_n100_41 <- norm(diff_g.lasso_p300_random_n100_41, type="2") 
norm_m_g.lasso_p300_random_n100_41 <- norm(diff_g.lasso_p300_random_n100_41, type="m") 

# i = 42
diff_g.lasso_p300_random_n100_42 <- true_precision_p300_random - g.lasso_p300_random_n100_42
norm_f_g.lasso_p300_random_n100_42 <- norm(diff_g.lasso_p300_random_n100_42, type="f") 
norm_1_g.lasso_p300_random_n100_42 <- norm(diff_g.lasso_p300_random_n100_42, type="1") 
norm_2_g.lasso_p300_random_n100_42 <- norm(diff_g.lasso_p300_random_n100_42, type="2") 
norm_m_g.lasso_p300_random_n100_42 <- norm(diff_g.lasso_p300_random_n100_42, type="m") 

# i = 43
diff_g.lasso_p300_random_n100_43 <- true_precision_p300_random - g.lasso_p300_random_n100_43
norm_f_g.lasso_p300_random_n100_43 <- norm(diff_g.lasso_p300_random_n100_43, type="f") 
norm_1_g.lasso_p300_random_n100_43 <- norm(diff_g.lasso_p300_random_n100_43, type="1") 
norm_2_g.lasso_p300_random_n100_43 <- norm(diff_g.lasso_p300_random_n100_43, type="2") 
norm_m_g.lasso_p300_random_n100_43 <- norm(diff_g.lasso_p300_random_n100_43, type="m") 

# i = 44
diff_g.lasso_p300_random_n100_44 <- true_precision_p300_random - g.lasso_p300_random_n100_44
norm_f_g.lasso_p300_random_n100_44 <- norm(diff_g.lasso_p300_random_n100_44, type="f") 
norm_1_g.lasso_p300_random_n100_44 <- norm(diff_g.lasso_p300_random_n100_44, type="1") 
norm_2_g.lasso_p300_random_n100_44 <- norm(diff_g.lasso_p300_random_n100_44, type="2") 
norm_m_g.lasso_p300_random_n100_44 <- norm(diff_g.lasso_p300_random_n100_44, type="m") 

# i = 45
diff_g.lasso_p300_random_n100_45 <- true_precision_p300_random - g.lasso_p300_random_n100_45
norm_f_g.lasso_p300_random_n100_45 <- norm(diff_g.lasso_p300_random_n100_45, type="f") 
norm_1_g.lasso_p300_random_n100_45 <- norm(diff_g.lasso_p300_random_n100_45, type="1") 
norm_2_g.lasso_p300_random_n100_45 <- norm(diff_g.lasso_p300_random_n100_45, type="2") 
norm_m_g.lasso_p300_random_n100_45 <- norm(diff_g.lasso_p300_random_n100_45, type="m") 

# i = 46
diff_g.lasso_p300_random_n100_46 <- true_precision_p300_random - g.lasso_p300_random_n100_46
norm_f_g.lasso_p300_random_n100_46 <- norm(diff_g.lasso_p300_random_n100_46, type="f") 
norm_1_g.lasso_p300_random_n100_46 <- norm(diff_g.lasso_p300_random_n100_46, type="1") 
norm_2_g.lasso_p300_random_n100_46 <- norm(diff_g.lasso_p300_random_n100_46, type="2") 
norm_m_g.lasso_p300_random_n100_46 <- norm(diff_g.lasso_p300_random_n100_46, type="m") 

# i = 47
diff_g.lasso_p300_random_n100_47 <- true_precision_p300_random - g.lasso_p300_random_n100_47
norm_f_g.lasso_p300_random_n100_47 <- norm(diff_g.lasso_p300_random_n100_47, type="f") 
norm_1_g.lasso_p300_random_n100_47 <- norm(diff_g.lasso_p300_random_n100_47, type="1") 
norm_2_g.lasso_p300_random_n100_47 <- norm(diff_g.lasso_p300_random_n100_47, type="2") 
norm_m_g.lasso_p300_random_n100_47 <- norm(diff_g.lasso_p300_random_n100_47, type="m") 

# i = 48
diff_g.lasso_p300_random_n100_48 <- true_precision_p300_random - g.lasso_p300_random_n100_48
norm_f_g.lasso_p300_random_n100_48 <- norm(diff_g.lasso_p300_random_n100_48, type="f") 
norm_1_g.lasso_p300_random_n100_48 <- norm(diff_g.lasso_p300_random_n100_48, type="1") 
norm_2_g.lasso_p300_random_n100_48 <- norm(diff_g.lasso_p300_random_n100_48, type="2") 
norm_m_g.lasso_p300_random_n100_48 <- norm(diff_g.lasso_p300_random_n100_48, type="m") 

# i = 49
diff_g.lasso_p300_random_n100_49 <- true_precision_p300_random - g.lasso_p300_random_n100_49
norm_f_g.lasso_p300_random_n100_49 <- norm(diff_g.lasso_p300_random_n100_49, type="f") 
norm_1_g.lasso_p300_random_n100_49 <- norm(diff_g.lasso_p300_random_n100_49, type="1") 
norm_2_g.lasso_p300_random_n100_49 <- norm(diff_g.lasso_p300_random_n100_49, type="2") 
norm_m_g.lasso_p300_random_n100_49 <- norm(diff_g.lasso_p300_random_n100_49, type="m") 

# i = 50
diff_g.lasso_p300_random_n100_50 <- true_precision_p300_random - g.lasso_p300_random_n100_50
norm_f_g.lasso_p300_random_n100_50 <- norm(diff_g.lasso_p300_random_n100_50, type="f") 
norm_1_g.lasso_p300_random_n100_50 <- norm(diff_g.lasso_p300_random_n100_50, type="1") 
norm_2_g.lasso_p300_random_n100_50 <- norm(diff_g.lasso_p300_random_n100_50, type="2") 
norm_m_g.lasso_p300_random_n100_50 <- norm(diff_g.lasso_p300_random_n100_50, type="m") 

# i = 51
diff_g.lasso_p300_random_n100_51 <- true_precision_p300_random - g.lasso_p300_random_n100_51
norm_f_g.lasso_p300_random_n100_51 <- norm(diff_g.lasso_p300_random_n100_51, type="f") 
norm_1_g.lasso_p300_random_n100_51 <- norm(diff_g.lasso_p300_random_n100_51, type="1") 
norm_2_g.lasso_p300_random_n100_51 <- norm(diff_g.lasso_p300_random_n100_51, type="2") 
norm_m_g.lasso_p300_random_n100_51 <- norm(diff_g.lasso_p300_random_n100_51, type="m") 

# i = 52
diff_g.lasso_p300_random_n100_52 <- true_precision_p300_random - g.lasso_p300_random_n100_52
norm_f_g.lasso_p300_random_n100_52 <- norm(diff_g.lasso_p300_random_n100_52, type="f") 
norm_1_g.lasso_p300_random_n100_52 <- norm(diff_g.lasso_p300_random_n100_52, type="1") 
norm_2_g.lasso_p300_random_n100_52 <- norm(diff_g.lasso_p300_random_n100_52, type="2") 
norm_m_g.lasso_p300_random_n100_52 <- norm(diff_g.lasso_p300_random_n100_52, type="m") 

# i = 53
diff_g.lasso_p300_random_n100_53 <- true_precision_p300_random - g.lasso_p300_random_n100_53
norm_f_g.lasso_p300_random_n100_53 <- norm(diff_g.lasso_p300_random_n100_53, type="f") 
norm_1_g.lasso_p300_random_n100_53 <- norm(diff_g.lasso_p300_random_n100_53, type="1") 
norm_2_g.lasso_p300_random_n100_53 <- norm(diff_g.lasso_p300_random_n100_53, type="2") 
norm_m_g.lasso_p300_random_n100_53 <- norm(diff_g.lasso_p300_random_n100_53, type="m") 

# i = 54
diff_g.lasso_p300_random_n100_54 <- true_precision_p300_random - g.lasso_p300_random_n100_54
norm_f_g.lasso_p300_random_n100_54 <- norm(diff_g.lasso_p300_random_n100_54, type="f") 
norm_1_g.lasso_p300_random_n100_54 <- norm(diff_g.lasso_p300_random_n100_54, type="1") 
norm_2_g.lasso_p300_random_n100_54 <- norm(diff_g.lasso_p300_random_n100_54, type="2") 
norm_m_g.lasso_p300_random_n100_54 <- norm(diff_g.lasso_p300_random_n100_54, type="m") 

# i = 55
diff_g.lasso_p300_random_n100_55 <- true_precision_p300_random - g.lasso_p300_random_n100_55
norm_f_g.lasso_p300_random_n100_55 <- norm(diff_g.lasso_p300_random_n100_55, type="f") 
norm_1_g.lasso_p300_random_n100_55 <- norm(diff_g.lasso_p300_random_n100_55, type="1") 
norm_2_g.lasso_p300_random_n100_55 <- norm(diff_g.lasso_p300_random_n100_55, type="2") 
norm_m_g.lasso_p300_random_n100_55 <- norm(diff_g.lasso_p300_random_n100_55, type="m") 

# i = 56
diff_g.lasso_p300_random_n100_56 <- true_precision_p300_random - g.lasso_p300_random_n100_56
norm_f_g.lasso_p300_random_n100_56 <- norm(diff_g.lasso_p300_random_n100_56, type="f") 
norm_1_g.lasso_p300_random_n100_56 <- norm(diff_g.lasso_p300_random_n100_56, type="1") 
norm_2_g.lasso_p300_random_n100_56 <- norm(diff_g.lasso_p300_random_n100_56, type="2") 
norm_m_g.lasso_p300_random_n100_56 <- norm(diff_g.lasso_p300_random_n100_56, type="m") 

# i = 57
diff_g.lasso_p300_random_n100_57 <- true_precision_p300_random - g.lasso_p300_random_n100_57
norm_f_g.lasso_p300_random_n100_57 <- norm(diff_g.lasso_p300_random_n100_57, type="f") 
norm_1_g.lasso_p300_random_n100_57 <- norm(diff_g.lasso_p300_random_n100_57, type="1") 
norm_2_g.lasso_p300_random_n100_57 <- norm(diff_g.lasso_p300_random_n100_57, type="2") 
norm_m_g.lasso_p300_random_n100_57 <- norm(diff_g.lasso_p300_random_n100_57, type="m") 

# i = 58
diff_g.lasso_p300_random_n100_58 <- true_precision_p300_random - g.lasso_p300_random_n100_58
norm_f_g.lasso_p300_random_n100_58 <- norm(diff_g.lasso_p300_random_n100_58, type="f") 
norm_1_g.lasso_p300_random_n100_58 <- norm(diff_g.lasso_p300_random_n100_58, type="1") 
norm_2_g.lasso_p300_random_n100_58 <- norm(diff_g.lasso_p300_random_n100_58, type="2") 
norm_m_g.lasso_p300_random_n100_58 <- norm(diff_g.lasso_p300_random_n100_58, type="m") 

# i = 59
diff_g.lasso_p300_random_n100_59 <- true_precision_p300_random - g.lasso_p300_random_n100_59
norm_f_g.lasso_p300_random_n100_59 <- norm(diff_g.lasso_p300_random_n100_59, type="f") 
norm_1_g.lasso_p300_random_n100_59 <- norm(diff_g.lasso_p300_random_n100_59, type="1") 
norm_2_g.lasso_p300_random_n100_59 <- norm(diff_g.lasso_p300_random_n100_59, type="2") 
norm_m_g.lasso_p300_random_n100_59 <- norm(diff_g.lasso_p300_random_n100_59, type="m") 

# i = 60
diff_g.lasso_p300_random_n100_60 <- true_precision_p300_random - g.lasso_p300_random_n100_60
norm_f_g.lasso_p300_random_n100_60 <- norm(diff_g.lasso_p300_random_n100_60, type="f") 
norm_1_g.lasso_p300_random_n100_60 <- norm(diff_g.lasso_p300_random_n100_60, type="1") 
norm_2_g.lasso_p300_random_n100_60 <- norm(diff_g.lasso_p300_random_n100_60, type="2") 
norm_m_g.lasso_p300_random_n100_60 <- norm(diff_g.lasso_p300_random_n100_60, type="m") 

# i = 61
diff_g.lasso_p300_random_n100_61 <- true_precision_p300_random - g.lasso_p300_random_n100_61
norm_f_g.lasso_p300_random_n100_61 <- norm(diff_g.lasso_p300_random_n100_61, type="f") 
norm_1_g.lasso_p300_random_n100_61 <- norm(diff_g.lasso_p300_random_n100_61, type="1") 
norm_2_g.lasso_p300_random_n100_61 <- norm(diff_g.lasso_p300_random_n100_61, type="2") 
norm_m_g.lasso_p300_random_n100_61 <- norm(diff_g.lasso_p300_random_n100_61, type="m") 

# i = 62
diff_g.lasso_p300_random_n100_62 <- true_precision_p300_random - g.lasso_p300_random_n100_62
norm_f_g.lasso_p300_random_n100_62 <- norm(diff_g.lasso_p300_random_n100_62, type="f") 
norm_1_g.lasso_p300_random_n100_62 <- norm(diff_g.lasso_p300_random_n100_62, type="1") 
norm_2_g.lasso_p300_random_n100_62 <- norm(diff_g.lasso_p300_random_n100_62, type="2") 
norm_m_g.lasso_p300_random_n100_62 <- norm(diff_g.lasso_p300_random_n100_62, type="m") 

# i = 63
diff_g.lasso_p300_random_n100_63 <- true_precision_p300_random - g.lasso_p300_random_n100_63
norm_f_g.lasso_p300_random_n100_63 <- norm(diff_g.lasso_p300_random_n100_63, type="f") 
norm_1_g.lasso_p300_random_n100_63 <- norm(diff_g.lasso_p300_random_n100_63, type="1") 
norm_2_g.lasso_p300_random_n100_63 <- norm(diff_g.lasso_p300_random_n100_63, type="2") 
norm_m_g.lasso_p300_random_n100_63 <- norm(diff_g.lasso_p300_random_n100_63, type="m") 

# i = 64
diff_g.lasso_p300_random_n100_64 <- true_precision_p300_random - g.lasso_p300_random_n100_64
norm_f_g.lasso_p300_random_n100_64 <- norm(diff_g.lasso_p300_random_n100_64, type="f") 
norm_1_g.lasso_p300_random_n100_64 <- norm(diff_g.lasso_p300_random_n100_64, type="1") 
norm_2_g.lasso_p300_random_n100_64 <- norm(diff_g.lasso_p300_random_n100_64, type="2") 
norm_m_g.lasso_p300_random_n100_64 <- norm(diff_g.lasso_p300_random_n100_64, type="m") 

# i = 65
diff_g.lasso_p300_random_n100_65 <- true_precision_p300_random - g.lasso_p300_random_n100_65
norm_f_g.lasso_p300_random_n100_65 <- norm(diff_g.lasso_p300_random_n100_65, type="f") 
norm_1_g.lasso_p300_random_n100_65 <- norm(diff_g.lasso_p300_random_n100_65, type="1") 
norm_2_g.lasso_p300_random_n100_65 <- norm(diff_g.lasso_p300_random_n100_65, type="2") 
norm_m_g.lasso_p300_random_n100_65 <- norm(diff_g.lasso_p300_random_n100_65, type="m") 

# i = 66
diff_g.lasso_p300_random_n100_66 <- true_precision_p300_random - g.lasso_p300_random_n100_66
norm_f_g.lasso_p300_random_n100_66 <- norm(diff_g.lasso_p300_random_n100_66, type="f") 
norm_1_g.lasso_p300_random_n100_66 <- norm(diff_g.lasso_p300_random_n100_66, type="1") 
norm_2_g.lasso_p300_random_n100_66 <- norm(diff_g.lasso_p300_random_n100_66, type="2") 
norm_m_g.lasso_p300_random_n100_66 <- norm(diff_g.lasso_p300_random_n100_66, type="m") 

# i = 67
diff_g.lasso_p300_random_n100_67 <- true_precision_p300_random - g.lasso_p300_random_n100_67
norm_f_g.lasso_p300_random_n100_67 <- norm(diff_g.lasso_p300_random_n100_67, type="f") 
norm_1_g.lasso_p300_random_n100_67 <- norm(diff_g.lasso_p300_random_n100_67, type="1") 
norm_2_g.lasso_p300_random_n100_67 <- norm(diff_g.lasso_p300_random_n100_67, type="2") 
norm_m_g.lasso_p300_random_n100_67 <- norm(diff_g.lasso_p300_random_n100_67, type="m") 

# i = 68
diff_g.lasso_p300_random_n100_68 <- true_precision_p300_random - g.lasso_p300_random_n100_68
norm_f_g.lasso_p300_random_n100_68 <- norm(diff_g.lasso_p300_random_n100_68, type="f") 
norm_1_g.lasso_p300_random_n100_68 <- norm(diff_g.lasso_p300_random_n100_68, type="1") 
norm_2_g.lasso_p300_random_n100_68 <- norm(diff_g.lasso_p300_random_n100_68, type="2") 
norm_m_g.lasso_p300_random_n100_68 <- norm(diff_g.lasso_p300_random_n100_68, type="m") 

# i = 69
diff_g.lasso_p300_random_n100_69 <- true_precision_p300_random - g.lasso_p300_random_n100_69
norm_f_g.lasso_p300_random_n100_69 <- norm(diff_g.lasso_p300_random_n100_69, type="f") 
norm_1_g.lasso_p300_random_n100_69 <- norm(diff_g.lasso_p300_random_n100_69, type="1") 
norm_2_g.lasso_p300_random_n100_69 <- norm(diff_g.lasso_p300_random_n100_69, type="2") 
norm_m_g.lasso_p300_random_n100_69 <- norm(diff_g.lasso_p300_random_n100_69, type="m") 

# i = 70
diff_g.lasso_p300_random_n100_70 <- true_precision_p300_random - g.lasso_p300_random_n100_70
norm_f_g.lasso_p300_random_n100_70 <- norm(diff_g.lasso_p300_random_n100_70, type="f") 
norm_1_g.lasso_p300_random_n100_70 <- norm(diff_g.lasso_p300_random_n100_70, type="1") 
norm_2_g.lasso_p300_random_n100_70 <- norm(diff_g.lasso_p300_random_n100_70, type="2") 
norm_m_g.lasso_p300_random_n100_70 <- norm(diff_g.lasso_p300_random_n100_70, type="m") 

# i = 71
diff_g.lasso_p300_random_n100_71 <- true_precision_p300_random - g.lasso_p300_random_n100_71
norm_f_g.lasso_p300_random_n100_71 <- norm(diff_g.lasso_p300_random_n100_71, type="f") 
norm_1_g.lasso_p300_random_n100_71 <- norm(diff_g.lasso_p300_random_n100_71, type="1") 
norm_2_g.lasso_p300_random_n100_71 <- norm(diff_g.lasso_p300_random_n100_71, type="2") 
norm_m_g.lasso_p300_random_n100_71 <- norm(diff_g.lasso_p300_random_n100_71, type="m") 

# i = 72
diff_g.lasso_p300_random_n100_72 <- true_precision_p300_random - g.lasso_p300_random_n100_72
norm_f_g.lasso_p300_random_n100_72 <- norm(diff_g.lasso_p300_random_n100_72, type="f") 
norm_1_g.lasso_p300_random_n100_72 <- norm(diff_g.lasso_p300_random_n100_72, type="1") 
norm_2_g.lasso_p300_random_n100_72 <- norm(diff_g.lasso_p300_random_n100_72, type="2") 
norm_m_g.lasso_p300_random_n100_72 <- norm(diff_g.lasso_p300_random_n100_72, type="m") 

# i = 73
diff_g.lasso_p300_random_n100_73 <- true_precision_p300_random - g.lasso_p300_random_n100_73
norm_f_g.lasso_p300_random_n100_73 <- norm(diff_g.lasso_p300_random_n100_73, type="f") 
norm_1_g.lasso_p300_random_n100_73 <- norm(diff_g.lasso_p300_random_n100_73, type="1") 
norm_2_g.lasso_p300_random_n100_73 <- norm(diff_g.lasso_p300_random_n100_73, type="2") 
norm_m_g.lasso_p300_random_n100_73 <- norm(diff_g.lasso_p300_random_n100_73, type="m") 

# i = 74
diff_g.lasso_p300_random_n100_74 <- true_precision_p300_random - g.lasso_p300_random_n100_74
norm_f_g.lasso_p300_random_n100_74 <- norm(diff_g.lasso_p300_random_n100_74, type="f") 
norm_1_g.lasso_p300_random_n100_74 <- norm(diff_g.lasso_p300_random_n100_74, type="1") 
norm_2_g.lasso_p300_random_n100_74 <- norm(diff_g.lasso_p300_random_n100_74, type="2") 
norm_m_g.lasso_p300_random_n100_74 <- norm(diff_g.lasso_p300_random_n100_74, type="m") 

# i = 75
diff_g.lasso_p300_random_n100_75 <- true_precision_p300_random - g.lasso_p300_random_n100_75
norm_f_g.lasso_p300_random_n100_75 <- norm(diff_g.lasso_p300_random_n100_75, type="f") 
norm_1_g.lasso_p300_random_n100_75 <- norm(diff_g.lasso_p300_random_n100_75, type="1") 
norm_2_g.lasso_p300_random_n100_75 <- norm(diff_g.lasso_p300_random_n100_75, type="2") 
norm_m_g.lasso_p300_random_n100_75 <- norm(diff_g.lasso_p300_random_n100_75, type="m") 

# i = 76
diff_g.lasso_p300_random_n100_76 <- true_precision_p300_random - g.lasso_p300_random_n100_76
norm_f_g.lasso_p300_random_n100_76 <- norm(diff_g.lasso_p300_random_n100_76, type="f") 
norm_1_g.lasso_p300_random_n100_76 <- norm(diff_g.lasso_p300_random_n100_76, type="1") 
norm_2_g.lasso_p300_random_n100_76 <- norm(diff_g.lasso_p300_random_n100_76, type="2") 
norm_m_g.lasso_p300_random_n100_76 <- norm(diff_g.lasso_p300_random_n100_76, type="m") 

# i = 77
diff_g.lasso_p300_random_n100_77 <- true_precision_p300_random - g.lasso_p300_random_n100_77
norm_f_g.lasso_p300_random_n100_77 <- norm(diff_g.lasso_p300_random_n100_77, type="f") 
norm_1_g.lasso_p300_random_n100_77 <- norm(diff_g.lasso_p300_random_n100_77, type="1") 
norm_2_g.lasso_p300_random_n100_77 <- norm(diff_g.lasso_p300_random_n100_77, type="2") 
norm_m_g.lasso_p300_random_n100_77 <- norm(diff_g.lasso_p300_random_n100_77, type="m") 

# i = 78
diff_g.lasso_p300_random_n100_78 <- true_precision_p300_random - g.lasso_p300_random_n100_78
norm_f_g.lasso_p300_random_n100_78 <- norm(diff_g.lasso_p300_random_n100_78, type="f") 
norm_1_g.lasso_p300_random_n100_78 <- norm(diff_g.lasso_p300_random_n100_78, type="1") 
norm_2_g.lasso_p300_random_n100_78 <- norm(diff_g.lasso_p300_random_n100_78, type="2") 
norm_m_g.lasso_p300_random_n100_78 <- norm(diff_g.lasso_p300_random_n100_78, type="m") 

# i = 79
diff_g.lasso_p300_random_n100_79 <- true_precision_p300_random - g.lasso_p300_random_n100_79
norm_f_g.lasso_p300_random_n100_79 <- norm(diff_g.lasso_p300_random_n100_79, type="f") 
norm_1_g.lasso_p300_random_n100_79 <- norm(diff_g.lasso_p300_random_n100_79, type="1") 
norm_2_g.lasso_p300_random_n100_79 <- norm(diff_g.lasso_p300_random_n100_79, type="2") 
norm_m_g.lasso_p300_random_n100_79 <- norm(diff_g.lasso_p300_random_n100_79, type="m") 

# i = 80
diff_g.lasso_p300_random_n100_80 <- true_precision_p300_random - g.lasso_p300_random_n100_80
norm_f_g.lasso_p300_random_n100_80 <- norm(diff_g.lasso_p300_random_n100_80, type="f") 
norm_1_g.lasso_p300_random_n100_80 <- norm(diff_g.lasso_p300_random_n100_80, type="1") 
norm_2_g.lasso_p300_random_n100_80 <- norm(diff_g.lasso_p300_random_n100_80, type="2") 
norm_m_g.lasso_p300_random_n100_80 <- norm(diff_g.lasso_p300_random_n100_80, type="m") 

# i = 81
diff_g.lasso_p300_random_n100_81 <- true_precision_p300_random - g.lasso_p300_random_n100_81
norm_f_g.lasso_p300_random_n100_81 <- norm(diff_g.lasso_p300_random_n100_81, type="f") 
norm_1_g.lasso_p300_random_n100_81 <- norm(diff_g.lasso_p300_random_n100_81, type="1") 
norm_2_g.lasso_p300_random_n100_81 <- norm(diff_g.lasso_p300_random_n100_81, type="2") 
norm_m_g.lasso_p300_random_n100_81 <- norm(diff_g.lasso_p300_random_n100_81, type="m") 

# i = 82
diff_g.lasso_p300_random_n100_82 <- true_precision_p300_random - g.lasso_p300_random_n100_82
norm_f_g.lasso_p300_random_n100_82 <- norm(diff_g.lasso_p300_random_n100_82, type="f") 
norm_1_g.lasso_p300_random_n100_82 <- norm(diff_g.lasso_p300_random_n100_82, type="1") 
norm_2_g.lasso_p300_random_n100_82 <- norm(diff_g.lasso_p300_random_n100_82, type="2") 
norm_m_g.lasso_p300_random_n100_82 <- norm(diff_g.lasso_p300_random_n100_82, type="m") 

# i = 83
diff_g.lasso_p300_random_n100_83 <- true_precision_p300_random - g.lasso_p300_random_n100_83
norm_f_g.lasso_p300_random_n100_83 <- norm(diff_g.lasso_p300_random_n100_83, type="f") 
norm_1_g.lasso_p300_random_n100_83 <- norm(diff_g.lasso_p300_random_n100_83, type="1") 
norm_2_g.lasso_p300_random_n100_83 <- norm(diff_g.lasso_p300_random_n100_83, type="2") 
norm_m_g.lasso_p300_random_n100_83 <- norm(diff_g.lasso_p300_random_n100_83, type="m") 

# i = 84
diff_g.lasso_p300_random_n100_84 <- true_precision_p300_random - g.lasso_p300_random_n100_84
norm_f_g.lasso_p300_random_n100_84 <- norm(diff_g.lasso_p300_random_n100_84, type="f") 
norm_1_g.lasso_p300_random_n100_84 <- norm(diff_g.lasso_p300_random_n100_84, type="1") 
norm_2_g.lasso_p300_random_n100_84 <- norm(diff_g.lasso_p300_random_n100_84, type="2") 
norm_m_g.lasso_p300_random_n100_84 <- norm(diff_g.lasso_p300_random_n100_84, type="m") 

# i = 85
diff_g.lasso_p300_random_n100_85 <- true_precision_p300_random - g.lasso_p300_random_n100_85
norm_f_g.lasso_p300_random_n100_85 <- norm(diff_g.lasso_p300_random_n100_85, type="f") 
norm_1_g.lasso_p300_random_n100_85 <- norm(diff_g.lasso_p300_random_n100_85, type="1") 
norm_2_g.lasso_p300_random_n100_85 <- norm(diff_g.lasso_p300_random_n100_85, type="2") 
norm_m_g.lasso_p300_random_n100_85 <- norm(diff_g.lasso_p300_random_n100_85, type="m") 

# i = 86
diff_g.lasso_p300_random_n100_86 <- true_precision_p300_random - g.lasso_p300_random_n100_86
norm_f_g.lasso_p300_random_n100_86 <- norm(diff_g.lasso_p300_random_n100_86, type="f") 
norm_1_g.lasso_p300_random_n100_86 <- norm(diff_g.lasso_p300_random_n100_86, type="1") 
norm_2_g.lasso_p300_random_n100_86 <- norm(diff_g.lasso_p300_random_n100_86, type="2") 
norm_m_g.lasso_p300_random_n100_86 <- norm(diff_g.lasso_p300_random_n100_86, type="m") 

# i = 87
diff_g.lasso_p300_random_n100_87 <- true_precision_p300_random - g.lasso_p300_random_n100_87
norm_f_g.lasso_p300_random_n100_87 <- norm(diff_g.lasso_p300_random_n100_87, type="f") 
norm_1_g.lasso_p300_random_n100_87 <- norm(diff_g.lasso_p300_random_n100_87, type="1") 
norm_2_g.lasso_p300_random_n100_87 <- norm(diff_g.lasso_p300_random_n100_87, type="2") 
norm_m_g.lasso_p300_random_n100_87 <- norm(diff_g.lasso_p300_random_n100_87, type="m") 

# i = 88
diff_g.lasso_p300_random_n100_88 <- true_precision_p300_random - g.lasso_p300_random_n100_88
norm_f_g.lasso_p300_random_n100_88 <- norm(diff_g.lasso_p300_random_n100_88, type="f") 
norm_1_g.lasso_p300_random_n100_88 <- norm(diff_g.lasso_p300_random_n100_88, type="1") 
norm_2_g.lasso_p300_random_n100_88 <- norm(diff_g.lasso_p300_random_n100_88, type="2") 
norm_m_g.lasso_p300_random_n100_88 <- norm(diff_g.lasso_p300_random_n100_88, type="m") 

# i = 89
diff_g.lasso_p300_random_n100_89 <- true_precision_p300_random - g.lasso_p300_random_n100_89
norm_f_g.lasso_p300_random_n100_89 <- norm(diff_g.lasso_p300_random_n100_89, type="f") 
norm_1_g.lasso_p300_random_n100_89 <- norm(diff_g.lasso_p300_random_n100_89, type="1") 
norm_2_g.lasso_p300_random_n100_89 <- norm(diff_g.lasso_p300_random_n100_89, type="2") 
norm_m_g.lasso_p300_random_n100_89 <- norm(diff_g.lasso_p300_random_n100_89, type="m") 

# i = 90
diff_g.lasso_p300_random_n100_90 <- true_precision_p300_random - g.lasso_p300_random_n100_90
norm_f_g.lasso_p300_random_n100_90 <- norm(diff_g.lasso_p300_random_n100_90, type="f") 
norm_1_g.lasso_p300_random_n100_90 <- norm(diff_g.lasso_p300_random_n100_90, type="1") 
norm_2_g.lasso_p300_random_n100_90 <- norm(diff_g.lasso_p300_random_n100_90, type="2") 
norm_m_g.lasso_p300_random_n100_90 <- norm(diff_g.lasso_p300_random_n100_90, type="m") 

# i = 91
diff_g.lasso_p300_random_n100_91 <- true_precision_p300_random - g.lasso_p300_random_n100_91
norm_f_g.lasso_p300_random_n100_91 <- norm(diff_g.lasso_p300_random_n100_91, type="f") 
norm_1_g.lasso_p300_random_n100_91 <- norm(diff_g.lasso_p300_random_n100_91, type="1") 
norm_2_g.lasso_p300_random_n100_91 <- norm(diff_g.lasso_p300_random_n100_91, type="2") 
norm_m_g.lasso_p300_random_n100_91 <- norm(diff_g.lasso_p300_random_n100_91, type="m") 

# i = 92
diff_g.lasso_p300_random_n100_92 <- true_precision_p300_random - g.lasso_p300_random_n100_92
norm_f_g.lasso_p300_random_n100_92 <- norm(diff_g.lasso_p300_random_n100_92, type="f") 
norm_1_g.lasso_p300_random_n100_92 <- norm(diff_g.lasso_p300_random_n100_92, type="1") 
norm_2_g.lasso_p300_random_n100_92 <- norm(diff_g.lasso_p300_random_n100_92, type="2") 
norm_m_g.lasso_p300_random_n100_92 <- norm(diff_g.lasso_p300_random_n100_92, type="m") 

# i = 93
diff_g.lasso_p300_random_n100_93 <- true_precision_p300_random - g.lasso_p300_random_n100_93
norm_f_g.lasso_p300_random_n100_93 <- norm(diff_g.lasso_p300_random_n100_93, type="f") 
norm_1_g.lasso_p300_random_n100_93 <- norm(diff_g.lasso_p300_random_n100_93, type="1") 
norm_2_g.lasso_p300_random_n100_93 <- norm(diff_g.lasso_p300_random_n100_93, type="2") 
norm_m_g.lasso_p300_random_n100_93 <- norm(diff_g.lasso_p300_random_n100_93, type="m") 

# i = 94
diff_g.lasso_p300_random_n100_94 <- true_precision_p300_random - g.lasso_p300_random_n100_94
norm_f_g.lasso_p300_random_n100_94 <- norm(diff_g.lasso_p300_random_n100_94, type="f") 
norm_1_g.lasso_p300_random_n100_94 <- norm(diff_g.lasso_p300_random_n100_94, type="1") 
norm_2_g.lasso_p300_random_n100_94 <- norm(diff_g.lasso_p300_random_n100_94, type="2") 
norm_m_g.lasso_p300_random_n100_94 <- norm(diff_g.lasso_p300_random_n100_94, type="m") 

# i = 95
diff_g.lasso_p300_random_n100_95 <- true_precision_p300_random - g.lasso_p300_random_n100_95
norm_f_g.lasso_p300_random_n100_95 <- norm(diff_g.lasso_p300_random_n100_95, type="f") 
norm_1_g.lasso_p300_random_n100_95 <- norm(diff_g.lasso_p300_random_n100_95, type="1") 
norm_2_g.lasso_p300_random_n100_95 <- norm(diff_g.lasso_p300_random_n100_95, type="2") 
norm_m_g.lasso_p300_random_n100_95 <- norm(diff_g.lasso_p300_random_n100_95, type="m") 

# i = 96
diff_g.lasso_p300_random_n100_96 <- true_precision_p300_random - g.lasso_p300_random_n100_96
norm_f_g.lasso_p300_random_n100_96 <- norm(diff_g.lasso_p300_random_n100_96, type="f") 
norm_1_g.lasso_p300_random_n100_96 <- norm(diff_g.lasso_p300_random_n100_96, type="1") 
norm_2_g.lasso_p300_random_n100_96 <- norm(diff_g.lasso_p300_random_n100_96, type="2") 
norm_m_g.lasso_p300_random_n100_96 <- norm(diff_g.lasso_p300_random_n100_96, type="m") 

# i = 97
diff_g.lasso_p300_random_n100_97 <- true_precision_p300_random - g.lasso_p300_random_n100_97
norm_f_g.lasso_p300_random_n100_97 <- norm(diff_g.lasso_p300_random_n100_97, type="f") 
norm_1_g.lasso_p300_random_n100_97 <- norm(diff_g.lasso_p300_random_n100_97, type="1") 
norm_2_g.lasso_p300_random_n100_97 <- norm(diff_g.lasso_p300_random_n100_97, type="2") 
norm_m_g.lasso_p300_random_n100_97 <- norm(diff_g.lasso_p300_random_n100_97, type="m") 

# i = 98
diff_g.lasso_p300_random_n100_98 <- true_precision_p300_random - g.lasso_p300_random_n100_98
norm_f_g.lasso_p300_random_n100_98 <- norm(diff_g.lasso_p300_random_n100_98, type="f") 
norm_1_g.lasso_p300_random_n100_98 <- norm(diff_g.lasso_p300_random_n100_98, type="1") 
norm_2_g.lasso_p300_random_n100_98 <- norm(diff_g.lasso_p300_random_n100_98, type="2") 
norm_m_g.lasso_p300_random_n100_98 <- norm(diff_g.lasso_p300_random_n100_98, type="m") 

# i = 99
diff_g.lasso_p300_random_n100_99 <- true_precision_p300_random - g.lasso_p300_random_n100_99
norm_f_g.lasso_p300_random_n100_99 <- norm(diff_g.lasso_p300_random_n100_99, type="f") 
norm_1_g.lasso_p300_random_n100_99 <- norm(diff_g.lasso_p300_random_n100_99, type="1") 
norm_2_g.lasso_p300_random_n100_99 <- norm(diff_g.lasso_p300_random_n100_99, type="2") 
norm_m_g.lasso_p300_random_n100_99 <- norm(diff_g.lasso_p300_random_n100_99, type="m") 

# i = 100
diff_g.lasso_p300_random_n100_100 <- true_precision_p300_random - g.lasso_p300_random_n100_100
norm_f_g.lasso_p300_random_n100_100 <- norm(diff_g.lasso_p300_random_n100_100, type="f") 
norm_1_g.lasso_p300_random_n100_100 <- norm(diff_g.lasso_p300_random_n100_100, type="1") 
norm_2_g.lasso_p300_random_n100_100 <- norm(diff_g.lasso_p300_random_n100_100, type="2") 
norm_m_g.lasso_p300_random_n100_100 <- norm(diff_g.lasso_p300_random_n100_100, type="m") 



##################################### Norm f #######################################
norm_f_g.lasso_p300_random_n100 <- c(
  norm_f_g.lasso_p300_random_n100_1, 
  norm_f_g.lasso_p300_random_n100_2, 
  norm_f_g.lasso_p300_random_n100_3, 
  norm_f_g.lasso_p300_random_n100_4, 
  norm_f_g.lasso_p300_random_n100_5, 
  norm_f_g.lasso_p300_random_n100_6, 
  norm_f_g.lasso_p300_random_n100_7, 
  norm_f_g.lasso_p300_random_n100_8, 
  norm_f_g.lasso_p300_random_n100_9, 
  norm_f_g.lasso_p300_random_n100_10, 
  norm_f_g.lasso_p300_random_n100_11, 
  norm_f_g.lasso_p300_random_n100_12, 
  norm_f_g.lasso_p300_random_n100_13, 
  norm_f_g.lasso_p300_random_n100_14, 
  norm_f_g.lasso_p300_random_n100_15, 
  norm_f_g.lasso_p300_random_n100_16, 
  norm_f_g.lasso_p300_random_n100_17, 
  norm_f_g.lasso_p300_random_n100_18, 
  norm_f_g.lasso_p300_random_n100_19, 
  norm_f_g.lasso_p300_random_n100_20, 
  norm_f_g.lasso_p300_random_n100_21, 
  norm_f_g.lasso_p300_random_n100_22, 
  norm_f_g.lasso_p300_random_n100_23, 
  norm_f_g.lasso_p300_random_n100_24, 
  norm_f_g.lasso_p300_random_n100_25, 
  norm_f_g.lasso_p300_random_n100_26, 
  norm_f_g.lasso_p300_random_n100_27, 
  norm_f_g.lasso_p300_random_n100_28, 
  norm_f_g.lasso_p300_random_n100_29, 
  norm_f_g.lasso_p300_random_n100_30, 
  norm_f_g.lasso_p300_random_n100_31, 
  norm_f_g.lasso_p300_random_n100_32, 
  norm_f_g.lasso_p300_random_n100_33, 
  norm_f_g.lasso_p300_random_n100_34, 
  norm_f_g.lasso_p300_random_n100_35, 
  norm_f_g.lasso_p300_random_n100_36, 
  norm_f_g.lasso_p300_random_n100_37, 
  norm_f_g.lasso_p300_random_n100_38, 
  norm_f_g.lasso_p300_random_n100_39, 
  norm_f_g.lasso_p300_random_n100_40, 
  norm_f_g.lasso_p300_random_n100_41, 
  norm_f_g.lasso_p300_random_n100_42, 
  norm_f_g.lasso_p300_random_n100_43, 
  norm_f_g.lasso_p300_random_n100_44, 
  norm_f_g.lasso_p300_random_n100_45, 
  norm_f_g.lasso_p300_random_n100_46, 
  norm_f_g.lasso_p300_random_n100_47, 
  norm_f_g.lasso_p300_random_n100_48, 
  norm_f_g.lasso_p300_random_n100_49, 
  norm_f_g.lasso_p300_random_n100_50, 
  norm_f_g.lasso_p300_random_n100_51, 
  norm_f_g.lasso_p300_random_n100_52, 
  norm_f_g.lasso_p300_random_n100_53, 
  norm_f_g.lasso_p300_random_n100_54, 
  norm_f_g.lasso_p300_random_n100_55, 
  norm_f_g.lasso_p300_random_n100_56, 
  norm_f_g.lasso_p300_random_n100_57, 
  norm_f_g.lasso_p300_random_n100_58, 
  norm_f_g.lasso_p300_random_n100_59, 
  norm_f_g.lasso_p300_random_n100_60, 
  norm_f_g.lasso_p300_random_n100_61, 
  norm_f_g.lasso_p300_random_n100_62, 
  norm_f_g.lasso_p300_random_n100_63, 
  norm_f_g.lasso_p300_random_n100_64, 
  norm_f_g.lasso_p300_random_n100_65, 
  norm_f_g.lasso_p300_random_n100_66, 
  norm_f_g.lasso_p300_random_n100_67, 
  norm_f_g.lasso_p300_random_n100_68, 
  norm_f_g.lasso_p300_random_n100_69, 
  norm_f_g.lasso_p300_random_n100_70, 
  norm_f_g.lasso_p300_random_n100_71, 
  norm_f_g.lasso_p300_random_n100_72, 
  norm_f_g.lasso_p300_random_n100_73, 
  norm_f_g.lasso_p300_random_n100_74, 
  norm_f_g.lasso_p300_random_n100_75, 
  norm_f_g.lasso_p300_random_n100_76, 
  norm_f_g.lasso_p300_random_n100_77, 
  norm_f_g.lasso_p300_random_n100_78, 
  norm_f_g.lasso_p300_random_n100_79, 
  norm_f_g.lasso_p300_random_n100_80, 
  norm_f_g.lasso_p300_random_n100_81, 
  norm_f_g.lasso_p300_random_n100_82, 
  norm_f_g.lasso_p300_random_n100_83, 
  norm_f_g.lasso_p300_random_n100_84, 
  norm_f_g.lasso_p300_random_n100_85, 
  norm_f_g.lasso_p300_random_n100_86, 
  norm_f_g.lasso_p300_random_n100_87, 
  norm_f_g.lasso_p300_random_n100_88, 
  norm_f_g.lasso_p300_random_n100_89, 
  norm_f_g.lasso_p300_random_n100_90, 
  norm_f_g.lasso_p300_random_n100_91, 
  norm_f_g.lasso_p300_random_n100_92, 
  norm_f_g.lasso_p300_random_n100_93, 
  norm_f_g.lasso_p300_random_n100_94, 
  norm_f_g.lasso_p300_random_n100_95, 
  norm_f_g.lasso_p300_random_n100_96, 
  norm_f_g.lasso_p300_random_n100_97, 
  norm_f_g.lasso_p300_random_n100_98, 
  norm_f_g.lasso_p300_random_n100_99, 
  norm_f_g.lasso_p300_random_n100_100
)

mean_norm_f_g.lasso_p300_random_n100 <- mean(norm_f_g.lasso_p300_random_n100)
sd_norm_f_g.lasso_p300_random_n100 <- sd(norm_f_g.lasso_p300_random_n100)

##################################### Norm 1 #######################################
norm_1_g.lasso_p300_random_n100 <- c(
  norm_1_g.lasso_p300_random_n100_1, 
  norm_1_g.lasso_p300_random_n100_2, 
  norm_1_g.lasso_p300_random_n100_3, 
  norm_1_g.lasso_p300_random_n100_4, 
  norm_1_g.lasso_p300_random_n100_5, 
  norm_1_g.lasso_p300_random_n100_6, 
  norm_1_g.lasso_p300_random_n100_7, 
  norm_1_g.lasso_p300_random_n100_8, 
  norm_1_g.lasso_p300_random_n100_9, 
  norm_1_g.lasso_p300_random_n100_10, 
  norm_1_g.lasso_p300_random_n100_11, 
  norm_1_g.lasso_p300_random_n100_12, 
  norm_1_g.lasso_p300_random_n100_13, 
  norm_1_g.lasso_p300_random_n100_14, 
  norm_1_g.lasso_p300_random_n100_15, 
  norm_1_g.lasso_p300_random_n100_16, 
  norm_1_g.lasso_p300_random_n100_17, 
  norm_1_g.lasso_p300_random_n100_18, 
  norm_1_g.lasso_p300_random_n100_19, 
  norm_1_g.lasso_p300_random_n100_20, 
  norm_1_g.lasso_p300_random_n100_21, 
  norm_1_g.lasso_p300_random_n100_22, 
  norm_1_g.lasso_p300_random_n100_23, 
  norm_1_g.lasso_p300_random_n100_24, 
  norm_1_g.lasso_p300_random_n100_25, 
  norm_1_g.lasso_p300_random_n100_26, 
  norm_1_g.lasso_p300_random_n100_27, 
  norm_1_g.lasso_p300_random_n100_28, 
  norm_1_g.lasso_p300_random_n100_29, 
  norm_1_g.lasso_p300_random_n100_30, 
  norm_1_g.lasso_p300_random_n100_31, 
  norm_1_g.lasso_p300_random_n100_32, 
  norm_1_g.lasso_p300_random_n100_33, 
  norm_1_g.lasso_p300_random_n100_34, 
  norm_1_g.lasso_p300_random_n100_35, 
  norm_1_g.lasso_p300_random_n100_36, 
  norm_1_g.lasso_p300_random_n100_37, 
  norm_1_g.lasso_p300_random_n100_38, 
  norm_1_g.lasso_p300_random_n100_39, 
  norm_1_g.lasso_p300_random_n100_40, 
  norm_1_g.lasso_p300_random_n100_41, 
  norm_1_g.lasso_p300_random_n100_42, 
  norm_1_g.lasso_p300_random_n100_43, 
  norm_1_g.lasso_p300_random_n100_44, 
  norm_1_g.lasso_p300_random_n100_45, 
  norm_1_g.lasso_p300_random_n100_46, 
  norm_1_g.lasso_p300_random_n100_47, 
  norm_1_g.lasso_p300_random_n100_48, 
  norm_1_g.lasso_p300_random_n100_49, 
  norm_1_g.lasso_p300_random_n100_50, 
  norm_1_g.lasso_p300_random_n100_51, 
  norm_1_g.lasso_p300_random_n100_52, 
  norm_1_g.lasso_p300_random_n100_53, 
  norm_1_g.lasso_p300_random_n100_54, 
  norm_1_g.lasso_p300_random_n100_55, 
  norm_1_g.lasso_p300_random_n100_56, 
  norm_1_g.lasso_p300_random_n100_57, 
  norm_1_g.lasso_p300_random_n100_58, 
  norm_1_g.lasso_p300_random_n100_59, 
  norm_1_g.lasso_p300_random_n100_60, 
  norm_1_g.lasso_p300_random_n100_61, 
  norm_1_g.lasso_p300_random_n100_62, 
  norm_1_g.lasso_p300_random_n100_63, 
  norm_1_g.lasso_p300_random_n100_64, 
  norm_1_g.lasso_p300_random_n100_65, 
  norm_1_g.lasso_p300_random_n100_66, 
  norm_1_g.lasso_p300_random_n100_67, 
  norm_1_g.lasso_p300_random_n100_68, 
  norm_1_g.lasso_p300_random_n100_69, 
  norm_1_g.lasso_p300_random_n100_70, 
  norm_1_g.lasso_p300_random_n100_71, 
  norm_1_g.lasso_p300_random_n100_72, 
  norm_1_g.lasso_p300_random_n100_73, 
  norm_1_g.lasso_p300_random_n100_74, 
  norm_1_g.lasso_p300_random_n100_75, 
  norm_1_g.lasso_p300_random_n100_76, 
  norm_1_g.lasso_p300_random_n100_77, 
  norm_1_g.lasso_p300_random_n100_78, 
  norm_1_g.lasso_p300_random_n100_79, 
  norm_1_g.lasso_p300_random_n100_80, 
  norm_1_g.lasso_p300_random_n100_81, 
  norm_1_g.lasso_p300_random_n100_82, 
  norm_1_g.lasso_p300_random_n100_83, 
  norm_1_g.lasso_p300_random_n100_84, 
  norm_1_g.lasso_p300_random_n100_85, 
  norm_1_g.lasso_p300_random_n100_86, 
  norm_1_g.lasso_p300_random_n100_87, 
  norm_1_g.lasso_p300_random_n100_88, 
  norm_1_g.lasso_p300_random_n100_89, 
  norm_1_g.lasso_p300_random_n100_90, 
  norm_1_g.lasso_p300_random_n100_91, 
  norm_1_g.lasso_p300_random_n100_92, 
  norm_1_g.lasso_p300_random_n100_93, 
  norm_1_g.lasso_p300_random_n100_94, 
  norm_1_g.lasso_p300_random_n100_95, 
  norm_1_g.lasso_p300_random_n100_96, 
  norm_1_g.lasso_p300_random_n100_97, 
  norm_1_g.lasso_p300_random_n100_98, 
  norm_1_g.lasso_p300_random_n100_99, 
  norm_1_g.lasso_p300_random_n100_100
)

mean_norm_1_g.lasso_p300_random_n100 <- mean(norm_1_g.lasso_p300_random_n100)
sd_norm_1_g.lasso_p300_random_n100 <- sd(norm_1_g.lasso_p300_random_n100)

##################################### Norm 2 #######################################
# norm_2_g.lasso_p300_random_n100_1, ..., norm_2_g.lasso_p300_random_n100_100 객체가 존재한다고 가정

norm_2_g.lasso_p300_random_n100 <- c(
  norm_2_g.lasso_p300_random_n100_1, 
  norm_2_g.lasso_p300_random_n100_2, 
  norm_2_g.lasso_p300_random_n100_3, 
  norm_2_g.lasso_p300_random_n100_4, 
  norm_2_g.lasso_p300_random_n100_5, 
  norm_2_g.lasso_p300_random_n100_6, 
  norm_2_g.lasso_p300_random_n100_7, 
  norm_2_g.lasso_p300_random_n100_8, 
  norm_2_g.lasso_p300_random_n100_9, 
  norm_2_g.lasso_p300_random_n100_10, 
  norm_2_g.lasso_p300_random_n100_11, 
  norm_2_g.lasso_p300_random_n100_12, 
  norm_2_g.lasso_p300_random_n100_13, 
  norm_2_g.lasso_p300_random_n100_14, 
  norm_2_g.lasso_p300_random_n100_15, 
  norm_2_g.lasso_p300_random_n100_16, 
  norm_2_g.lasso_p300_random_n100_17, 
  norm_2_g.lasso_p300_random_n100_18, 
  norm_2_g.lasso_p300_random_n100_19, 
  norm_2_g.lasso_p300_random_n100_20, 
  norm_2_g.lasso_p300_random_n100_21, 
  norm_2_g.lasso_p300_random_n100_22, 
  norm_2_g.lasso_p300_random_n100_23, 
  norm_2_g.lasso_p300_random_n100_24, 
  norm_2_g.lasso_p300_random_n100_25, 
  norm_2_g.lasso_p300_random_n100_26, 
  norm_2_g.lasso_p300_random_n100_27, 
  norm_2_g.lasso_p300_random_n100_28, 
  norm_2_g.lasso_p300_random_n100_29, 
  norm_2_g.lasso_p300_random_n100_30, 
  norm_2_g.lasso_p300_random_n100_31, 
  norm_2_g.lasso_p300_random_n100_32, 
  norm_2_g.lasso_p300_random_n100_33, 
  norm_2_g.lasso_p300_random_n100_34, 
  norm_2_g.lasso_p300_random_n100_35, 
  norm_2_g.lasso_p300_random_n100_36, 
  norm_2_g.lasso_p300_random_n100_37, 
  norm_2_g.lasso_p300_random_n100_38, 
  norm_2_g.lasso_p300_random_n100_39, 
  norm_2_g.lasso_p300_random_n100_40, 
  norm_2_g.lasso_p300_random_n100_41, 
  norm_2_g.lasso_p300_random_n100_42, 
  norm_2_g.lasso_p300_random_n100_43, 
  norm_2_g.lasso_p300_random_n100_44, 
  norm_2_g.lasso_p300_random_n100_45, 
  norm_2_g.lasso_p300_random_n100_46, 
  norm_2_g.lasso_p300_random_n100_47, 
  norm_2_g.lasso_p300_random_n100_48, 
  norm_2_g.lasso_p300_random_n100_49, 
  norm_2_g.lasso_p300_random_n100_50, 
  norm_2_g.lasso_p300_random_n100_51, 
  norm_2_g.lasso_p300_random_n100_52, 
  norm_2_g.lasso_p300_random_n100_53, 
  norm_2_g.lasso_p300_random_n100_54, 
  norm_2_g.lasso_p300_random_n100_55, 
  norm_2_g.lasso_p300_random_n100_56, 
  norm_2_g.lasso_p300_random_n100_57, 
  norm_2_g.lasso_p300_random_n100_58, 
  norm_2_g.lasso_p300_random_n100_59, 
  norm_2_g.lasso_p300_random_n100_60, 
  norm_2_g.lasso_p300_random_n100_61, 
  norm_2_g.lasso_p300_random_n100_62, 
  norm_2_g.lasso_p300_random_n100_63, 
  norm_2_g.lasso_p300_random_n100_64, 
  norm_2_g.lasso_p300_random_n100_65, 
  norm_2_g.lasso_p300_random_n100_66, 
  norm_2_g.lasso_p300_random_n100_67, 
  norm_2_g.lasso_p300_random_n100_68, 
  norm_2_g.lasso_p300_random_n100_69, 
  norm_2_g.lasso_p300_random_n100_70, 
  norm_2_g.lasso_p300_random_n100_71, 
  norm_2_g.lasso_p300_random_n100_72, 
  norm_2_g.lasso_p300_random_n100_73, 
  norm_2_g.lasso_p300_random_n100_74, 
  norm_2_g.lasso_p300_random_n100_75, 
  norm_2_g.lasso_p300_random_n100_76, 
  norm_2_g.lasso_p300_random_n100_77, 
  norm_2_g.lasso_p300_random_n100_78, 
  norm_2_g.lasso_p300_random_n100_79, 
  norm_2_g.lasso_p300_random_n100_80, 
  norm_2_g.lasso_p300_random_n100_81, 
  norm_2_g.lasso_p300_random_n100_82, 
  norm_2_g.lasso_p300_random_n100_83, 
  norm_2_g.lasso_p300_random_n100_84, 
  norm_2_g.lasso_p300_random_n100_85, 
  norm_2_g.lasso_p300_random_n100_86, 
  norm_2_g.lasso_p300_random_n100_87, 
  norm_2_g.lasso_p300_random_n100_88, 
  norm_2_g.lasso_p300_random_n100_89, 
  norm_2_g.lasso_p300_random_n100_90, 
  norm_2_g.lasso_p300_random_n100_91, 
  norm_2_g.lasso_p300_random_n100_92, 
  norm_2_g.lasso_p300_random_n100_93, 
  norm_2_g.lasso_p300_random_n100_94, 
  norm_2_g.lasso_p300_random_n100_95, 
  norm_2_g.lasso_p300_random_n100_96, 
  norm_2_g.lasso_p300_random_n100_97, 
  norm_2_g.lasso_p300_random_n100_98, 
  norm_2_g.lasso_p300_random_n100_99, 
  norm_2_g.lasso_p300_random_n100_100
)

mean_norm_2_g.lasso_p300_random_n100 <- mean(norm_2_g.lasso_p300_random_n100)
sd_norm_2_g.lasso_p300_random_n100 <- sd(norm_2_g.lasso_p300_random_n100)


##################################### Norm m #######################################
norm_m_g.lasso_p300_random_n100 <- c(
  norm_m_g.lasso_p300_random_n100_1, 
  norm_m_g.lasso_p300_random_n100_2, 
  norm_m_g.lasso_p300_random_n100_3, 
  norm_m_g.lasso_p300_random_n100_4, 
  norm_m_g.lasso_p300_random_n100_5, 
  norm_m_g.lasso_p300_random_n100_6, 
  norm_m_g.lasso_p300_random_n100_7, 
  norm_m_g.lasso_p300_random_n100_8, 
  norm_m_g.lasso_p300_random_n100_9, 
  norm_m_g.lasso_p300_random_n100_10, 
  norm_m_g.lasso_p300_random_n100_11, 
  norm_m_g.lasso_p300_random_n100_12, 
  norm_m_g.lasso_p300_random_n100_13, 
  norm_m_g.lasso_p300_random_n100_14, 
  norm_m_g.lasso_p300_random_n100_15, 
  norm_m_g.lasso_p300_random_n100_16, 
  norm_m_g.lasso_p300_random_n100_17, 
  norm_m_g.lasso_p300_random_n100_18, 
  norm_m_g.lasso_p300_random_n100_19, 
  norm_m_g.lasso_p300_random_n100_20, 
  norm_m_g.lasso_p300_random_n100_21, 
  norm_m_g.lasso_p300_random_n100_22, 
  norm_m_g.lasso_p300_random_n100_23, 
  norm_m_g.lasso_p300_random_n100_24, 
  norm_m_g.lasso_p300_random_n100_25, 
  norm_m_g.lasso_p300_random_n100_26, 
  norm_m_g.lasso_p300_random_n100_27, 
  norm_m_g.lasso_p300_random_n100_28, 
  norm_m_g.lasso_p300_random_n100_29, 
  norm_m_g.lasso_p300_random_n100_30, 
  norm_m_g.lasso_p300_random_n100_31, 
  norm_m_g.lasso_p300_random_n100_32, 
  norm_m_g.lasso_p300_random_n100_33, 
  norm_m_g.lasso_p300_random_n100_34, 
  norm_m_g.lasso_p300_random_n100_35, 
  norm_m_g.lasso_p300_random_n100_36, 
  norm_m_g.lasso_p300_random_n100_37, 
  norm_m_g.lasso_p300_random_n100_38, 
  norm_m_g.lasso_p300_random_n100_39, 
  norm_m_g.lasso_p300_random_n100_40, 
  norm_m_g.lasso_p300_random_n100_41, 
  norm_m_g.lasso_p300_random_n100_42, 
  norm_m_g.lasso_p300_random_n100_43, 
  norm_m_g.lasso_p300_random_n100_44, 
  norm_m_g.lasso_p300_random_n100_45, 
  norm_m_g.lasso_p300_random_n100_46, 
  norm_m_g.lasso_p300_random_n100_47, 
  norm_m_g.lasso_p300_random_n100_48, 
  norm_m_g.lasso_p300_random_n100_49, 
  norm_m_g.lasso_p300_random_n100_50, 
  norm_m_g.lasso_p300_random_n100_51, 
  norm_m_g.lasso_p300_random_n100_52, 
  norm_m_g.lasso_p300_random_n100_53, 
  norm_m_g.lasso_p300_random_n100_54, 
  norm_m_g.lasso_p300_random_n100_55, 
  norm_m_g.lasso_p300_random_n100_56, 
  norm_m_g.lasso_p300_random_n100_57, 
  norm_m_g.lasso_p300_random_n100_58, 
  norm_m_g.lasso_p300_random_n100_59, 
  norm_m_g.lasso_p300_random_n100_60, 
  norm_m_g.lasso_p300_random_n100_61, 
  norm_m_g.lasso_p300_random_n100_62, 
  norm_m_g.lasso_p300_random_n100_63, 
  norm_m_g.lasso_p300_random_n100_64, 
  norm_m_g.lasso_p300_random_n100_65, 
  norm_m_g.lasso_p300_random_n100_66, 
  norm_m_g.lasso_p300_random_n100_67, 
  norm_m_g.lasso_p300_random_n100_68, 
  norm_m_g.lasso_p300_random_n100_69, 
  norm_m_g.lasso_p300_random_n100_70, 
  norm_m_g.lasso_p300_random_n100_71, 
  norm_m_g.lasso_p300_random_n100_72, 
  norm_m_g.lasso_p300_random_n100_73, 
  norm_m_g.lasso_p300_random_n100_74, 
  norm_m_g.lasso_p300_random_n100_75, 
  norm_m_g.lasso_p300_random_n100_76, 
  norm_m_g.lasso_p300_random_n100_77, 
  norm_m_g.lasso_p300_random_n100_78, 
  norm_m_g.lasso_p300_random_n100_79, 
  norm_m_g.lasso_p300_random_n100_80, 
  norm_m_g.lasso_p300_random_n100_81, 
  norm_m_g.lasso_p300_random_n100_82, 
  norm_m_g.lasso_p300_random_n100_83, 
  norm_m_g.lasso_p300_random_n100_84, 
  norm_m_g.lasso_p300_random_n100_85, 
  norm_m_g.lasso_p300_random_n100_86, 
  norm_m_g.lasso_p300_random_n100_87, 
  norm_m_g.lasso_p300_random_n100_88, 
  norm_m_g.lasso_p300_random_n100_89, 
  norm_m_g.lasso_p300_random_n100_90, 
  norm_m_g.lasso_p300_random_n100_91, 
  norm_m_g.lasso_p300_random_n100_92, 
  norm_m_g.lasso_p300_random_n100_93, 
  norm_m_g.lasso_p300_random_n100_94, 
  norm_m_g.lasso_p300_random_n100_95, 
  norm_m_g.lasso_p300_random_n100_96, 
  norm_m_g.lasso_p300_random_n100_97, 
  norm_m_g.lasso_p300_random_n100_98, 
  norm_m_g.lasso_p300_random_n100_99, 
  norm_m_g.lasso_p300_random_n100_100
)

mean_norm_m_g.lasso_p300_random_n100 <- mean(norm_m_g.lasso_p300_random_n100)
sd_norm_m_g.lasso_p300_random_n100 <- sd(norm_m_g.lasso_p300_random_n100)


##################### time ########################
time_g.lasso_p300_random_n100/100




##########################################################
####################### CLIME ############################
##########################################################

# i = 1
diff_clime_p300_random_n100_1 <- true_precision_p300_random - result_clime_p300_random_n100_1
norm_f_clime_p300_random_n100_1 <- norm(diff_clime_p300_random_n100_1, type="f") 
norm_1_clime_p300_random_n100_1 <- norm(diff_clime_p300_random_n100_1, type="1") 
norm_2_clime_p300_random_n100_1 <- norm(diff_clime_p300_random_n100_1, type="2") 
norm_m_clime_p300_random_n100_1 <- norm(diff_clime_p300_random_n100_1, type="m") 

# i = 2
diff_clime_p300_random_n100_2 <- true_precision_p300_random - result_clime_p300_random_n100_2
norm_f_clime_p300_random_n100_2 <- norm(diff_clime_p300_random_n100_2, type="f") 
norm_1_clime_p300_random_n100_2 <- norm(diff_clime_p300_random_n100_2, type="1") 
norm_2_clime_p300_random_n100_2 <- norm(diff_clime_p300_random_n100_2, type="2") 
norm_m_clime_p300_random_n100_2 <- norm(diff_clime_p300_random_n100_2, type="m") 

# i = 3
diff_clime_p300_random_n100_3 <- true_precision_p300_random - result_clime_p300_random_n100_3
norm_f_clime_p300_random_n100_3 <- norm(diff_clime_p300_random_n100_3, type="f") 
norm_1_clime_p300_random_n100_3 <- norm(diff_clime_p300_random_n100_3, type="1") 
norm_2_clime_p300_random_n100_3 <- norm(diff_clime_p300_random_n100_3, type="2") 
norm_m_clime_p300_random_n100_3 <- norm(diff_clime_p300_random_n100_3, type="m") 

# i = 4
diff_clime_p300_random_n100_4 <- true_precision_p300_random - result_clime_p300_random_n100_4
norm_f_clime_p300_random_n100_4 <- norm(diff_clime_p300_random_n100_4, type="f") 
norm_1_clime_p300_random_n100_4 <- norm(diff_clime_p300_random_n100_4, type="1") 
norm_2_clime_p300_random_n100_4 <- norm(diff_clime_p300_random_n100_4, type="2") 
norm_m_clime_p300_random_n100_4 <- norm(diff_clime_p300_random_n100_4, type="m") 

# i = 5
diff_clime_p300_random_n100_5 <- true_precision_p300_random - result_clime_p300_random_n100_5
norm_f_clime_p300_random_n100_5 <- norm(diff_clime_p300_random_n100_5, type="f") 
norm_1_clime_p300_random_n100_5 <- norm(diff_clime_p300_random_n100_5, type="1") 
norm_2_clime_p300_random_n100_5 <- norm(diff_clime_p300_random_n100_5, type="2") 
norm_m_clime_p300_random_n100_5 <- norm(diff_clime_p300_random_n100_5, type="m") 

# i = 6
diff_clime_p300_random_n100_6 <- true_precision_p300_random - result_clime_p300_random_n100_6
norm_f_clime_p300_random_n100_6 <- norm(diff_clime_p300_random_n100_6, type="f") 
norm_1_clime_p300_random_n100_6 <- norm(diff_clime_p300_random_n100_6, type="1") 
norm_2_clime_p300_random_n100_6 <- norm(diff_clime_p300_random_n100_6, type="2") 
norm_m_clime_p300_random_n100_6 <- norm(diff_clime_p300_random_n100_6, type="m") 

# i = 7
diff_clime_p300_random_n100_7 <- true_precision_p300_random - result_clime_p300_random_n100_7
norm_f_clime_p300_random_n100_7 <- norm(diff_clime_p300_random_n100_7, type="f") 
norm_1_clime_p300_random_n100_7 <- norm(diff_clime_p300_random_n100_7, type="1") 
norm_2_clime_p300_random_n100_7 <- norm(diff_clime_p300_random_n100_7, type="2") 
norm_m_clime_p300_random_n100_7 <- norm(diff_clime_p300_random_n100_7, type="m") 

# i = 8
diff_clime_p300_random_n100_8 <- true_precision_p300_random - result_clime_p300_random_n100_8
norm_f_clime_p300_random_n100_8 <- norm(diff_clime_p300_random_n100_8, type="f") 
norm_1_clime_p300_random_n100_8 <- norm(diff_clime_p300_random_n100_8, type="1") 
norm_2_clime_p300_random_n100_8 <- norm(diff_clime_p300_random_n100_8, type="2") 
norm_m_clime_p300_random_n100_8 <- norm(diff_clime_p300_random_n100_8, type="m") 

# i = 9
diff_clime_p300_random_n100_9 <- true_precision_p300_random - result_clime_p300_random_n100_9
norm_f_clime_p300_random_n100_9 <- norm(diff_clime_p300_random_n100_9, type="f") 
norm_1_clime_p300_random_n100_9 <- norm(diff_clime_p300_random_n100_9, type="1") 
norm_2_clime_p300_random_n100_9 <- norm(diff_clime_p300_random_n100_9, type="2") 
norm_m_clime_p300_random_n100_9 <- norm(diff_clime_p300_random_n100_9, type="m") 

# i = 10
diff_clime_p300_random_n100_10 <- true_precision_p300_random - result_clime_p300_random_n100_10
norm_f_clime_p300_random_n100_10 <- norm(diff_clime_p300_random_n100_10, type="f") 
norm_1_clime_p300_random_n100_10 <- norm(diff_clime_p300_random_n100_10, type="1") 
norm_2_clime_p300_random_n100_10 <- norm(diff_clime_p300_random_n100_10, type="2") 
norm_m_clime_p300_random_n100_10 <- norm(diff_clime_p300_random_n100_10, type="m") 

# i = 11
diff_clime_p300_random_n100_11 <- true_precision_p300_random - result_clime_p300_random_n100_11
norm_f_clime_p300_random_n100_11 <- norm(diff_clime_p300_random_n100_11, type="f") 
norm_1_clime_p300_random_n100_11 <- norm(diff_clime_p300_random_n100_11, type="1") 
norm_2_clime_p300_random_n100_11 <- norm(diff_clime_p300_random_n100_11, type="2") 
norm_m_clime_p300_random_n100_11 <- norm(diff_clime_p300_random_n100_11, type="m") 

# i = 12
diff_clime_p300_random_n100_12 <- true_precision_p300_random - result_clime_p300_random_n100_12
norm_f_clime_p300_random_n100_12 <- norm(diff_clime_p300_random_n100_12, type="f") 
norm_1_clime_p300_random_n100_12 <- norm(diff_clime_p300_random_n100_12, type="1") 
norm_2_clime_p300_random_n100_12 <- norm(diff_clime_p300_random_n100_12, type="2") 
norm_m_clime_p300_random_n100_12 <- norm(diff_clime_p300_random_n100_12, type="m") 

# i = 13
diff_clime_p300_random_n100_13 <- true_precision_p300_random - result_clime_p300_random_n100_13
norm_f_clime_p300_random_n100_13 <- norm(diff_clime_p300_random_n100_13, type="f") 
norm_1_clime_p300_random_n100_13 <- norm(diff_clime_p300_random_n100_13, type="1") 
norm_2_clime_p300_random_n100_13 <- norm(diff_clime_p300_random_n100_13, type="2") 
norm_m_clime_p300_random_n100_13 <- norm(diff_clime_p300_random_n100_13, type="m") 

# i = 14
diff_clime_p300_random_n100_14 <- true_precision_p300_random - result_clime_p300_random_n100_14
norm_f_clime_p300_random_n100_14 <- norm(diff_clime_p300_random_n100_14, type="f") 
norm_1_clime_p300_random_n100_14 <- norm(diff_clime_p300_random_n100_14, type="1") 
norm_2_clime_p300_random_n100_14 <- norm(diff_clime_p300_random_n100_14, type="2") 
norm_m_clime_p300_random_n100_14 <- norm(diff_clime_p300_random_n100_14, type="m") 

# i = 15
diff_clime_p300_random_n100_15 <- true_precision_p300_random - result_clime_p300_random_n100_15
norm_f_clime_p300_random_n100_15 <- norm(diff_clime_p300_random_n100_15, type="f") 
norm_1_clime_p300_random_n100_15 <- norm(diff_clime_p300_random_n100_15, type="1") 
norm_2_clime_p300_random_n100_15 <- norm(diff_clime_p300_random_n100_15, type="2") 
norm_m_clime_p300_random_n100_15 <- norm(diff_clime_p300_random_n100_15, type="m") 

# i = 16
diff_clime_p300_random_n100_16 <- true_precision_p300_random - result_clime_p300_random_n100_16
norm_f_clime_p300_random_n100_16 <- norm(diff_clime_p300_random_n100_16, type="f") 
norm_1_clime_p300_random_n100_16 <- norm(diff_clime_p300_random_n100_16, type="1") 
norm_2_clime_p300_random_n100_16 <- norm(diff_clime_p300_random_n100_16, type="2") 
norm_m_clime_p300_random_n100_16 <- norm(diff_clime_p300_random_n100_16, type="m") 

# i = 17
diff_clime_p300_random_n100_17 <- true_precision_p300_random - result_clime_p300_random_n100_17
norm_f_clime_p300_random_n100_17 <- norm(diff_clime_p300_random_n100_17, type="f") 
norm_1_clime_p300_random_n100_17 <- norm(diff_clime_p300_random_n100_17, type="1") 
norm_2_clime_p300_random_n100_17 <- norm(diff_clime_p300_random_n100_17, type="2") 
norm_m_clime_p300_random_n100_17 <- norm(diff_clime_p300_random_n100_17, type="m") 

# i = 18
diff_clime_p300_random_n100_18 <- true_precision_p300_random - result_clime_p300_random_n100_18
norm_f_clime_p300_random_n100_18 <- norm(diff_clime_p300_random_n100_18, type="f") 
norm_1_clime_p300_random_n100_18 <- norm(diff_clime_p300_random_n100_18, type="1") 
norm_2_clime_p300_random_n100_18 <- norm(diff_clime_p300_random_n100_18, type="2") 
norm_m_clime_p300_random_n100_18 <- norm(diff_clime_p300_random_n100_18, type="m") 

# i = 19
diff_clime_p300_random_n100_19 <- true_precision_p300_random - result_clime_p300_random_n100_19
norm_f_clime_p300_random_n100_19 <- norm(diff_clime_p300_random_n100_19, type="f") 
norm_1_clime_p300_random_n100_19 <- norm(diff_clime_p300_random_n100_19, type="1") 
norm_2_clime_p300_random_n100_19 <- norm(diff_clime_p300_random_n100_19, type="2") 
norm_m_clime_p300_random_n100_19 <- norm(diff_clime_p300_random_n100_19, type="m") 

# i = 20
diff_clime_p300_random_n100_20 <- true_precision_p300_random - result_clime_p300_random_n100_20
norm_f_clime_p300_random_n100_20 <- norm(diff_clime_p300_random_n100_20, type="f") 
norm_1_clime_p300_random_n100_20 <- norm(diff_clime_p300_random_n100_20, type="1") 
norm_2_clime_p300_random_n100_20 <- norm(diff_clime_p300_random_n100_20, type="2") 
norm_m_clime_p300_random_n100_20 <- norm(diff_clime_p300_random_n100_20, type="m") 

# i = 21
diff_clime_p300_random_n100_21 <- true_precision_p300_random - result_clime_p300_random_n100_21
norm_f_clime_p300_random_n100_21 <- norm(diff_clime_p300_random_n100_21, type="f") 
norm_1_clime_p300_random_n100_21 <- norm(diff_clime_p300_random_n100_21, type="1") 
norm_2_clime_p300_random_n100_21 <- norm(diff_clime_p300_random_n100_21, type="2") 
norm_m_clime_p300_random_n100_21 <- norm(diff_clime_p300_random_n100_21, type="m") 

# i = 22
diff_clime_p300_random_n100_22 <- true_precision_p300_random - result_clime_p300_random_n100_22
norm_f_clime_p300_random_n100_22 <- norm(diff_clime_p300_random_n100_22, type="f") 
norm_1_clime_p300_random_n100_22 <- norm(diff_clime_p300_random_n100_22, type="1") 
norm_2_clime_p300_random_n100_22 <- norm(diff_clime_p300_random_n100_22, type="2") 
norm_m_clime_p300_random_n100_22 <- norm(diff_clime_p300_random_n100_22, type="m") 

# i = 23
diff_clime_p300_random_n100_23 <- true_precision_p300_random - result_clime_p300_random_n100_23
norm_f_clime_p300_random_n100_23 <- norm(diff_clime_p300_random_n100_23, type="f") 
norm_1_clime_p300_random_n100_23 <- norm(diff_clime_p300_random_n100_23, type="1") 
norm_2_clime_p300_random_n100_23 <- norm(diff_clime_p300_random_n100_23, type="2") 
norm_m_clime_p300_random_n100_23 <- norm(diff_clime_p300_random_n100_23, type="m") 

# i = 24
diff_clime_p300_random_n100_24 <- true_precision_p300_random - result_clime_p300_random_n100_24
norm_f_clime_p300_random_n100_24 <- norm(diff_clime_p300_random_n100_24, type="f") 
norm_1_clime_p300_random_n100_24 <- norm(diff_clime_p300_random_n100_24, type="1") 
norm_2_clime_p300_random_n100_24 <- norm(diff_clime_p300_random_n100_24, type="2") 
norm_m_clime_p300_random_n100_24 <- norm(diff_clime_p300_random_n100_24, type="m") 

# i = 25
diff_clime_p300_random_n100_25 <- true_precision_p300_random - result_clime_p300_random_n100_25
norm_f_clime_p300_random_n100_25 <- norm(diff_clime_p300_random_n100_25, type="f") 
norm_1_clime_p300_random_n100_25 <- norm(diff_clime_p300_random_n100_25, type="1") 
norm_2_clime_p300_random_n100_25 <- norm(diff_clime_p300_random_n100_25, type="2") 
norm_m_clime_p300_random_n100_25 <- norm(diff_clime_p300_random_n100_25, type="m") 

# i = 26
diff_clime_p300_random_n100_26 <- true_precision_p300_random - result_clime_p300_random_n100_26
norm_f_clime_p300_random_n100_26 <- norm(diff_clime_p300_random_n100_26, type="f") 
norm_1_clime_p300_random_n100_26 <- norm(diff_clime_p300_random_n100_26, type="1") 
norm_2_clime_p300_random_n100_26 <- norm(diff_clime_p300_random_n100_26, type="2") 
norm_m_clime_p300_random_n100_26 <- norm(diff_clime_p300_random_n100_26, type="m") 

# i = 27
diff_clime_p300_random_n100_27 <- true_precision_p300_random - result_clime_p300_random_n100_27
norm_f_clime_p300_random_n100_27 <- norm(diff_clime_p300_random_n100_27, type="f") 
norm_1_clime_p300_random_n100_27 <- norm(diff_clime_p300_random_n100_27, type="1") 
norm_2_clime_p300_random_n100_27 <- norm(diff_clime_p300_random_n100_27, type="2") 
norm_m_clime_p300_random_n100_27 <- norm(diff_clime_p300_random_n100_27, type="m") 

# i = 28
diff_clime_p300_random_n100_28 <- true_precision_p300_random - result_clime_p300_random_n100_28
norm_f_clime_p300_random_n100_28 <- norm(diff_clime_p300_random_n100_28, type="f") 
norm_1_clime_p300_random_n100_28 <- norm(diff_clime_p300_random_n100_28, type="1") 
norm_2_clime_p300_random_n100_28 <- norm(diff_clime_p300_random_n100_28, type="2") 
norm_m_clime_p300_random_n100_28 <- norm(diff_clime_p300_random_n100_28, type="m") 

# i = 29
diff_clime_p300_random_n100_29 <- true_precision_p300_random - result_clime_p300_random_n100_29
norm_f_clime_p300_random_n100_29 <- norm(diff_clime_p300_random_n100_29, type="f") 
norm_1_clime_p300_random_n100_29 <- norm(diff_clime_p300_random_n100_29, type="1") 
norm_2_clime_p300_random_n100_29 <- norm(diff_clime_p300_random_n100_29, type="2") 
norm_m_clime_p300_random_n100_29 <- norm(diff_clime_p300_random_n100_29, type="m") 

# i = 30
diff_clime_p300_random_n100_30 <- true_precision_p300_random - result_clime_p300_random_n100_30
norm_f_clime_p300_random_n100_30 <- norm(diff_clime_p300_random_n100_30, type="f") 
norm_1_clime_p300_random_n100_30 <- norm(diff_clime_p300_random_n100_30, type="1") 
norm_2_clime_p300_random_n100_30 <- norm(diff_clime_p300_random_n100_30, type="2") 
norm_m_clime_p300_random_n100_30 <- norm(diff_clime_p300_random_n100_30, type="m") 

# i = 31
diff_clime_p300_random_n100_31 <- true_precision_p300_random - result_clime_p300_random_n100_31
norm_f_clime_p300_random_n100_31 <- norm(diff_clime_p300_random_n100_31, type="f") 
norm_1_clime_p300_random_n100_31 <- norm(diff_clime_p300_random_n100_31, type="1") 
norm_2_clime_p300_random_n100_31 <- norm(diff_clime_p300_random_n100_31, type="2") 
norm_m_clime_p300_random_n100_31 <- norm(diff_clime_p300_random_n100_31, type="m") 

# i = 32
diff_clime_p300_random_n100_32 <- true_precision_p300_random - result_clime_p300_random_n100_32
norm_f_clime_p300_random_n100_32 <- norm(diff_clime_p300_random_n100_32, type="f") 
norm_1_clime_p300_random_n100_32 <- norm(diff_clime_p300_random_n100_32, type="1") 
norm_2_clime_p300_random_n100_32 <- norm(diff_clime_p300_random_n100_32, type="2") 
norm_m_clime_p300_random_n100_32 <- norm(diff_clime_p300_random_n100_32, type="m") 

# i = 33
diff_clime_p300_random_n100_33 <- true_precision_p300_random - result_clime_p300_random_n100_33
norm_f_clime_p300_random_n100_33 <- norm(diff_clime_p300_random_n100_33, type="f") 
norm_1_clime_p300_random_n100_33 <- norm(diff_clime_p300_random_n100_33, type="1") 
norm_2_clime_p300_random_n100_33 <- norm(diff_clime_p300_random_n100_33, type="2") 
norm_m_clime_p300_random_n100_33 <- norm(diff_clime_p300_random_n100_33, type="m") 

# i = 34
diff_clime_p300_random_n100_34 <- true_precision_p300_random - result_clime_p300_random_n100_34
norm_f_clime_p300_random_n100_34 <- norm(diff_clime_p300_random_n100_34, type="f") 
norm_1_clime_p300_random_n100_34 <- norm(diff_clime_p300_random_n100_34, type="1") 
norm_2_clime_p300_random_n100_34 <- norm(diff_clime_p300_random_n100_34, type="2") 
norm_m_clime_p300_random_n100_34 <- norm(diff_clime_p300_random_n100_34, type="m") 

# i = 35
diff_clime_p300_random_n100_35 <- true_precision_p300_random - result_clime_p300_random_n100_35
norm_f_clime_p300_random_n100_35 <- norm(diff_clime_p300_random_n100_35, type="f") 
norm_1_clime_p300_random_n100_35 <- norm(diff_clime_p300_random_n100_35, type="1") 
norm_2_clime_p300_random_n100_35 <- norm(diff_clime_p300_random_n100_35, type="2") 
norm_m_clime_p300_random_n100_35 <- norm(diff_clime_p300_random_n100_35, type="m") 

# i = 36
diff_clime_p300_random_n100_36 <- true_precision_p300_random - result_clime_p300_random_n100_36
norm_f_clime_p300_random_n100_36 <- norm(diff_clime_p300_random_n100_36, type="f") 
norm_1_clime_p300_random_n100_36 <- norm(diff_clime_p300_random_n100_36, type="1") 
norm_2_clime_p300_random_n100_36 <- norm(diff_clime_p300_random_n100_36, type="2") 
norm_m_clime_p300_random_n100_36 <- norm(diff_clime_p300_random_n100_36, type="m") 

# i = 37
diff_clime_p300_random_n100_37 <- true_precision_p300_random - result_clime_p300_random_n100_37
norm_f_clime_p300_random_n100_37 <- norm(diff_clime_p300_random_n100_37, type="f") 
norm_1_clime_p300_random_n100_37 <- norm(diff_clime_p300_random_n100_37, type="1") 
norm_2_clime_p300_random_n100_37 <- norm(diff_clime_p300_random_n100_37, type="2") 
norm_m_clime_p300_random_n100_37 <- norm(diff_clime_p300_random_n100_37, type="m") 

# i = 38
diff_clime_p300_random_n100_38 <- true_precision_p300_random - result_clime_p300_random_n100_38
norm_f_clime_p300_random_n100_38 <- norm(diff_clime_p300_random_n100_38, type="f") 
norm_1_clime_p300_random_n100_38 <- norm(diff_clime_p300_random_n100_38, type="1") 
norm_2_clime_p300_random_n100_38 <- norm(diff_clime_p300_random_n100_38, type="2") 
norm_m_clime_p300_random_n100_38 <- norm(diff_clime_p300_random_n100_38, type="m") 

# i = 39
diff_clime_p300_random_n100_39 <- true_precision_p300_random - result_clime_p300_random_n100_39
norm_f_clime_p300_random_n100_39 <- norm(diff_clime_p300_random_n100_39, type="f") 
norm_1_clime_p300_random_n100_39 <- norm(diff_clime_p300_random_n100_39, type="1") 
norm_2_clime_p300_random_n100_39 <- norm(diff_clime_p300_random_n100_39, type="2") 
norm_m_clime_p300_random_n100_39 <- norm(diff_clime_p300_random_n100_39, type="m") 

# i = 40
diff_clime_p300_random_n100_40 <- true_precision_p300_random - result_clime_p300_random_n100_40
norm_f_clime_p300_random_n100_40 <- norm(diff_clime_p300_random_n100_40, type="f") 
norm_1_clime_p300_random_n100_40 <- norm(diff_clime_p300_random_n100_40, type="1") 
norm_2_clime_p300_random_n100_40 <- norm(diff_clime_p300_random_n100_40, type="2") 
norm_m_clime_p300_random_n100_40 <- norm(diff_clime_p300_random_n100_40, type="m") 

# i = 41
diff_clime_p300_random_n100_41 <- true_precision_p300_random - result_clime_p300_random_n100_41
norm_f_clime_p300_random_n100_41 <- norm(diff_clime_p300_random_n100_41, type="f") 
norm_1_clime_p300_random_n100_41 <- norm(diff_clime_p300_random_n100_41, type="1") 
norm_2_clime_p300_random_n100_41 <- norm(diff_clime_p300_random_n100_41, type="2") 
norm_m_clime_p300_random_n100_41 <- norm(diff_clime_p300_random_n100_41, type="m") 

# i = 42
diff_clime_p300_random_n100_42 <- true_precision_p300_random - result_clime_p300_random_n100_42
norm_f_clime_p300_random_n100_42 <- norm(diff_clime_p300_random_n100_42, type="f") 
norm_1_clime_p300_random_n100_42 <- norm(diff_clime_p300_random_n100_42, type="1") 
norm_2_clime_p300_random_n100_42 <- norm(diff_clime_p300_random_n100_42, type="2") 
norm_m_clime_p300_random_n100_42 <- norm(diff_clime_p300_random_n100_42, type="m") 

# i = 43
diff_clime_p300_random_n100_43 <- true_precision_p300_random - result_clime_p300_random_n100_43
norm_f_clime_p300_random_n100_43 <- norm(diff_clime_p300_random_n100_43, type="f") 
norm_1_clime_p300_random_n100_43 <- norm(diff_clime_p300_random_n100_43, type="1") 
norm_2_clime_p300_random_n100_43 <- norm(diff_clime_p300_random_n100_43, type="2") 
norm_m_clime_p300_random_n100_43 <- norm(diff_clime_p300_random_n100_43, type="m") 

# i = 44
diff_clime_p300_random_n100_44 <- true_precision_p300_random - result_clime_p300_random_n100_44
norm_f_clime_p300_random_n100_44 <- norm(diff_clime_p300_random_n100_44, type="f") 
norm_1_clime_p300_random_n100_44 <- norm(diff_clime_p300_random_n100_44, type="1") 
norm_2_clime_p300_random_n100_44 <- norm(diff_clime_p300_random_n100_44, type="2") 
norm_m_clime_p300_random_n100_44 <- norm(diff_clime_p300_random_n100_44, type="m") 

# i = 45
diff_clime_p300_random_n100_45 <- true_precision_p300_random - result_clime_p300_random_n100_45
norm_f_clime_p300_random_n100_45 <- norm(diff_clime_p300_random_n100_45, type="f") 
norm_1_clime_p300_random_n100_45 <- norm(diff_clime_p300_random_n100_45, type="1") 
norm_2_clime_p300_random_n100_45 <- norm(diff_clime_p300_random_n100_45, type="2") 
norm_m_clime_p300_random_n100_45 <- norm(diff_clime_p300_random_n100_45, type="m") 

# i = 46
diff_clime_p300_random_n100_46 <- true_precision_p300_random - result_clime_p300_random_n100_46
norm_f_clime_p300_random_n100_46 <- norm(diff_clime_p300_random_n100_46, type="f") 
norm_1_clime_p300_random_n100_46 <- norm(diff_clime_p300_random_n100_46, type="1") 
norm_2_clime_p300_random_n100_46 <- norm(diff_clime_p300_random_n100_46, type="2") 
norm_m_clime_p300_random_n100_46 <- norm(diff_clime_p300_random_n100_46, type="m") 

# i = 47
diff_clime_p300_random_n100_47 <- true_precision_p300_random - result_clime_p300_random_n100_47
norm_f_clime_p300_random_n100_47 <- norm(diff_clime_p300_random_n100_47, type="f") 
norm_1_clime_p300_random_n100_47 <- norm(diff_clime_p300_random_n100_47, type="1") 
norm_2_clime_p300_random_n100_47 <- norm(diff_clime_p300_random_n100_47, type="2") 
norm_m_clime_p300_random_n100_47 <- norm(diff_clime_p300_random_n100_47, type="m") 

# i = 48
diff_clime_p300_random_n100_48 <- true_precision_p300_random - result_clime_p300_random_n100_48
norm_f_clime_p300_random_n100_48 <- norm(diff_clime_p300_random_n100_48, type="f") 
norm_1_clime_p300_random_n100_48 <- norm(diff_clime_p300_random_n100_48, type="1") 
norm_2_clime_p300_random_n100_48 <- norm(diff_clime_p300_random_n100_48, type="2") 
norm_m_clime_p300_random_n100_48 <- norm(diff_clime_p300_random_n100_48, type="m") 

# i = 49
diff_clime_p300_random_n100_49 <- true_precision_p300_random - result_clime_p300_random_n100_49
norm_f_clime_p300_random_n100_49 <- norm(diff_clime_p300_random_n100_49, type="f") 
norm_1_clime_p300_random_n100_49 <- norm(diff_clime_p300_random_n100_49, type="1") 
norm_2_clime_p300_random_n100_49 <- norm(diff_clime_p300_random_n100_49, type="2") 
norm_m_clime_p300_random_n100_49 <- norm(diff_clime_p300_random_n100_49, type="m") 

# i = 50
diff_clime_p300_random_n100_50 <- true_precision_p300_random - result_clime_p300_random_n100_50
norm_f_clime_p300_random_n100_50 <- norm(diff_clime_p300_random_n100_50, type="f") 
norm_1_clime_p300_random_n100_50 <- norm(diff_clime_p300_random_n100_50, type="1") 
norm_2_clime_p300_random_n100_50 <- norm(diff_clime_p300_random_n100_50, type="2") 
norm_m_clime_p300_random_n100_50 <- norm(diff_clime_p300_random_n100_50, type="m") 

# i = 51
diff_clime_p300_random_n100_51 <- true_precision_p300_random - result_clime_p300_random_n100_51
norm_f_clime_p300_random_n100_51 <- norm(diff_clime_p300_random_n100_51, type="f") 
norm_1_clime_p300_random_n100_51 <- norm(diff_clime_p300_random_n100_51, type="1") 
norm_2_clime_p300_random_n100_51 <- norm(diff_clime_p300_random_n100_51, type="2") 
norm_m_clime_p300_random_n100_51 <- norm(diff_clime_p300_random_n100_51, type="m") 

# i = 52
diff_clime_p300_random_n100_52 <- true_precision_p300_random - result_clime_p300_random_n100_52
norm_f_clime_p300_random_n100_52 <- norm(diff_clime_p300_random_n100_52, type="f") 
norm_1_clime_p300_random_n100_52 <- norm(diff_clime_p300_random_n100_52, type="1") 
norm_2_clime_p300_random_n100_52 <- norm(diff_clime_p300_random_n100_52, type="2") 
norm_m_clime_p300_random_n100_52 <- norm(diff_clime_p300_random_n100_52, type="m") 

# i = 53
diff_clime_p300_random_n100_53 <- true_precision_p300_random - result_clime_p300_random_n100_53
norm_f_clime_p300_random_n100_53 <- norm(diff_clime_p300_random_n100_53, type="f") 
norm_1_clime_p300_random_n100_53 <- norm(diff_clime_p300_random_n100_53, type="1") 
norm_2_clime_p300_random_n100_53 <- norm(diff_clime_p300_random_n100_53, type="2") 
norm_m_clime_p300_random_n100_53 <- norm(diff_clime_p300_random_n100_53, type="m") 

# i = 54
diff_clime_p300_random_n100_54 <- true_precision_p300_random - result_clime_p300_random_n100_54
norm_f_clime_p300_random_n100_54 <- norm(diff_clime_p300_random_n100_54, type="f") 
norm_1_clime_p300_random_n100_54 <- norm(diff_clime_p300_random_n100_54, type="1") 
norm_2_clime_p300_random_n100_54 <- norm(diff_clime_p300_random_n100_54, type="2") 
norm_m_clime_p300_random_n100_54 <- norm(diff_clime_p300_random_n100_54, type="m") 

# i = 55
diff_clime_p300_random_n100_55 <- true_precision_p300_random - result_clime_p300_random_n100_55
norm_f_clime_p300_random_n100_55 <- norm(diff_clime_p300_random_n100_55, type="f") 
norm_1_clime_p300_random_n100_55 <- norm(diff_clime_p300_random_n100_55, type="1") 
norm_2_clime_p300_random_n100_55 <- norm(diff_clime_p300_random_n100_55, type="2") 
norm_m_clime_p300_random_n100_55 <- norm(diff_clime_p300_random_n100_55, type="m") 

# i = 56
diff_clime_p300_random_n100_56 <- true_precision_p300_random - result_clime_p300_random_n100_56
norm_f_clime_p300_random_n100_56 <- norm(diff_clime_p300_random_n100_56, type="f") 
norm_1_clime_p300_random_n100_56 <- norm(diff_clime_p300_random_n100_56, type="1") 
norm_2_clime_p300_random_n100_56 <- norm(diff_clime_p300_random_n100_56, type="2") 
norm_m_clime_p300_random_n100_56 <- norm(diff_clime_p300_random_n100_56, type="m") 

# i = 57
diff_clime_p300_random_n100_57 <- true_precision_p300_random - result_clime_p300_random_n100_57
norm_f_clime_p300_random_n100_57 <- norm(diff_clime_p300_random_n100_57, type="f") 
norm_1_clime_p300_random_n100_57 <- norm(diff_clime_p300_random_n100_57, type="1") 
norm_2_clime_p300_random_n100_57 <- norm(diff_clime_p300_random_n100_57, type="2") 
norm_m_clime_p300_random_n100_57 <- norm(diff_clime_p300_random_n100_57, type="m") 

# i = 58
diff_clime_p300_random_n100_58 <- true_precision_p300_random - result_clime_p300_random_n100_58
norm_f_clime_p300_random_n100_58 <- norm(diff_clime_p300_random_n100_58, type="f") 
norm_1_clime_p300_random_n100_58 <- norm(diff_clime_p300_random_n100_58, type="1") 
norm_2_clime_p300_random_n100_58 <- norm(diff_clime_p300_random_n100_58, type="2") 
norm_m_clime_p300_random_n100_58 <- norm(diff_clime_p300_random_n100_58, type="m") 

# i = 59
diff_clime_p300_random_n100_59 <- true_precision_p300_random - result_clime_p300_random_n100_59
norm_f_clime_p300_random_n100_59 <- norm(diff_clime_p300_random_n100_59, type="f") 
norm_1_clime_p300_random_n100_59 <- norm(diff_clime_p300_random_n100_59, type="1") 
norm_2_clime_p300_random_n100_59 <- norm(diff_clime_p300_random_n100_59, type="2") 
norm_m_clime_p300_random_n100_59 <- norm(diff_clime_p300_random_n100_59, type="m") 

# i = 60
diff_clime_p300_random_n100_60 <- true_precision_p300_random - result_clime_p300_random_n100_60
norm_f_clime_p300_random_n100_60 <- norm(diff_clime_p300_random_n100_60, type="f") 
norm_1_clime_p300_random_n100_60 <- norm(diff_clime_p300_random_n100_60, type="1") 
norm_2_clime_p300_random_n100_60 <- norm(diff_clime_p300_random_n100_60, type="2") 
norm_m_clime_p300_random_n100_60 <- norm(diff_clime_p300_random_n100_60, type="m") 

# i = 61
diff_clime_p300_random_n100_61 <- true_precision_p300_random - result_clime_p300_random_n100_61
norm_f_clime_p300_random_n100_61 <- norm(diff_clime_p300_random_n100_61, type="f") 
norm_1_clime_p300_random_n100_61 <- norm(diff_clime_p300_random_n100_61, type="1") 
norm_2_clime_p300_random_n100_61 <- norm(diff_clime_p300_random_n100_61, type="2") 
norm_m_clime_p300_random_n100_61 <- norm(diff_clime_p300_random_n100_61, type="m") 

# i = 62
diff_clime_p300_random_n100_62 <- true_precision_p300_random - result_clime_p300_random_n100_62
norm_f_clime_p300_random_n100_62 <- norm(diff_clime_p300_random_n100_62, type="f") 
norm_1_clime_p300_random_n100_62 <- norm(diff_clime_p300_random_n100_62, type="1") 
norm_2_clime_p300_random_n100_62 <- norm(diff_clime_p300_random_n100_62, type="2") 
norm_m_clime_p300_random_n100_62 <- norm(diff_clime_p300_random_n100_62, type="m") 

# i = 63
diff_clime_p300_random_n100_63 <- true_precision_p300_random - result_clime_p300_random_n100_63
norm_f_clime_p300_random_n100_63 <- norm(diff_clime_p300_random_n100_63, type="f") 
norm_1_clime_p300_random_n100_63 <- norm(diff_clime_p300_random_n100_63, type="1") 
norm_2_clime_p300_random_n100_63 <- norm(diff_clime_p300_random_n100_63, type="2") 
norm_m_clime_p300_random_n100_63 <- norm(diff_clime_p300_random_n100_63, type="m") 

# i = 64
diff_clime_p300_random_n100_64 <- true_precision_p300_random - result_clime_p300_random_n100_64
norm_f_clime_p300_random_n100_64 <- norm(diff_clime_p300_random_n100_64, type="f") 
norm_1_clime_p300_random_n100_64 <- norm(diff_clime_p300_random_n100_64, type="1") 
norm_2_clime_p300_random_n100_64 <- norm(diff_clime_p300_random_n100_64, type="2") 
norm_m_clime_p300_random_n100_64 <- norm(diff_clime_p300_random_n100_64, type="m") 

# i = 65
diff_clime_p300_random_n100_65 <- true_precision_p300_random - result_clime_p300_random_n100_65
norm_f_clime_p300_random_n100_65 <- norm(diff_clime_p300_random_n100_65, type="f") 
norm_1_clime_p300_random_n100_65 <- norm(diff_clime_p300_random_n100_65, type="1") 
norm_2_clime_p300_random_n100_65 <- norm(diff_clime_p300_random_n100_65, type="2") 
norm_m_clime_p300_random_n100_65 <- norm(diff_clime_p300_random_n100_65, type="m") 

# i = 66
diff_clime_p300_random_n100_66 <- true_precision_p300_random - result_clime_p300_random_n100_66
norm_f_clime_p300_random_n100_66 <- norm(diff_clime_p300_random_n100_66, type="f") 
norm_1_clime_p300_random_n100_66 <- norm(diff_clime_p300_random_n100_66, type="1") 
norm_2_clime_p300_random_n100_66 <- norm(diff_clime_p300_random_n100_66, type="2") 
norm_m_clime_p300_random_n100_66 <- norm(diff_clime_p300_random_n100_66, type="m") 

# i = 67
diff_clime_p300_random_n100_67 <- true_precision_p300_random - result_clime_p300_random_n100_67
norm_f_clime_p300_random_n100_67 <- norm(diff_clime_p300_random_n100_67, type="f") 
norm_1_clime_p300_random_n100_67 <- norm(diff_clime_p300_random_n100_67, type="1") 
norm_2_clime_p300_random_n100_67 <- norm(diff_clime_p300_random_n100_67, type="2") 
norm_m_clime_p300_random_n100_67 <- norm(diff_clime_p300_random_n100_67, type="m") 

# i = 68
diff_clime_p300_random_n100_68 <- true_precision_p300_random - result_clime_p300_random_n100_68
norm_f_clime_p300_random_n100_68 <- norm(diff_clime_p300_random_n100_68, type="f") 
norm_1_clime_p300_random_n100_68 <- norm(diff_clime_p300_random_n100_68, type="1") 
norm_2_clime_p300_random_n100_68 <- norm(diff_clime_p300_random_n100_68, type="2") 
norm_m_clime_p300_random_n100_68 <- norm(diff_clime_p300_random_n100_68, type="m") 

# i = 69
diff_clime_p300_random_n100_69 <- true_precision_p300_random - result_clime_p300_random_n100_69
norm_f_clime_p300_random_n100_69 <- norm(diff_clime_p300_random_n100_69, type="f") 
norm_1_clime_p300_random_n100_69 <- norm(diff_clime_p300_random_n100_69, type="1") 
norm_2_clime_p300_random_n100_69 <- norm(diff_clime_p300_random_n100_69, type="2") 
norm_m_clime_p300_random_n100_69 <- norm(diff_clime_p300_random_n100_69, type="m") 

# i = 70
diff_clime_p300_random_n100_70 <- true_precision_p300_random - result_clime_p300_random_n100_70
norm_f_clime_p300_random_n100_70 <- norm(diff_clime_p300_random_n100_70, type="f") 
norm_1_clime_p300_random_n100_70 <- norm(diff_clime_p300_random_n100_70, type="1") 
norm_2_clime_p300_random_n100_70 <- norm(diff_clime_p300_random_n100_70, type="2") 
norm_m_clime_p300_random_n100_70 <- norm(diff_clime_p300_random_n100_70, type="m") 

# i = 71
diff_clime_p300_random_n100_71 <- true_precision_p300_random - result_clime_p300_random_n100_71
norm_f_clime_p300_random_n100_71 <- norm(diff_clime_p300_random_n100_71, type="f") 
norm_1_clime_p300_random_n100_71 <- norm(diff_clime_p300_random_n100_71, type="1") 
norm_2_clime_p300_random_n100_71 <- norm(diff_clime_p300_random_n100_71, type="2") 
norm_m_clime_p300_random_n100_71 <- norm(diff_clime_p300_random_n100_71, type="m") 

# i = 72
diff_clime_p300_random_n100_72 <- true_precision_p300_random - result_clime_p300_random_n100_72
norm_f_clime_p300_random_n100_72 <- norm(diff_clime_p300_random_n100_72, type="f") 
norm_1_clime_p300_random_n100_72 <- norm(diff_clime_p300_random_n100_72, type="1") 
norm_2_clime_p300_random_n100_72 <- norm(diff_clime_p300_random_n100_72, type="2") 
norm_m_clime_p300_random_n100_72 <- norm(diff_clime_p300_random_n100_72, type="m") 

# i = 73
diff_clime_p300_random_n100_73 <- true_precision_p300_random - result_clime_p300_random_n100_73
norm_f_clime_p300_random_n100_73 <- norm(diff_clime_p300_random_n100_73, type="f") 
norm_1_clime_p300_random_n100_73 <- norm(diff_clime_p300_random_n100_73, type="1") 
norm_2_clime_p300_random_n100_73 <- norm(diff_clime_p300_random_n100_73, type="2") 
norm_m_clime_p300_random_n100_73 <- norm(diff_clime_p300_random_n100_73, type="m") 

# i = 74
diff_clime_p300_random_n100_74 <- true_precision_p300_random - result_clime_p300_random_n100_74
norm_f_clime_p300_random_n100_74 <- norm(diff_clime_p300_random_n100_74, type="f") 
norm_1_clime_p300_random_n100_74 <- norm(diff_clime_p300_random_n100_74, type="1") 
norm_2_clime_p300_random_n100_74 <- norm(diff_clime_p300_random_n100_74, type="2") 
norm_m_clime_p300_random_n100_74 <- norm(diff_clime_p300_random_n100_74, type="m") 

# i = 75
diff_clime_p300_random_n100_75 <- true_precision_p300_random - result_clime_p300_random_n100_75
norm_f_clime_p300_random_n100_75 <- norm(diff_clime_p300_random_n100_75, type="f") 
norm_1_clime_p300_random_n100_75 <- norm(diff_clime_p300_random_n100_75, type="1") 
norm_2_clime_p300_random_n100_75 <- norm(diff_clime_p300_random_n100_75, type="2") 
norm_m_clime_p300_random_n100_75 <- norm(diff_clime_p300_random_n100_75, type="m") 

# i = 76
diff_clime_p300_random_n100_76 <- true_precision_p300_random - result_clime_p300_random_n100_76
norm_f_clime_p300_random_n100_76 <- norm(diff_clime_p300_random_n100_76, type="f") 
norm_1_clime_p300_random_n100_76 <- norm(diff_clime_p300_random_n100_76, type="1") 
norm_2_clime_p300_random_n100_76 <- norm(diff_clime_p300_random_n100_76, type="2") 
norm_m_clime_p300_random_n100_76 <- norm(diff_clime_p300_random_n100_76, type="m") 

# i = 77
diff_clime_p300_random_n100_77 <- true_precision_p300_random - result_clime_p300_random_n100_77
norm_f_clime_p300_random_n100_77 <- norm(diff_clime_p300_random_n100_77, type="f") 
norm_1_clime_p300_random_n100_77 <- norm(diff_clime_p300_random_n100_77, type="1") 
norm_2_clime_p300_random_n100_77 <- norm(diff_clime_p300_random_n100_77, type="2") 
norm_m_clime_p300_random_n100_77 <- norm(diff_clime_p300_random_n100_77, type="m") 

# i = 78
diff_clime_p300_random_n100_78 <- true_precision_p300_random - result_clime_p300_random_n100_78
norm_f_clime_p300_random_n100_78 <- norm(diff_clime_p300_random_n100_78, type="f") 
norm_1_clime_p300_random_n100_78 <- norm(diff_clime_p300_random_n100_78, type="1") 
norm_2_clime_p300_random_n100_78 <- norm(diff_clime_p300_random_n100_78, type="2") 
norm_m_clime_p300_random_n100_78 <- norm(diff_clime_p300_random_n100_78, type="m") 

# i = 79
diff_clime_p300_random_n100_79 <- true_precision_p300_random - result_clime_p300_random_n100_79
norm_f_clime_p300_random_n100_79 <- norm(diff_clime_p300_random_n100_79, type="f") 
norm_1_clime_p300_random_n100_79 <- norm(diff_clime_p300_random_n100_79, type="1") 
norm_2_clime_p300_random_n100_79 <- norm(diff_clime_p300_random_n100_79, type="2") 
norm_m_clime_p300_random_n100_79 <- norm(diff_clime_p300_random_n100_79, type="m") 

# i = 80
diff_clime_p300_random_n100_80 <- true_precision_p300_random - result_clime_p300_random_n100_80
norm_f_clime_p300_random_n100_80 <- norm(diff_clime_p300_random_n100_80, type="f") 
norm_1_clime_p300_random_n100_80 <- norm(diff_clime_p300_random_n100_80, type="1") 
norm_2_clime_p300_random_n100_80 <- norm(diff_clime_p300_random_n100_80, type="2") 
norm_m_clime_p300_random_n100_80 <- norm(diff_clime_p300_random_n100_80, type="m") 

# i = 81
diff_clime_p300_random_n100_81 <- true_precision_p300_random - result_clime_p300_random_n100_81
norm_f_clime_p300_random_n100_81 <- norm(diff_clime_p300_random_n100_81, type="f") 
norm_1_clime_p300_random_n100_81 <- norm(diff_clime_p300_random_n100_81, type="1") 
norm_2_clime_p300_random_n100_81 <- norm(diff_clime_p300_random_n100_81, type="2") 
norm_m_clime_p300_random_n100_81 <- norm(diff_clime_p300_random_n100_81, type="m") 

# i = 82
diff_clime_p300_random_n100_82 <- true_precision_p300_random - result_clime_p300_random_n100_82
norm_f_clime_p300_random_n100_82 <- norm(diff_clime_p300_random_n100_82, type="f") 
norm_1_clime_p300_random_n100_82 <- norm(diff_clime_p300_random_n100_82, type="1") 
norm_2_clime_p300_random_n100_82 <- norm(diff_clime_p300_random_n100_82, type="2") 
norm_m_clime_p300_random_n100_82 <- norm(diff_clime_p300_random_n100_82, type="m") 

# i = 83
diff_clime_p300_random_n100_83 <- true_precision_p300_random - result_clime_p300_random_n100_83
norm_f_clime_p300_random_n100_83 <- norm(diff_clime_p300_random_n100_83, type="f") 
norm_1_clime_p300_random_n100_83 <- norm(diff_clime_p300_random_n100_83, type="1") 
norm_2_clime_p300_random_n100_83 <- norm(diff_clime_p300_random_n100_83, type="2") 
norm_m_clime_p300_random_n100_83 <- norm(diff_clime_p300_random_n100_83, type="m") 

# i = 84
diff_clime_p300_random_n100_84 <- true_precision_p300_random - result_clime_p300_random_n100_84
norm_f_clime_p300_random_n100_84 <- norm(diff_clime_p300_random_n100_84, type="f") 
norm_1_clime_p300_random_n100_84 <- norm(diff_clime_p300_random_n100_84, type="1") 
norm_2_clime_p300_random_n100_84 <- norm(diff_clime_p300_random_n100_84, type="2") 
norm_m_clime_p300_random_n100_84 <- norm(diff_clime_p300_random_n100_84, type="m") 

# i = 85
diff_clime_p300_random_n100_85 <- true_precision_p300_random - result_clime_p300_random_n100_85
norm_f_clime_p300_random_n100_85 <- norm(diff_clime_p300_random_n100_85, type="f") 
norm_1_clime_p300_random_n100_85 <- norm(diff_clime_p300_random_n100_85, type="1") 
norm_2_clime_p300_random_n100_85 <- norm(diff_clime_p300_random_n100_85, type="2") 
norm_m_clime_p300_random_n100_85 <- norm(diff_clime_p300_random_n100_85, type="m") 

# i = 86
diff_clime_p300_random_n100_86 <- true_precision_p300_random - result_clime_p300_random_n100_86
norm_f_clime_p300_random_n100_86 <- norm(diff_clime_p300_random_n100_86, type="f") 
norm_1_clime_p300_random_n100_86 <- norm(diff_clime_p300_random_n100_86, type="1") 
norm_2_clime_p300_random_n100_86 <- norm(diff_clime_p300_random_n100_86, type="2") 
norm_m_clime_p300_random_n100_86 <- norm(diff_clime_p300_random_n100_86, type="m") 

# i = 87
diff_clime_p300_random_n100_87 <- true_precision_p300_random - result_clime_p300_random_n100_87
norm_f_clime_p300_random_n100_87 <- norm(diff_clime_p300_random_n100_87, type="f") 
norm_1_clime_p300_random_n100_87 <- norm(diff_clime_p300_random_n100_87, type="1") 
norm_2_clime_p300_random_n100_87 <- norm(diff_clime_p300_random_n100_87, type="2") 
norm_m_clime_p300_random_n100_87 <- norm(diff_clime_p300_random_n100_87, type="m") 

# i = 88
diff_clime_p300_random_n100_88 <- true_precision_p300_random - result_clime_p300_random_n100_88
norm_f_clime_p300_random_n100_88 <- norm(diff_clime_p300_random_n100_88, type="f") 
norm_1_clime_p300_random_n100_88 <- norm(diff_clime_p300_random_n100_88, type="1") 
norm_2_clime_p300_random_n100_88 <- norm(diff_clime_p300_random_n100_88, type="2") 
norm_m_clime_p300_random_n100_88 <- norm(diff_clime_p300_random_n100_88, type="m") 

# i = 89
diff_clime_p300_random_n100_89 <- true_precision_p300_random - result_clime_p300_random_n100_89
norm_f_clime_p300_random_n100_89 <- norm(diff_clime_p300_random_n100_89, type="f") 
norm_1_clime_p300_random_n100_89 <- norm(diff_clime_p300_random_n100_89, type="1") 
norm_2_clime_p300_random_n100_89 <- norm(diff_clime_p300_random_n100_89, type="2") 
norm_m_clime_p300_random_n100_89 <- norm(diff_clime_p300_random_n100_89, type="m") 

# i = 90
diff_clime_p300_random_n100_90 <- true_precision_p300_random - result_clime_p300_random_n100_90
norm_f_clime_p300_random_n100_90 <- norm(diff_clime_p300_random_n100_90, type="f") 
norm_1_clime_p300_random_n100_90 <- norm(diff_clime_p300_random_n100_90, type="1") 
norm_2_clime_p300_random_n100_90 <- norm(diff_clime_p300_random_n100_90, type="2") 
norm_m_clime_p300_random_n100_90 <- norm(diff_clime_p300_random_n100_90, type="m") 

# i = 91
diff_clime_p300_random_n100_91 <- true_precision_p300_random - result_clime_p300_random_n100_91
norm_f_clime_p300_random_n100_91 <- norm(diff_clime_p300_random_n100_91, type="f") 
norm_1_clime_p300_random_n100_91 <- norm(diff_clime_p300_random_n100_91, type="1") 
norm_2_clime_p300_random_n100_91 <- norm(diff_clime_p300_random_n100_91, type="2") 
norm_m_clime_p300_random_n100_91 <- norm(diff_clime_p300_random_n100_91, type="m") 

# i = 92
diff_clime_p300_random_n100_92 <- true_precision_p300_random - result_clime_p300_random_n100_92
norm_f_clime_p300_random_n100_92 <- norm(diff_clime_p300_random_n100_92, type="f") 
norm_1_clime_p300_random_n100_92 <- norm(diff_clime_p300_random_n100_92, type="1") 
norm_2_clime_p300_random_n100_92 <- norm(diff_clime_p300_random_n100_92, type="2") 
norm_m_clime_p300_random_n100_92 <- norm(diff_clime_p300_random_n100_92, type="m") 

# i = 93
diff_clime_p300_random_n100_93 <- true_precision_p300_random - result_clime_p300_random_n100_93
norm_f_clime_p300_random_n100_93 <- norm(diff_clime_p300_random_n100_93, type="f") 
norm_1_clime_p300_random_n100_93 <- norm(diff_clime_p300_random_n100_93, type="1") 
norm_2_clime_p300_random_n100_93 <- norm(diff_clime_p300_random_n100_93, type="2") 
norm_m_clime_p300_random_n100_93 <- norm(diff_clime_p300_random_n100_93, type="m") 

# i = 94
diff_clime_p300_random_n100_94 <- true_precision_p300_random - result_clime_p300_random_n100_94
norm_f_clime_p300_random_n100_94 <- norm(diff_clime_p300_random_n100_94, type="f") 
norm_1_clime_p300_random_n100_94 <- norm(diff_clime_p300_random_n100_94, type="1") 
norm_2_clime_p300_random_n100_94 <- norm(diff_clime_p300_random_n100_94, type="2") 
norm_m_clime_p300_random_n100_94 <- norm(diff_clime_p300_random_n100_94, type="m") 

# i = 95
diff_clime_p300_random_n100_95 <- true_precision_p300_random - result_clime_p300_random_n100_95
norm_f_clime_p300_random_n100_95 <- norm(diff_clime_p300_random_n100_95, type="f") 
norm_1_clime_p300_random_n100_95 <- norm(diff_clime_p300_random_n100_95, type="1") 
norm_2_clime_p300_random_n100_95 <- norm(diff_clime_p300_random_n100_95, type="2") 
norm_m_clime_p300_random_n100_95 <- norm(diff_clime_p300_random_n100_95, type="m") 

# i = 96
diff_clime_p300_random_n100_96 <- true_precision_p300_random - result_clime_p300_random_n100_96
norm_f_clime_p300_random_n100_96 <- norm(diff_clime_p300_random_n100_96, type="f") 
norm_1_clime_p300_random_n100_96 <- norm(diff_clime_p300_random_n100_96, type="1") 
norm_2_clime_p300_random_n100_96 <- norm(diff_clime_p300_random_n100_96, type="2") 
norm_m_clime_p300_random_n100_96 <- norm(diff_clime_p300_random_n100_96, type="m") 

# i = 97
diff_clime_p300_random_n100_97 <- true_precision_p300_random - result_clime_p300_random_n100_97
norm_f_clime_p300_random_n100_97 <- norm(diff_clime_p300_random_n100_97, type="f") 
norm_1_clime_p300_random_n100_97 <- norm(diff_clime_p300_random_n100_97, type="1") 
norm_2_clime_p300_random_n100_97 <- norm(diff_clime_p300_random_n100_97, type="2") 
norm_m_clime_p300_random_n100_97 <- norm(diff_clime_p300_random_n100_97, type="m") 

# i = 98
diff_clime_p300_random_n100_98 <- true_precision_p300_random - result_clime_p300_random_n100_98
norm_f_clime_p300_random_n100_98 <- norm(diff_clime_p300_random_n100_98, type="f") 
norm_1_clime_p300_random_n100_98 <- norm(diff_clime_p300_random_n100_98, type="1") 
norm_2_clime_p300_random_n100_98 <- norm(diff_clime_p300_random_n100_98, type="2") 
norm_m_clime_p300_random_n100_98 <- norm(diff_clime_p300_random_n100_98, type="m") 

# i = 99
diff_clime_p300_random_n100_99 <- true_precision_p300_random - result_clime_p300_random_n100_99
norm_f_clime_p300_random_n100_99 <- norm(diff_clime_p300_random_n100_99, type="f") 
norm_1_clime_p300_random_n100_99 <- norm(diff_clime_p300_random_n100_99, type="1") 
norm_2_clime_p300_random_n100_99 <- norm(diff_clime_p300_random_n100_99, type="2") 
norm_m_clime_p300_random_n100_99 <- norm(diff_clime_p300_random_n100_99, type="m") 

# i = 100
diff_clime_p300_random_n100_100 <- true_precision_p300_random - result_clime_p300_random_n100_100
norm_f_clime_p300_random_n100_100 <- norm(diff_clime_p300_random_n100_100, type="f") 
norm_1_clime_p300_random_n100_100 <- norm(diff_clime_p300_random_n100_100, type="1") 
norm_2_clime_p300_random_n100_100 <- norm(diff_clime_p300_random_n100_100, type="2") 
norm_m_clime_p300_random_n100_100 <- norm(diff_clime_p300_random_n100_100, type="m") 


#################### f norm #######################
norm_f_clime_p300_random_n100 <- c(
  norm_f_clime_p300_random_n100_1, 
  norm_f_clime_p300_random_n100_2, 
  norm_f_clime_p300_random_n100_3, 
  norm_f_clime_p300_random_n100_4, 
  norm_f_clime_p300_random_n100_5, 
  norm_f_clime_p300_random_n100_6, 
  norm_f_clime_p300_random_n100_7, 
  norm_f_clime_p300_random_n100_8, 
  norm_f_clime_p300_random_n100_9, 
  norm_f_clime_p300_random_n100_10, 
  norm_f_clime_p300_random_n100_11, 
  norm_f_clime_p300_random_n100_12, 
  norm_f_clime_p300_random_n100_13, 
  norm_f_clime_p300_random_n100_14, 
  norm_f_clime_p300_random_n100_15, 
  norm_f_clime_p300_random_n100_16, 
  norm_f_clime_p300_random_n100_17, 
  norm_f_clime_p300_random_n100_18, 
  norm_f_clime_p300_random_n100_19, 
  norm_f_clime_p300_random_n100_20, 
  norm_f_clime_p300_random_n100_21, 
  norm_f_clime_p300_random_n100_22, 
  norm_f_clime_p300_random_n100_23, 
  norm_f_clime_p300_random_n100_24, 
  norm_f_clime_p300_random_n100_25, 
  norm_f_clime_p300_random_n100_26, 
  norm_f_clime_p300_random_n100_27, 
  norm_f_clime_p300_random_n100_28, 
  norm_f_clime_p300_random_n100_29, 
  norm_f_clime_p300_random_n100_30, 
  norm_f_clime_p300_random_n100_31, 
  norm_f_clime_p300_random_n100_32, 
  norm_f_clime_p300_random_n100_33, 
  norm_f_clime_p300_random_n100_34, 
  norm_f_clime_p300_random_n100_35, 
  norm_f_clime_p300_random_n100_36, 
  norm_f_clime_p300_random_n100_37, 
  norm_f_clime_p300_random_n100_38, 
  norm_f_clime_p300_random_n100_39, 
  norm_f_clime_p300_random_n100_40, 
  norm_f_clime_p300_random_n100_41, 
  norm_f_clime_p300_random_n100_42, 
  norm_f_clime_p300_random_n100_43, 
  norm_f_clime_p300_random_n100_44, 
  norm_f_clime_p300_random_n100_45, 
  norm_f_clime_p300_random_n100_46, 
  norm_f_clime_p300_random_n100_47, 
  norm_f_clime_p300_random_n100_48, 
  norm_f_clime_p300_random_n100_49, 
  norm_f_clime_p300_random_n100_50, 
  norm_f_clime_p300_random_n100_51, 
  norm_f_clime_p300_random_n100_52, 
  norm_f_clime_p300_random_n100_53, 
  norm_f_clime_p300_random_n100_54, 
  norm_f_clime_p300_random_n100_55, 
  norm_f_clime_p300_random_n100_56, 
  norm_f_clime_p300_random_n100_57, 
  norm_f_clime_p300_random_n100_58, 
  norm_f_clime_p300_random_n100_59, 
  norm_f_clime_p300_random_n100_60, 
  norm_f_clime_p300_random_n100_61, 
  norm_f_clime_p300_random_n100_62, 
  norm_f_clime_p300_random_n100_63, 
  norm_f_clime_p300_random_n100_64, 
  norm_f_clime_p300_random_n100_65, 
  norm_f_clime_p300_random_n100_66, 
  norm_f_clime_p300_random_n100_67, 
  norm_f_clime_p300_random_n100_68, 
  norm_f_clime_p300_random_n100_69, 
  norm_f_clime_p300_random_n100_70, 
  norm_f_clime_p300_random_n100_71, 
  norm_f_clime_p300_random_n100_72, 
  norm_f_clime_p300_random_n100_73, 
  norm_f_clime_p300_random_n100_74, 
  norm_f_clime_p300_random_n100_75, 
  norm_f_clime_p300_random_n100_76, 
  norm_f_clime_p300_random_n100_77, 
  norm_f_clime_p300_random_n100_78, 
  norm_f_clime_p300_random_n100_79, 
  norm_f_clime_p300_random_n100_80, 
  norm_f_clime_p300_random_n100_81, 
  norm_f_clime_p300_random_n100_82, 
  norm_f_clime_p300_random_n100_83, 
  norm_f_clime_p300_random_n100_84, 
  norm_f_clime_p300_random_n100_85, 
  norm_f_clime_p300_random_n100_86, 
  norm_f_clime_p300_random_n100_87, 
  norm_f_clime_p300_random_n100_88, 
  norm_f_clime_p300_random_n100_89, 
  norm_f_clime_p300_random_n100_90, 
  norm_f_clime_p300_random_n100_91, 
  norm_f_clime_p300_random_n100_92, 
  norm_f_clime_p300_random_n100_93, 
  norm_f_clime_p300_random_n100_94, 
  norm_f_clime_p300_random_n100_95, 
  norm_f_clime_p300_random_n100_96, 
  norm_f_clime_p300_random_n100_97, 
  norm_f_clime_p300_random_n100_98, 
  norm_f_clime_p300_random_n100_99, 
  norm_f_clime_p300_random_n100_100
)


mean_norm_f_clime_p300_random_n100 <-mean(norm_f_clime_p300_random_n100)
sd_norm_f_clime_p300_random_n100 <-sd(norm_f_clime_p300_random_n100)


#################### 1 norm #######################
norm_1_clime_p300_random_n100 <- c(
  norm_1_clime_p300_random_n100_1, 
  norm_1_clime_p300_random_n100_2, 
  norm_1_clime_p300_random_n100_3, 
  norm_1_clime_p300_random_n100_4, 
  norm_1_clime_p300_random_n100_5, 
  norm_1_clime_p300_random_n100_6, 
  norm_1_clime_p300_random_n100_7, 
  norm_1_clime_p300_random_n100_8, 
  norm_1_clime_p300_random_n100_9, 
  norm_1_clime_p300_random_n100_10, 
  norm_1_clime_p300_random_n100_11, 
  norm_1_clime_p300_random_n100_12, 
  norm_1_clime_p300_random_n100_13, 
  norm_1_clime_p300_random_n100_14, 
  norm_1_clime_p300_random_n100_15, 
  norm_1_clime_p300_random_n100_16, 
  norm_1_clime_p300_random_n100_17, 
  norm_1_clime_p300_random_n100_18, 
  norm_1_clime_p300_random_n100_19, 
  norm_1_clime_p300_random_n100_20, 
  norm_1_clime_p300_random_n100_21, 
  norm_1_clime_p300_random_n100_22, 
  norm_1_clime_p300_random_n100_23, 
  norm_1_clime_p300_random_n100_24, 
  norm_1_clime_p300_random_n100_25, 
  norm_1_clime_p300_random_n100_26, 
  norm_1_clime_p300_random_n100_27, 
  norm_1_clime_p300_random_n100_28, 
  norm_1_clime_p300_random_n100_29, 
  norm_1_clime_p300_random_n100_30, 
  norm_1_clime_p300_random_n100_31, 
  norm_1_clime_p300_random_n100_32, 
  norm_1_clime_p300_random_n100_33, 
  norm_1_clime_p300_random_n100_34, 
  norm_1_clime_p300_random_n100_35, 
  norm_1_clime_p300_random_n100_36, 
  norm_1_clime_p300_random_n100_37, 
  norm_1_clime_p300_random_n100_38, 
  norm_1_clime_p300_random_n100_39, 
  norm_1_clime_p300_random_n100_40, 
  norm_1_clime_p300_random_n100_41, 
  norm_1_clime_p300_random_n100_42, 
  norm_1_clime_p300_random_n100_43, 
  norm_1_clime_p300_random_n100_44, 
  norm_1_clime_p300_random_n100_45, 
  norm_1_clime_p300_random_n100_46, 
  norm_1_clime_p300_random_n100_47, 
  norm_1_clime_p300_random_n100_48, 
  norm_1_clime_p300_random_n100_49, 
  norm_1_clime_p300_random_n100_50, 
  norm_1_clime_p300_random_n100_51, 
  norm_1_clime_p300_random_n100_52, 
  norm_1_clime_p300_random_n100_53, 
  norm_1_clime_p300_random_n100_54, 
  norm_1_clime_p300_random_n100_55, 
  norm_1_clime_p300_random_n100_56, 
  norm_1_clime_p300_random_n100_57, 
  norm_1_clime_p300_random_n100_58, 
  norm_1_clime_p300_random_n100_59, 
  norm_1_clime_p300_random_n100_60, 
  norm_1_clime_p300_random_n100_61, 
  norm_1_clime_p300_random_n100_62, 
  norm_1_clime_p300_random_n100_63, 
  norm_1_clime_p300_random_n100_64, 
  norm_1_clime_p300_random_n100_65, 
  norm_1_clime_p300_random_n100_66, 
  norm_1_clime_p300_random_n100_67, 
  norm_1_clime_p300_random_n100_68, 
  norm_1_clime_p300_random_n100_69, 
  norm_1_clime_p300_random_n100_70, 
  norm_1_clime_p300_random_n100_71, 
  norm_1_clime_p300_random_n100_72, 
  norm_1_clime_p300_random_n100_73, 
  norm_1_clime_p300_random_n100_74, 
  norm_1_clime_p300_random_n100_75, 
  norm_1_clime_p300_random_n100_76, 
  norm_1_clime_p300_random_n100_77, 
  norm_1_clime_p300_random_n100_78, 
  norm_1_clime_p300_random_n100_79, 
  norm_1_clime_p300_random_n100_80, 
  norm_1_clime_p300_random_n100_81, 
  norm_1_clime_p300_random_n100_82, 
  norm_1_clime_p300_random_n100_83, 
  norm_1_clime_p300_random_n100_84, 
  norm_1_clime_p300_random_n100_85, 
  norm_1_clime_p300_random_n100_86, 
  norm_1_clime_p300_random_n100_87, 
  norm_1_clime_p300_random_n100_88, 
  norm_1_clime_p300_random_n100_89, 
  norm_1_clime_p300_random_n100_90, 
  norm_1_clime_p300_random_n100_91, 
  norm_1_clime_p300_random_n100_92, 
  norm_1_clime_p300_random_n100_93, 
  norm_1_clime_p300_random_n100_94, 
  norm_1_clime_p300_random_n100_95, 
  norm_1_clime_p300_random_n100_96, 
  norm_1_clime_p300_random_n100_97, 
  norm_1_clime_p300_random_n100_98, 
  norm_1_clime_p300_random_n100_99, 
  norm_1_clime_p300_random_n100_100
)


mean_norm_1_clime_p300_random_n100 <-mean(norm_1_clime_p300_random_n100)
sd_norm_1_clime_p300_random_n100 <-sd(norm_1_clime_p300_random_n100)

#################### 2 norm #######################
# norm_2_clime_p300_random_n100_1, ..., norm_2_clime_p300_random_n100_100 객체가 존재한다고 가정

norm_2_clime_p300_random_n100 <- c(
  norm_2_clime_p300_random_n100_1,
  norm_2_clime_p300_random_n100_2,
  norm_2_clime_p300_random_n100_3,
  norm_2_clime_p300_random_n100_4,
  norm_2_clime_p300_random_n100_5,
  norm_2_clime_p300_random_n100_6,
  norm_2_clime_p300_random_n100_7,
  norm_2_clime_p300_random_n100_8,
  norm_2_clime_p300_random_n100_9,
  norm_2_clime_p300_random_n100_10,
  norm_2_clime_p300_random_n100_11,
  norm_2_clime_p300_random_n100_12,
  norm_2_clime_p300_random_n100_13,
  norm_2_clime_p300_random_n100_14,
  norm_2_clime_p300_random_n100_15,
  norm_2_clime_p300_random_n100_16,
  norm_2_clime_p300_random_n100_17,
  norm_2_clime_p300_random_n100_18,
  norm_2_clime_p300_random_n100_19,
  norm_2_clime_p300_random_n100_20,
  norm_2_clime_p300_random_n100_21,
  norm_2_clime_p300_random_n100_22,
  norm_2_clime_p300_random_n100_23,
  norm_2_clime_p300_random_n100_24,
  norm_2_clime_p300_random_n100_25,
  norm_2_clime_p300_random_n100_26,
  norm_2_clime_p300_random_n100_27,
  norm_2_clime_p300_random_n100_28,
  norm_2_clime_p300_random_n100_29,
  norm_2_clime_p300_random_n100_30,
  norm_2_clime_p300_random_n100_31,
  norm_2_clime_p300_random_n100_32,
  norm_2_clime_p300_random_n100_33,
  norm_2_clime_p300_random_n100_34,
  norm_2_clime_p300_random_n100_35,
  norm_2_clime_p300_random_n100_36,
  norm_2_clime_p300_random_n100_37,
  norm_2_clime_p300_random_n100_38,
  norm_2_clime_p300_random_n100_39,
  norm_2_clime_p300_random_n100_40,
  norm_2_clime_p300_random_n100_41,
  norm_2_clime_p300_random_n100_42,
  norm_2_clime_p300_random_n100_43,
  norm_2_clime_p300_random_n100_44,
  norm_2_clime_p300_random_n100_45,
  norm_2_clime_p300_random_n100_46,
  norm_2_clime_p300_random_n100_47,
  norm_2_clime_p300_random_n100_48,
  norm_2_clime_p300_random_n100_49,
  norm_2_clime_p300_random_n100_50,
  norm_2_clime_p300_random_n100_51,
  norm_2_clime_p300_random_n100_52,
  norm_2_clime_p300_random_n100_53,
  norm_2_clime_p300_random_n100_54,
  norm_2_clime_p300_random_n100_55,
  norm_2_clime_p300_random_n100_56,
  norm_2_clime_p300_random_n100_57,
  norm_2_clime_p300_random_n100_58,
  norm_2_clime_p300_random_n100_59,
  norm_2_clime_p300_random_n100_60,
  norm_2_clime_p300_random_n100_61,
  norm_2_clime_p300_random_n100_62,
  norm_2_clime_p300_random_n100_63,
  norm_2_clime_p300_random_n100_64,
  norm_2_clime_p300_random_n100_65,
  norm_2_clime_p300_random_n100_66,
  norm_2_clime_p300_random_n100_67,
  norm_2_clime_p300_random_n100_68,
  norm_2_clime_p300_random_n100_69,
  norm_2_clime_p300_random_n100_70,
  norm_2_clime_p300_random_n100_71,
  norm_2_clime_p300_random_n100_72,
  norm_2_clime_p300_random_n100_73,
  norm_2_clime_p300_random_n100_74,
  norm_2_clime_p300_random_n100_75,
  norm_2_clime_p300_random_n100_76,
  norm_2_clime_p300_random_n100_77,
  norm_2_clime_p300_random_n100_78,
  norm_2_clime_p300_random_n100_79,
  norm_2_clime_p300_random_n100_80,
  norm_2_clime_p300_random_n100_81,
  norm_2_clime_p300_random_n100_82,
  norm_2_clime_p300_random_n100_83,
  norm_2_clime_p300_random_n100_84,
  norm_2_clime_p300_random_n100_85,
  norm_2_clime_p300_random_n100_86,
  norm_2_clime_p300_random_n100_87,
  norm_2_clime_p300_random_n100_88,
  norm_2_clime_p300_random_n100_89,
  norm_2_clime_p300_random_n100_90,
  norm_2_clime_p300_random_n100_91,
  norm_2_clime_p300_random_n100_92,
  norm_2_clime_p300_random_n100_93,
  norm_2_clime_p300_random_n100_94,
  norm_2_clime_p300_random_n100_95,
  norm_2_clime_p300_random_n100_96,
  norm_2_clime_p300_random_n100_97,
  norm_2_clime_p300_random_n100_98,
  norm_2_clime_p300_random_n100_99,
  norm_2_clime_p300_random_n100_100
)


mean_norm_2_clime_p300_random_n100 <-mean(norm_2_clime_p300_random_n100)
sd_norm_2_clime_p300_random_n100 <-sd(norm_2_clime_p300_random_n100)


#################### m norm #######################
# norm_m_clime_p300_random_n100_1, ..., norm_m_clime_p300_random_n100_100 객체가 존재한다고 가정

norm_m_clime_p300_random_n100 <- c(
  norm_m_clime_p300_random_n100_1, 
  norm_m_clime_p300_random_n100_2, 
  norm_m_clime_p300_random_n100_3, 
  norm_m_clime_p300_random_n100_4, 
  norm_m_clime_p300_random_n100_5, 
  norm_m_clime_p300_random_n100_6, 
  norm_m_clime_p300_random_n100_7, 
  norm_m_clime_p300_random_n100_8, 
  norm_m_clime_p300_random_n100_9, 
  norm_m_clime_p300_random_n100_10, 
  norm_m_clime_p300_random_n100_11, 
  norm_m_clime_p300_random_n100_12, 
  norm_m_clime_p300_random_n100_13, 
  norm_m_clime_p300_random_n100_14, 
  norm_m_clime_p300_random_n100_15, 
  norm_m_clime_p300_random_n100_16, 
  norm_m_clime_p300_random_n100_17, 
  norm_m_clime_p300_random_n100_18, 
  norm_m_clime_p300_random_n100_19, 
  norm_m_clime_p300_random_n100_20, 
  norm_m_clime_p300_random_n100_21, 
  norm_m_clime_p300_random_n100_22, 
  norm_m_clime_p300_random_n100_23, 
  norm_m_clime_p300_random_n100_24, 
  norm_m_clime_p300_random_n100_25, 
  norm_m_clime_p300_random_n100_26, 
  norm_m_clime_p300_random_n100_27, 
  norm_m_clime_p300_random_n100_28, 
  norm_m_clime_p300_random_n100_29, 
  norm_m_clime_p300_random_n100_30, 
  norm_m_clime_p300_random_n100_31, 
  norm_m_clime_p300_random_n100_32, 
  norm_m_clime_p300_random_n100_33, 
  norm_m_clime_p300_random_n100_34, 
  norm_m_clime_p300_random_n100_35, 
  norm_m_clime_p300_random_n100_36, 
  norm_m_clime_p300_random_n100_37, 
  norm_m_clime_p300_random_n100_38, 
  norm_m_clime_p300_random_n100_39, 
  norm_m_clime_p300_random_n100_40, 
  norm_m_clime_p300_random_n100_41, 
  norm_m_clime_p300_random_n100_42, 
  norm_m_clime_p300_random_n100_43, 
  norm_m_clime_p300_random_n100_44, 
  norm_m_clime_p300_random_n100_45, 
  norm_m_clime_p300_random_n100_46, 
  norm_m_clime_p300_random_n100_47, 
  norm_m_clime_p300_random_n100_48, 
  norm_m_clime_p300_random_n100_49, 
  norm_m_clime_p300_random_n100_50, 
  norm_m_clime_p300_random_n100_51, 
  norm_m_clime_p300_random_n100_52, 
  norm_m_clime_p300_random_n100_53, 
  norm_m_clime_p300_random_n100_54, 
  norm_m_clime_p300_random_n100_55, 
  norm_m_clime_p300_random_n100_56, 
  norm_m_clime_p300_random_n100_57, 
  norm_m_clime_p300_random_n100_58, 
  norm_m_clime_p300_random_n100_59, 
  norm_m_clime_p300_random_n100_60, 
  norm_m_clime_p300_random_n100_61, 
  norm_m_clime_p300_random_n100_62, 
  norm_m_clime_p300_random_n100_63, 
  norm_m_clime_p300_random_n100_64, 
  norm_m_clime_p300_random_n100_65, 
  norm_m_clime_p300_random_n100_66, 
  norm_m_clime_p300_random_n100_67, 
  norm_m_clime_p300_random_n100_68, 
  norm_m_clime_p300_random_n100_69, 
  norm_m_clime_p300_random_n100_70, 
  norm_m_clime_p300_random_n100_71, 
  norm_m_clime_p300_random_n100_72, 
  norm_m_clime_p300_random_n100_73, 
  norm_m_clime_p300_random_n100_74, 
  norm_m_clime_p300_random_n100_75, 
  norm_m_clime_p300_random_n100_76, 
  norm_m_clime_p300_random_n100_77, 
  norm_m_clime_p300_random_n100_78, 
  norm_m_clime_p300_random_n100_79, 
  norm_m_clime_p300_random_n100_80, 
  norm_m_clime_p300_random_n100_81, 
  norm_m_clime_p300_random_n100_82, 
  norm_m_clime_p300_random_n100_83, 
  norm_m_clime_p300_random_n100_84, 
  norm_m_clime_p300_random_n100_85, 
  norm_m_clime_p300_random_n100_86, 
  norm_m_clime_p300_random_n100_87, 
  norm_m_clime_p300_random_n100_88, 
  norm_m_clime_p300_random_n100_89, 
  norm_m_clime_p300_random_n100_90, 
  norm_m_clime_p300_random_n100_91, 
  norm_m_clime_p300_random_n100_92, 
  norm_m_clime_p300_random_n100_93, 
  norm_m_clime_p300_random_n100_94, 
  norm_m_clime_p300_random_n100_95, 
  norm_m_clime_p300_random_n100_96, 
  norm_m_clime_p300_random_n100_97, 
  norm_m_clime_p300_random_n100_98, 
  norm_m_clime_p300_random_n100_99, 
  norm_m_clime_p300_random_n100_100
)


mean_norm_m_clime_p300_random_n100 <-mean(norm_m_clime_p300_random_n100)
sd_norm_m_clime_p300_random_n100 <-sd(norm_m_clime_p300_random_n100)


#################### time #######################
time_clime_p300_random_n100/100







##########################################################
################### Group Detection ######################
##########################################################
# i = 1
norm_f_Group_Detect_p300_random_n100_1 <- Group_Detect_p300_random_n100_1$error_F
norm_1_Group_Detect_p300_random_n100_1 <- Group_Detect_p300_random_n100_1$error_1
norm_2_Group_Detect_p300_random_n100_1 <- Group_Detect_p300_random_n100_1$error_2 
norm_m_Group_Detect_p300_random_n100_1 <- Group_Detect_p300_random_n100_1$error_M

# i = 2
norm_f_Group_Detect_p300_random_n100_2 <- Group_Detect_p300_random_n100_2$error_F
norm_1_Group_Detect_p300_random_n100_2 <- Group_Detect_p300_random_n100_2$error_1
norm_2_Group_Detect_p300_random_n100_2 <- Group_Detect_p300_random_n100_2$error_2 
norm_m_Group_Detect_p300_random_n100_2 <- Group_Detect_p300_random_n100_2$error_M

# i = 3
norm_f_Group_Detect_p300_random_n100_3 <- Group_Detect_p300_random_n100_3$error_F
norm_1_Group_Detect_p300_random_n100_3 <- Group_Detect_p300_random_n100_3$error_1
norm_2_Group_Detect_p300_random_n100_3 <- Group_Detect_p300_random_n100_3$error_2 
norm_m_Group_Detect_p300_random_n100_3 <- Group_Detect_p300_random_n100_3$error_M

# i = 4
norm_f_Group_Detect_p300_random_n100_4 <- Group_Detect_p300_random_n100_4$error_F
norm_1_Group_Detect_p300_random_n100_4 <- Group_Detect_p300_random_n100_4$error_1
norm_2_Group_Detect_p300_random_n100_4 <- Group_Detect_p300_random_n100_4$error_2 
norm_m_Group_Detect_p300_random_n100_4 <- Group_Detect_p300_random_n100_4$error_M

# i = 5
norm_f_Group_Detect_p300_random_n100_5 <- Group_Detect_p300_random_n100_5$error_F
norm_1_Group_Detect_p300_random_n100_5 <- Group_Detect_p300_random_n100_5$error_1
norm_2_Group_Detect_p300_random_n100_5 <- Group_Detect_p300_random_n100_5$error_2 
norm_m_Group_Detect_p300_random_n100_5 <- Group_Detect_p300_random_n100_5$error_M

# i = 6
norm_f_Group_Detect_p300_random_n100_6 <- Group_Detect_p300_random_n100_6$error_F
norm_1_Group_Detect_p300_random_n100_6 <- Group_Detect_p300_random_n100_6$error_1
norm_2_Group_Detect_p300_random_n100_6 <- Group_Detect_p300_random_n100_6$error_2 
norm_m_Group_Detect_p300_random_n100_6 <- Group_Detect_p300_random_n100_6$error_M

# i = 7
norm_f_Group_Detect_p300_random_n100_7 <- Group_Detect_p300_random_n100_7$error_F
norm_1_Group_Detect_p300_random_n100_7 <- Group_Detect_p300_random_n100_7$error_1
norm_2_Group_Detect_p300_random_n100_7 <- Group_Detect_p300_random_n100_7$error_2 
norm_m_Group_Detect_p300_random_n100_7 <- Group_Detect_p300_random_n100_7$error_M

# i = 8
norm_f_Group_Detect_p300_random_n100_8 <- Group_Detect_p300_random_n100_8$error_F
norm_1_Group_Detect_p300_random_n100_8 <- Group_Detect_p300_random_n100_8$error_1
norm_2_Group_Detect_p300_random_n100_8 <- Group_Detect_p300_random_n100_8$error_2 
norm_m_Group_Detect_p300_random_n100_8 <- Group_Detect_p300_random_n100_8$error_M

# i = 9
norm_f_Group_Detect_p300_random_n100_9 <- Group_Detect_p300_random_n100_9$error_F
norm_1_Group_Detect_p300_random_n100_9 <- Group_Detect_p300_random_n100_9$error_1
norm_2_Group_Detect_p300_random_n100_9 <- Group_Detect_p300_random_n100_9$error_2 
norm_m_Group_Detect_p300_random_n100_9 <- Group_Detect_p300_random_n100_9$error_M

# i = 10
norm_f_Group_Detect_p300_random_n100_10 <- Group_Detect_p300_random_n100_10$error_F
norm_1_Group_Detect_p300_random_n100_10 <- Group_Detect_p300_random_n100_10$error_1
norm_2_Group_Detect_p300_random_n100_10 <- Group_Detect_p300_random_n100_10$error_2 
norm_m_Group_Detect_p300_random_n100_10 <- Group_Detect_p300_random_n100_10$error_M

# i = 11
norm_f_Group_Detect_p300_random_n100_11 <- Group_Detect_p300_random_n100_11$error_F
norm_1_Group_Detect_p300_random_n100_11 <- Group_Detect_p300_random_n100_11$error_1
norm_2_Group_Detect_p300_random_n100_11 <- Group_Detect_p300_random_n100_11$error_2 
norm_m_Group_Detect_p300_random_n100_11 <- Group_Detect_p300_random_n100_11$error_M

# i = 12
norm_f_Group_Detect_p300_random_n100_12 <- Group_Detect_p300_random_n100_12$error_F
norm_1_Group_Detect_p300_random_n100_12 <- Group_Detect_p300_random_n100_12$error_1
norm_2_Group_Detect_p300_random_n100_12 <- Group_Detect_p300_random_n100_12$error_2 
norm_m_Group_Detect_p300_random_n100_12 <- Group_Detect_p300_random_n100_12$error_M

# i = 13
norm_f_Group_Detect_p300_random_n100_13 <- Group_Detect_p300_random_n100_13$error_F
norm_1_Group_Detect_p300_random_n100_13 <- Group_Detect_p300_random_n100_13$error_1
norm_2_Group_Detect_p300_random_n100_13 <- Group_Detect_p300_random_n100_13$error_2 
norm_m_Group_Detect_p300_random_n100_13 <- Group_Detect_p300_random_n100_13$error_M

# i = 14
norm_f_Group_Detect_p300_random_n100_14 <- Group_Detect_p300_random_n100_14$error_F
norm_1_Group_Detect_p300_random_n100_14 <- Group_Detect_p300_random_n100_14$error_1
norm_2_Group_Detect_p300_random_n100_14 <- Group_Detect_p300_random_n100_14$error_2 
norm_m_Group_Detect_p300_random_n100_14 <- Group_Detect_p300_random_n100_14$error_M

# i = 15
norm_f_Group_Detect_p300_random_n100_15 <- Group_Detect_p300_random_n100_15$error_F
norm_1_Group_Detect_p300_random_n100_15 <- Group_Detect_p300_random_n100_15$error_1
norm_2_Group_Detect_p300_random_n100_15 <- Group_Detect_p300_random_n100_15$error_2 
norm_m_Group_Detect_p300_random_n100_15 <- Group_Detect_p300_random_n100_15$error_M

# i = 16
norm_f_Group_Detect_p300_random_n100_16 <- Group_Detect_p300_random_n100_16$error_F
norm_1_Group_Detect_p300_random_n100_16 <- Group_Detect_p300_random_n100_16$error_1
norm_2_Group_Detect_p300_random_n100_16 <- Group_Detect_p300_random_n100_16$error_2 
norm_m_Group_Detect_p300_random_n100_16 <- Group_Detect_p300_random_n100_16$error_M

# i = 17
norm_f_Group_Detect_p300_random_n100_17 <- Group_Detect_p300_random_n100_17$error_F
norm_1_Group_Detect_p300_random_n100_17 <- Group_Detect_p300_random_n100_17$error_1
norm_2_Group_Detect_p300_random_n100_17 <- Group_Detect_p300_random_n100_17$error_2 
norm_m_Group_Detect_p300_random_n100_17 <- Group_Detect_p300_random_n100_17$error_M

# i = 18
norm_f_Group_Detect_p300_random_n100_18 <- Group_Detect_p300_random_n100_18$error_F
norm_1_Group_Detect_p300_random_n100_18 <- Group_Detect_p300_random_n100_18$error_1
norm_2_Group_Detect_p300_random_n100_18 <- Group_Detect_p300_random_n100_18$error_2 
norm_m_Group_Detect_p300_random_n100_18 <- Group_Detect_p300_random_n100_18$error_M

# i = 19
norm_f_Group_Detect_p300_random_n100_19 <- Group_Detect_p300_random_n100_19$error_F
norm_1_Group_Detect_p300_random_n100_19 <- Group_Detect_p300_random_n100_19$error_1
norm_2_Group_Detect_p300_random_n100_19 <- Group_Detect_p300_random_n100_19$error_2 
norm_m_Group_Detect_p300_random_n100_19 <- Group_Detect_p300_random_n100_19$error_M

# i = 20
norm_f_Group_Detect_p300_random_n100_20 <- Group_Detect_p300_random_n100_20$error_F
norm_1_Group_Detect_p300_random_n100_20 <- Group_Detect_p300_random_n100_20$error_1
norm_2_Group_Detect_p300_random_n100_20 <- Group_Detect_p300_random_n100_20$error_2 
norm_m_Group_Detect_p300_random_n100_20 <- Group_Detect_p300_random_n100_20$error_M

# i = 21
norm_f_Group_Detect_p300_random_n100_21 <- Group_Detect_p300_random_n100_21$error_F
norm_1_Group_Detect_p300_random_n100_21 <- Group_Detect_p300_random_n100_21$error_1
norm_2_Group_Detect_p300_random_n100_21 <- Group_Detect_p300_random_n100_21$error_2 
norm_m_Group_Detect_p300_random_n100_21 <- Group_Detect_p300_random_n100_21$error_M

# i = 22
norm_f_Group_Detect_p300_random_n100_22 <- Group_Detect_p300_random_n100_22$error_F
norm_1_Group_Detect_p300_random_n100_22 <- Group_Detect_p300_random_n100_22$error_1
norm_2_Group_Detect_p300_random_n100_22 <- Group_Detect_p300_random_n100_22$error_2 
norm_m_Group_Detect_p300_random_n100_22 <- Group_Detect_p300_random_n100_22$error_M

# i = 23
norm_f_Group_Detect_p300_random_n100_23 <- Group_Detect_p300_random_n100_23$error_F
norm_1_Group_Detect_p300_random_n100_23 <- Group_Detect_p300_random_n100_23$error_1
norm_2_Group_Detect_p300_random_n100_23 <- Group_Detect_p300_random_n100_23$error_2 
norm_m_Group_Detect_p300_random_n100_23 <- Group_Detect_p300_random_n100_23$error_M

# i = 24
norm_f_Group_Detect_p300_random_n100_24 <- Group_Detect_p300_random_n100_24$error_F
norm_1_Group_Detect_p300_random_n100_24 <- Group_Detect_p300_random_n100_24$error_1
norm_2_Group_Detect_p300_random_n100_24 <- Group_Detect_p300_random_n100_24$error_2 
norm_m_Group_Detect_p300_random_n100_24 <- Group_Detect_p300_random_n100_24$error_M

# i = 25
norm_f_Group_Detect_p300_random_n100_25 <- Group_Detect_p300_random_n100_25$error_F
norm_1_Group_Detect_p300_random_n100_25 <- Group_Detect_p300_random_n100_25$error_1
norm_2_Group_Detect_p300_random_n100_25 <- Group_Detect_p300_random_n100_25$error_2 
norm_m_Group_Detect_p300_random_n100_25 <- Group_Detect_p300_random_n100_25$error_M

# i = 26
norm_f_Group_Detect_p300_random_n100_26 <- Group_Detect_p300_random_n100_26$error_F
norm_1_Group_Detect_p300_random_n100_26 <- Group_Detect_p300_random_n100_26$error_1
norm_2_Group_Detect_p300_random_n100_26 <- Group_Detect_p300_random_n100_26$error_2 
norm_m_Group_Detect_p300_random_n100_26 <- Group_Detect_p300_random_n100_26$error_M

# i = 27
norm_f_Group_Detect_p300_random_n100_27 <- Group_Detect_p300_random_n100_27$error_F
norm_1_Group_Detect_p300_random_n100_27 <- Group_Detect_p300_random_n100_27$error_1
norm_2_Group_Detect_p300_random_n100_27 <- Group_Detect_p300_random_n100_27$error_2 
norm_m_Group_Detect_p300_random_n100_27 <- Group_Detect_p300_random_n100_27$error_M

# i = 28
norm_f_Group_Detect_p300_random_n100_28 <- Group_Detect_p300_random_n100_28$error_F
norm_1_Group_Detect_p300_random_n100_28 <- Group_Detect_p300_random_n100_28$error_1
norm_2_Group_Detect_p300_random_n100_28 <- Group_Detect_p300_random_n100_28$error_2 
norm_m_Group_Detect_p300_random_n100_28 <- Group_Detect_p300_random_n100_28$error_M

# i = 29
norm_f_Group_Detect_p300_random_n100_29 <- Group_Detect_p300_random_n100_29$error_F
norm_1_Group_Detect_p300_random_n100_29 <- Group_Detect_p300_random_n100_29$error_1
norm_2_Group_Detect_p300_random_n100_29 <- Group_Detect_p300_random_n100_29$error_2 
norm_m_Group_Detect_p300_random_n100_29 <- Group_Detect_p300_random_n100_29$error_M

# i = 30
norm_f_Group_Detect_p300_random_n100_30 <- Group_Detect_p300_random_n100_30$error_F
norm_1_Group_Detect_p300_random_n100_30 <- Group_Detect_p300_random_n100_30$error_1
norm_2_Group_Detect_p300_random_n100_30 <- Group_Detect_p300_random_n100_30$error_2 
norm_m_Group_Detect_p300_random_n100_30 <- Group_Detect_p300_random_n100_30$error_M

# i = 31
norm_f_Group_Detect_p300_random_n100_31 <- Group_Detect_p300_random_n100_31$error_F
norm_1_Group_Detect_p300_random_n100_31 <- Group_Detect_p300_random_n100_31$error_1
norm_2_Group_Detect_p300_random_n100_31 <- Group_Detect_p300_random_n100_31$error_2 
norm_m_Group_Detect_p300_random_n100_31 <- Group_Detect_p300_random_n100_31$error_M

# i = 32
norm_f_Group_Detect_p300_random_n100_32 <- Group_Detect_p300_random_n100_32$error_F
norm_1_Group_Detect_p300_random_n100_32 <- Group_Detect_p300_random_n100_32$error_1
norm_2_Group_Detect_p300_random_n100_32 <- Group_Detect_p300_random_n100_32$error_2 
norm_m_Group_Detect_p300_random_n100_32 <- Group_Detect_p300_random_n100_32$error_M

# i = 33
norm_f_Group_Detect_p300_random_n100_33 <- Group_Detect_p300_random_n100_33$error_F
norm_1_Group_Detect_p300_random_n100_33 <- Group_Detect_p300_random_n100_33$error_1
norm_2_Group_Detect_p300_random_n100_33 <- Group_Detect_p300_random_n100_33$error_2 
norm_m_Group_Detect_p300_random_n100_33 <- Group_Detect_p300_random_n100_33$error_M

# i = 34
norm_f_Group_Detect_p300_random_n100_34 <- Group_Detect_p300_random_n100_34$error_F
norm_1_Group_Detect_p300_random_n100_34 <- Group_Detect_p300_random_n100_34$error_1
norm_2_Group_Detect_p300_random_n100_34 <- Group_Detect_p300_random_n100_34$error_2 
norm_m_Group_Detect_p300_random_n100_34 <- Group_Detect_p300_random_n100_34$error_M

# i = 35
norm_f_Group_Detect_p300_random_n100_35 <- Group_Detect_p300_random_n100_35$error_F
norm_1_Group_Detect_p300_random_n100_35 <- Group_Detect_p300_random_n100_35$error_1
norm_2_Group_Detect_p300_random_n100_35 <- Group_Detect_p300_random_n100_35$error_2 
norm_m_Group_Detect_p300_random_n100_35 <- Group_Detect_p300_random_n100_35$error_M

# i = 36
norm_f_Group_Detect_p300_random_n100_36 <- Group_Detect_p300_random_n100_36$error_F
norm_1_Group_Detect_p300_random_n100_36 <- Group_Detect_p300_random_n100_36$error_1
norm_2_Group_Detect_p300_random_n100_36 <- Group_Detect_p300_random_n100_36$error_2 
norm_m_Group_Detect_p300_random_n100_36 <- Group_Detect_p300_random_n100_36$error_M

# i = 37
norm_f_Group_Detect_p300_random_n100_37 <- Group_Detect_p300_random_n100_37$error_F
norm_1_Group_Detect_p300_random_n100_37 <- Group_Detect_p300_random_n100_37$error_1
norm_2_Group_Detect_p300_random_n100_37 <- Group_Detect_p300_random_n100_37$error_2 
norm_m_Group_Detect_p300_random_n100_37 <- Group_Detect_p300_random_n100_37$error_M

# i = 38
norm_f_Group_Detect_p300_random_n100_38 <- Group_Detect_p300_random_n100_38$error_F
norm_1_Group_Detect_p300_random_n100_38 <- Group_Detect_p300_random_n100_38$error_1
norm_2_Group_Detect_p300_random_n100_38 <- Group_Detect_p300_random_n100_38$error_2 
norm_m_Group_Detect_p300_random_n100_38 <- Group_Detect_p300_random_n100_38$error_M

# i = 39
norm_f_Group_Detect_p300_random_n100_39 <- Group_Detect_p300_random_n100_39$error_F
norm_1_Group_Detect_p300_random_n100_39 <- Group_Detect_p300_random_n100_39$error_1
norm_2_Group_Detect_p300_random_n100_39 <- Group_Detect_p300_random_n100_39$error_2 
norm_m_Group_Detect_p300_random_n100_39 <- Group_Detect_p300_random_n100_39$error_M

# i = 40
norm_f_Group_Detect_p300_random_n100_40 <- Group_Detect_p300_random_n100_40$error_F
norm_1_Group_Detect_p300_random_n100_40 <- Group_Detect_p300_random_n100_40$error_1
norm_2_Group_Detect_p300_random_n100_40 <- Group_Detect_p300_random_n100_40$error_2 
norm_m_Group_Detect_p300_random_n100_40 <- Group_Detect_p300_random_n100_40$error_M

# i = 41
norm_f_Group_Detect_p300_random_n100_41 <- Group_Detect_p300_random_n100_41$error_F
norm_1_Group_Detect_p300_random_n100_41 <- Group_Detect_p300_random_n100_41$error_1
norm_2_Group_Detect_p300_random_n100_41 <- Group_Detect_p300_random_n100_41$error_2 
norm_m_Group_Detect_p300_random_n100_41 <- Group_Detect_p300_random_n100_41$error_M

# i = 42
norm_f_Group_Detect_p300_random_n100_42 <- Group_Detect_p300_random_n100_42$error_F
norm_1_Group_Detect_p300_random_n100_42 <- Group_Detect_p300_random_n100_42$error_1
norm_2_Group_Detect_p300_random_n100_42 <- Group_Detect_p300_random_n100_42$error_2 
norm_m_Group_Detect_p300_random_n100_42 <- Group_Detect_p300_random_n100_42$error_M

# i = 43
norm_f_Group_Detect_p300_random_n100_43 <- Group_Detect_p300_random_n100_43$error_F
norm_1_Group_Detect_p300_random_n100_43 <- Group_Detect_p300_random_n100_43$error_1
norm_2_Group_Detect_p300_random_n100_43 <- Group_Detect_p300_random_n100_43$error_2 
norm_m_Group_Detect_p300_random_n100_43 <- Group_Detect_p300_random_n100_43$error_M

# i = 44
norm_f_Group_Detect_p300_random_n100_44 <- Group_Detect_p300_random_n100_44$error_F
norm_1_Group_Detect_p300_random_n100_44 <- Group_Detect_p300_random_n100_44$error_1
norm_2_Group_Detect_p300_random_n100_44 <- Group_Detect_p300_random_n100_44$error_2 
norm_m_Group_Detect_p300_random_n100_44 <- Group_Detect_p300_random_n100_44$error_M

# i = 45
norm_f_Group_Detect_p300_random_n100_45 <- Group_Detect_p300_random_n100_45$error_F
norm_1_Group_Detect_p300_random_n100_45 <- Group_Detect_p300_random_n100_45$error_1
norm_2_Group_Detect_p300_random_n100_45 <- Group_Detect_p300_random_n100_45$error_2 
norm_m_Group_Detect_p300_random_n100_45 <- Group_Detect_p300_random_n100_45$error_M

# i = 46
norm_f_Group_Detect_p300_random_n100_46 <- Group_Detect_p300_random_n100_46$error_F
norm_1_Group_Detect_p300_random_n100_46 <- Group_Detect_p300_random_n100_46$error_1
norm_2_Group_Detect_p300_random_n100_46 <- Group_Detect_p300_random_n100_46$error_2 
norm_m_Group_Detect_p300_random_n100_46 <- Group_Detect_p300_random_n100_46$error_M

# i = 47
norm_f_Group_Detect_p300_random_n100_47 <- Group_Detect_p300_random_n100_47$error_F
norm_1_Group_Detect_p300_random_n100_47 <- Group_Detect_p300_random_n100_47$error_1
norm_2_Group_Detect_p300_random_n100_47 <- Group_Detect_p300_random_n100_47$error_2 
norm_m_Group_Detect_p300_random_n100_47 <- Group_Detect_p300_random_n100_47$error_M

# i = 48
norm_f_Group_Detect_p300_random_n100_48 <- Group_Detect_p300_random_n100_48$error_F
norm_1_Group_Detect_p300_random_n100_48 <- Group_Detect_p300_random_n100_48$error_1
norm_2_Group_Detect_p300_random_n100_48 <- Group_Detect_p300_random_n100_48$error_2 
norm_m_Group_Detect_p300_random_n100_48 <- Group_Detect_p300_random_n100_48$error_M

# i = 49
norm_f_Group_Detect_p300_random_n100_49 <- Group_Detect_p300_random_n100_49$error_F
norm_1_Group_Detect_p300_random_n100_49 <- Group_Detect_p300_random_n100_49$error_1
norm_2_Group_Detect_p300_random_n100_49 <- Group_Detect_p300_random_n100_49$error_2 
norm_m_Group_Detect_p300_random_n100_49 <- Group_Detect_p300_random_n100_49$error_M

# i = 50
norm_f_Group_Detect_p300_random_n100_50 <- Group_Detect_p300_random_n100_50$error_F
norm_1_Group_Detect_p300_random_n100_50 <- Group_Detect_p300_random_n100_50$error_1
norm_2_Group_Detect_p300_random_n100_50 <- Group_Detect_p300_random_n100_50$error_2 
norm_m_Group_Detect_p300_random_n100_50 <- Group_Detect_p300_random_n100_50$error_M

# i = 51
norm_f_Group_Detect_p300_random_n100_51 <- Group_Detect_p300_random_n100_51$error_F
norm_1_Group_Detect_p300_random_n100_51 <- Group_Detect_p300_random_n100_51$error_1
norm_2_Group_Detect_p300_random_n100_51 <- Group_Detect_p300_random_n100_51$error_2 
norm_m_Group_Detect_p300_random_n100_51 <- Group_Detect_p300_random_n100_51$error_M

# i = 52
norm_f_Group_Detect_p300_random_n100_52 <- Group_Detect_p300_random_n100_52$error_F
norm_1_Group_Detect_p300_random_n100_52 <- Group_Detect_p300_random_n100_52$error_1
norm_2_Group_Detect_p300_random_n100_52 <- Group_Detect_p300_random_n100_52$error_2 
norm_m_Group_Detect_p300_random_n100_52 <- Group_Detect_p300_random_n100_52$error_M

# i = 53
norm_f_Group_Detect_p300_random_n100_53 <- Group_Detect_p300_random_n100_53$error_F
norm_1_Group_Detect_p300_random_n100_53 <- Group_Detect_p300_random_n100_53$error_1
norm_2_Group_Detect_p300_random_n100_53 <- Group_Detect_p300_random_n100_53$error_2 
norm_m_Group_Detect_p300_random_n100_53 <- Group_Detect_p300_random_n100_53$error_M

# i = 54
norm_f_Group_Detect_p300_random_n100_54 <- Group_Detect_p300_random_n100_54$error_F
norm_1_Group_Detect_p300_random_n100_54 <- Group_Detect_p300_random_n100_54$error_1
norm_2_Group_Detect_p300_random_n100_54 <- Group_Detect_p300_random_n100_54$error_2 
norm_m_Group_Detect_p300_random_n100_54 <- Group_Detect_p300_random_n100_54$error_M

# i = 55
norm_f_Group_Detect_p300_random_n100_55 <- Group_Detect_p300_random_n100_55$error_F
norm_1_Group_Detect_p300_random_n100_55 <- Group_Detect_p300_random_n100_55$error_1
norm_2_Group_Detect_p300_random_n100_55 <- Group_Detect_p300_random_n100_55$error_2 
norm_m_Group_Detect_p300_random_n100_55 <- Group_Detect_p300_random_n100_55$error_M

# i = 56
norm_f_Group_Detect_p300_random_n100_56 <- Group_Detect_p300_random_n100_56$error_F
norm_1_Group_Detect_p300_random_n100_56 <- Group_Detect_p300_random_n100_56$error_1
norm_2_Group_Detect_p300_random_n100_56 <- Group_Detect_p300_random_n100_56$error_2 
norm_m_Group_Detect_p300_random_n100_56 <- Group_Detect_p300_random_n100_56$error_M

# i = 57
norm_f_Group_Detect_p300_random_n100_57 <- Group_Detect_p300_random_n100_57$error_F
norm_1_Group_Detect_p300_random_n100_57 <- Group_Detect_p300_random_n100_57$error_1
norm_2_Group_Detect_p300_random_n100_57 <- Group_Detect_p300_random_n100_57$error_2 
norm_m_Group_Detect_p300_random_n100_57 <- Group_Detect_p300_random_n100_57$error_M

# i = 58
norm_f_Group_Detect_p300_random_n100_58 <- Group_Detect_p300_random_n100_58$error_F
norm_1_Group_Detect_p300_random_n100_58 <- Group_Detect_p300_random_n100_58$error_1
norm_2_Group_Detect_p300_random_n100_58 <- Group_Detect_p300_random_n100_58$error_2 
norm_m_Group_Detect_p300_random_n100_58 <- Group_Detect_p300_random_n100_58$error_M

# i = 59
norm_f_Group_Detect_p300_random_n100_59 <- Group_Detect_p300_random_n100_59$error_F
norm_1_Group_Detect_p300_random_n100_59 <- Group_Detect_p300_random_n100_59$error_1
norm_2_Group_Detect_p300_random_n100_59 <- Group_Detect_p300_random_n100_59$error_2 
norm_m_Group_Detect_p300_random_n100_59 <- Group_Detect_p300_random_n100_59$error_M

# i = 60
norm_f_Group_Detect_p300_random_n100_60 <- Group_Detect_p300_random_n100_60$error_F
norm_1_Group_Detect_p300_random_n100_60 <- Group_Detect_p300_random_n100_60$error_1
norm_2_Group_Detect_p300_random_n100_60 <- Group_Detect_p300_random_n100_60$error_2 
norm_m_Group_Detect_p300_random_n100_60 <- Group_Detect_p300_random_n100_60$error_M

# i = 61
norm_f_Group_Detect_p300_random_n100_61 <- Group_Detect_p300_random_n100_61$error_F
norm_1_Group_Detect_p300_random_n100_61 <- Group_Detect_p300_random_n100_61$error_1
norm_2_Group_Detect_p300_random_n100_61 <- Group_Detect_p300_random_n100_61$error_2 
norm_m_Group_Detect_p300_random_n100_61 <- Group_Detect_p300_random_n100_61$error_M

# i = 62
norm_f_Group_Detect_p300_random_n100_62 <- Group_Detect_p300_random_n100_62$error_F
norm_1_Group_Detect_p300_random_n100_62 <- Group_Detect_p300_random_n100_62$error_1
norm_2_Group_Detect_p300_random_n100_62 <- Group_Detect_p300_random_n100_62$error_2 
norm_m_Group_Detect_p300_random_n100_62 <- Group_Detect_p300_random_n100_62$error_M

# i = 63
norm_f_Group_Detect_p300_random_n100_63 <- Group_Detect_p300_random_n100_63$error_F
norm_1_Group_Detect_p300_random_n100_63 <- Group_Detect_p300_random_n100_63$error_1
norm_2_Group_Detect_p300_random_n100_63 <- Group_Detect_p300_random_n100_63$error_2 
norm_m_Group_Detect_p300_random_n100_63 <- Group_Detect_p300_random_n100_63$error_M

# i = 64
norm_f_Group_Detect_p300_random_n100_64 <- Group_Detect_p300_random_n100_64$error_F
norm_1_Group_Detect_p300_random_n100_64 <- Group_Detect_p300_random_n100_64$error_1
norm_2_Group_Detect_p300_random_n100_64 <- Group_Detect_p300_random_n100_64$error_2 
norm_m_Group_Detect_p300_random_n100_64 <- Group_Detect_p300_random_n100_64$error_M

# i = 65
norm_f_Group_Detect_p300_random_n100_65 <- Group_Detect_p300_random_n100_65$error_F
norm_1_Group_Detect_p300_random_n100_65 <- Group_Detect_p300_random_n100_65$error_1
norm_2_Group_Detect_p300_random_n100_65 <- Group_Detect_p300_random_n100_65$error_2 
norm_m_Group_Detect_p300_random_n100_65 <- Group_Detect_p300_random_n100_65$error_M

# i = 66
norm_f_Group_Detect_p300_random_n100_66 <- Group_Detect_p300_random_n100_66$error_F
norm_1_Group_Detect_p300_random_n100_66 <- Group_Detect_p300_random_n100_66$error_1
norm_2_Group_Detect_p300_random_n100_66 <- Group_Detect_p300_random_n100_66$error_2 
norm_m_Group_Detect_p300_random_n100_66 <- Group_Detect_p300_random_n100_66$error_M

# i = 67
norm_f_Group_Detect_p300_random_n100_67 <- Group_Detect_p300_random_n100_67$error_F
norm_1_Group_Detect_p300_random_n100_67 <- Group_Detect_p300_random_n100_67$error_1
norm_2_Group_Detect_p300_random_n100_67 <- Group_Detect_p300_random_n100_67$error_2 
norm_m_Group_Detect_p300_random_n100_67 <- Group_Detect_p300_random_n100_67$error_M

# i = 68
norm_f_Group_Detect_p300_random_n100_68 <- Group_Detect_p300_random_n100_68$error_F
norm_1_Group_Detect_p300_random_n100_68 <- Group_Detect_p300_random_n100_68$error_1
norm_2_Group_Detect_p300_random_n100_68 <- Group_Detect_p300_random_n100_68$error_2 
norm_m_Group_Detect_p300_random_n100_68 <- Group_Detect_p300_random_n100_68$error_M

# i = 69
norm_f_Group_Detect_p300_random_n100_69 <- Group_Detect_p300_random_n100_69$error_F
norm_1_Group_Detect_p300_random_n100_69 <- Group_Detect_p300_random_n100_69$error_1
norm_2_Group_Detect_p300_random_n100_69 <- Group_Detect_p300_random_n100_69$error_2 
norm_m_Group_Detect_p300_random_n100_69 <- Group_Detect_p300_random_n100_69$error_M

# i = 70
norm_f_Group_Detect_p300_random_n100_70 <- Group_Detect_p300_random_n100_70$error_F
norm_1_Group_Detect_p300_random_n100_70 <- Group_Detect_p300_random_n100_70$error_1
norm_2_Group_Detect_p300_random_n100_70 <- Group_Detect_p300_random_n100_70$error_2 
norm_m_Group_Detect_p300_random_n100_70 <- Group_Detect_p300_random_n100_70$error_M

# i = 71
norm_f_Group_Detect_p300_random_n100_71 <- Group_Detect_p300_random_n100_71$error_F
norm_1_Group_Detect_p300_random_n100_71 <- Group_Detect_p300_random_n100_71$error_1
norm_2_Group_Detect_p300_random_n100_71 <- Group_Detect_p300_random_n100_71$error_2 
norm_m_Group_Detect_p300_random_n100_71 <- Group_Detect_p300_random_n100_71$error_M

# i = 72
norm_f_Group_Detect_p300_random_n100_72 <- Group_Detect_p300_random_n100_72$error_F
norm_1_Group_Detect_p300_random_n100_72 <- Group_Detect_p300_random_n100_72$error_1
norm_2_Group_Detect_p300_random_n100_72 <- Group_Detect_p300_random_n100_72$error_2 
norm_m_Group_Detect_p300_random_n100_72 <- Group_Detect_p300_random_n100_72$error_M

# i = 73
norm_f_Group_Detect_p300_random_n100_73 <- Group_Detect_p300_random_n100_73$error_F
norm_1_Group_Detect_p300_random_n100_73 <- Group_Detect_p300_random_n100_73$error_1
norm_2_Group_Detect_p300_random_n100_73 <- Group_Detect_p300_random_n100_73$error_2 
norm_m_Group_Detect_p300_random_n100_73 <- Group_Detect_p300_random_n100_73$error_M

# i = 74
norm_f_Group_Detect_p300_random_n100_74 <- Group_Detect_p300_random_n100_74$error_F
norm_1_Group_Detect_p300_random_n100_74 <- Group_Detect_p300_random_n100_74$error_1
norm_2_Group_Detect_p300_random_n100_74 <- Group_Detect_p300_random_n100_74$error_2 
norm_m_Group_Detect_p300_random_n100_74 <- Group_Detect_p300_random_n100_74$error_M

# i = 75
norm_f_Group_Detect_p300_random_n100_75 <- Group_Detect_p300_random_n100_75$error_F
norm_1_Group_Detect_p300_random_n100_75 <- Group_Detect_p300_random_n100_75$error_1
norm_2_Group_Detect_p300_random_n100_75 <- Group_Detect_p300_random_n100_75$error_2 
norm_m_Group_Detect_p300_random_n100_75 <- Group_Detect_p300_random_n100_75$error_M

# i = 76
norm_f_Group_Detect_p300_random_n100_76 <- Group_Detect_p300_random_n100_76$error_F
norm_1_Group_Detect_p300_random_n100_76 <- Group_Detect_p300_random_n100_76$error_1
norm_2_Group_Detect_p300_random_n100_76 <- Group_Detect_p300_random_n100_76$error_2 
norm_m_Group_Detect_p300_random_n100_76 <- Group_Detect_p300_random_n100_76$error_M

# i = 77
norm_f_Group_Detect_p300_random_n100_77 <- Group_Detect_p300_random_n100_77$error_F
norm_1_Group_Detect_p300_random_n100_77 <- Group_Detect_p300_random_n100_77$error_1
norm_2_Group_Detect_p300_random_n100_77 <- Group_Detect_p300_random_n100_77$error_2 
norm_m_Group_Detect_p300_random_n100_77 <- Group_Detect_p300_random_n100_77$error_M

# i = 78
norm_f_Group_Detect_p300_random_n100_78 <- Group_Detect_p300_random_n100_78$error_F
norm_1_Group_Detect_p300_random_n100_78 <- Group_Detect_p300_random_n100_78$error_1
norm_2_Group_Detect_p300_random_n100_78 <- Group_Detect_p300_random_n100_78$error_2 
norm_m_Group_Detect_p300_random_n100_78 <- Group_Detect_p300_random_n100_78$error_M

# i = 79
norm_f_Group_Detect_p300_random_n100_79 <- Group_Detect_p300_random_n100_79$error_F
norm_1_Group_Detect_p300_random_n100_79 <- Group_Detect_p300_random_n100_79$error_1
norm_2_Group_Detect_p300_random_n100_79 <- Group_Detect_p300_random_n100_79$error_2 
norm_m_Group_Detect_p300_random_n100_79 <- Group_Detect_p300_random_n100_79$error_M

# i = 80
norm_f_Group_Detect_p300_random_n100_80 <- Group_Detect_p300_random_n100_80$error_F
norm_1_Group_Detect_p300_random_n100_80 <- Group_Detect_p300_random_n100_80$error_1
norm_2_Group_Detect_p300_random_n100_80 <- Group_Detect_p300_random_n100_80$error_2 
norm_m_Group_Detect_p300_random_n100_80 <- Group_Detect_p300_random_n100_80$error_M

# i = 81
norm_f_Group_Detect_p300_random_n100_81 <- Group_Detect_p300_random_n100_81$error_F
norm_1_Group_Detect_p300_random_n100_81 <- Group_Detect_p300_random_n100_81$error_1
norm_2_Group_Detect_p300_random_n100_81 <- Group_Detect_p300_random_n100_81$error_2 
norm_m_Group_Detect_p300_random_n100_81 <- Group_Detect_p300_random_n100_81$error_M

# i = 82
norm_f_Group_Detect_p300_random_n100_82 <- Group_Detect_p300_random_n100_82$error_F
norm_1_Group_Detect_p300_random_n100_82 <- Group_Detect_p300_random_n100_82$error_1
norm_2_Group_Detect_p300_random_n100_82 <- Group_Detect_p300_random_n100_82$error_2 
norm_m_Group_Detect_p300_random_n100_82 <- Group_Detect_p300_random_n100_82$error_M

# i = 83
norm_f_Group_Detect_p300_random_n100_83 <- Group_Detect_p300_random_n100_83$error_F
norm_1_Group_Detect_p300_random_n100_83 <- Group_Detect_p300_random_n100_83$error_1
norm_2_Group_Detect_p300_random_n100_83 <- Group_Detect_p300_random_n100_83$error_2 
norm_m_Group_Detect_p300_random_n100_83 <- Group_Detect_p300_random_n100_83$error_M

# i = 84
norm_f_Group_Detect_p300_random_n100_84 <- Group_Detect_p300_random_n100_84$error_F
norm_1_Group_Detect_p300_random_n100_84 <- Group_Detect_p300_random_n100_84$error_1
norm_2_Group_Detect_p300_random_n100_84 <- Group_Detect_p300_random_n100_84$error_2 
norm_m_Group_Detect_p300_random_n100_84 <- Group_Detect_p300_random_n100_84$error_M

# i = 85
norm_f_Group_Detect_p300_random_n100_85 <- Group_Detect_p300_random_n100_85$error_F
norm_1_Group_Detect_p300_random_n100_85 <- Group_Detect_p300_random_n100_85$error_1
norm_2_Group_Detect_p300_random_n100_85 <- Group_Detect_p300_random_n100_85$error_2 
norm_m_Group_Detect_p300_random_n100_85 <- Group_Detect_p300_random_n100_85$error_M

# i = 86
norm_f_Group_Detect_p300_random_n100_86 <- Group_Detect_p300_random_n100_86$error_F
norm_1_Group_Detect_p300_random_n100_86 <- Group_Detect_p300_random_n100_86$error_1
norm_2_Group_Detect_p300_random_n100_86 <- Group_Detect_p300_random_n100_86$error_2 
norm_m_Group_Detect_p300_random_n100_86 <- Group_Detect_p300_random_n100_86$error_M

# i = 87
norm_f_Group_Detect_p300_random_n100_87 <- Group_Detect_p300_random_n100_87$error_F
norm_1_Group_Detect_p300_random_n100_87 <- Group_Detect_p300_random_n100_87$error_1
norm_2_Group_Detect_p300_random_n100_87 <- Group_Detect_p300_random_n100_87$error_2 
norm_m_Group_Detect_p300_random_n100_87 <- Group_Detect_p300_random_n100_87$error_M

# i = 88
norm_f_Group_Detect_p300_random_n100_88 <- Group_Detect_p300_random_n100_88$error_F
norm_1_Group_Detect_p300_random_n100_88 <- Group_Detect_p300_random_n100_88$error_1
norm_2_Group_Detect_p300_random_n100_88 <- Group_Detect_p300_random_n100_88$error_2 
norm_m_Group_Detect_p300_random_n100_88 <- Group_Detect_p300_random_n100_88$error_M

# i = 89
norm_f_Group_Detect_p300_random_n100_89 <- Group_Detect_p300_random_n100_89$error_F
norm_1_Group_Detect_p300_random_n100_89 <- Group_Detect_p300_random_n100_89$error_1
norm_2_Group_Detect_p300_random_n100_89 <- Group_Detect_p300_random_n100_89$error_2 
norm_m_Group_Detect_p300_random_n100_89 <- Group_Detect_p300_random_n100_89$error_M

# i = 90
norm_f_Group_Detect_p300_random_n100_90 <- Group_Detect_p300_random_n100_90$error_F
norm_1_Group_Detect_p300_random_n100_90 <- Group_Detect_p300_random_n100_90$error_1
norm_2_Group_Detect_p300_random_n100_90 <- Group_Detect_p300_random_n100_90$error_2 
norm_m_Group_Detect_p300_random_n100_90 <- Group_Detect_p300_random_n100_90$error_M

# i = 91
norm_f_Group_Detect_p300_random_n100_91 <- Group_Detect_p300_random_n100_91$error_F
norm_1_Group_Detect_p300_random_n100_91 <- Group_Detect_p300_random_n100_91$error_1
norm_2_Group_Detect_p300_random_n100_91 <- Group_Detect_p300_random_n100_91$error_2 
norm_m_Group_Detect_p300_random_n100_91 <- Group_Detect_p300_random_n100_91$error_M

# i = 92
norm_f_Group_Detect_p300_random_n100_92 <- Group_Detect_p300_random_n100_92$error_F
norm_1_Group_Detect_p300_random_n100_92 <- Group_Detect_p300_random_n100_92$error_1
norm_2_Group_Detect_p300_random_n100_92 <- Group_Detect_p300_random_n100_92$error_2 
norm_m_Group_Detect_p300_random_n100_92 <- Group_Detect_p300_random_n100_92$error_M

# i = 93
norm_f_Group_Detect_p300_random_n100_93 <- Group_Detect_p300_random_n100_93$error_F
norm_1_Group_Detect_p300_random_n100_93 <- Group_Detect_p300_random_n100_93$error_1
norm_2_Group_Detect_p300_random_n100_93 <- Group_Detect_p300_random_n100_93$error_2 
norm_m_Group_Detect_p300_random_n100_93 <- Group_Detect_p300_random_n100_93$error_M

# i = 94
norm_f_Group_Detect_p300_random_n100_94 <- Group_Detect_p300_random_n100_94$error_F
norm_1_Group_Detect_p300_random_n100_94 <- Group_Detect_p300_random_n100_94$error_1
norm_2_Group_Detect_p300_random_n100_94 <- Group_Detect_p300_random_n100_94$error_2 
norm_m_Group_Detect_p300_random_n100_94 <- Group_Detect_p300_random_n100_94$error_M

# i = 95
norm_f_Group_Detect_p300_random_n100_95 <- Group_Detect_p300_random_n100_95$error_F
norm_1_Group_Detect_p300_random_n100_95 <- Group_Detect_p300_random_n100_95$error_1
norm_2_Group_Detect_p300_random_n100_95 <- Group_Detect_p300_random_n100_95$error_2 
norm_m_Group_Detect_p300_random_n100_95 <- Group_Detect_p300_random_n100_95$error_M

# i = 96
norm_f_Group_Detect_p300_random_n100_96 <- Group_Detect_p300_random_n100_96$error_F
norm_1_Group_Detect_p300_random_n100_96 <- Group_Detect_p300_random_n100_96$error_1
norm_2_Group_Detect_p300_random_n100_96 <- Group_Detect_p300_random_n100_96$error_2 
norm_m_Group_Detect_p300_random_n100_96 <- Group_Detect_p300_random_n100_96$error_M

# i = 97
norm_f_Group_Detect_p300_random_n100_97 <- Group_Detect_p300_random_n100_97$error_F
norm_1_Group_Detect_p300_random_n100_97 <- Group_Detect_p300_random_n100_97$error_1
norm_2_Group_Detect_p300_random_n100_97 <- Group_Detect_p300_random_n100_97$error_2 
norm_m_Group_Detect_p300_random_n100_97 <- Group_Detect_p300_random_n100_97$error_M

# i = 98
norm_f_Group_Detect_p300_random_n100_98 <- Group_Detect_p300_random_n100_98$error_F
norm_1_Group_Detect_p300_random_n100_98 <- Group_Detect_p300_random_n100_98$error_1
norm_2_Group_Detect_p300_random_n100_98 <- Group_Detect_p300_random_n100_98$error_2 
norm_m_Group_Detect_p300_random_n100_98 <- Group_Detect_p300_random_n100_98$error_M

# i = 99
norm_f_Group_Detect_p300_random_n100_99 <- Group_Detect_p300_random_n100_99$error_F
norm_1_Group_Detect_p300_random_n100_99 <- Group_Detect_p300_random_n100_99$error_1
norm_2_Group_Detect_p300_random_n100_99 <- Group_Detect_p300_random_n100_99$error_2 
norm_m_Group_Detect_p300_random_n100_99 <- Group_Detect_p300_random_n100_99$error_M

# i = 100
norm_f_Group_Detect_p300_random_n100_100 <- Group_Detect_p300_random_n100_100$error_F
norm_1_Group_Detect_p300_random_n100_100 <- Group_Detect_p300_random_n100_100$error_1
norm_2_Group_Detect_p300_random_n100_100 <- Group_Detect_p300_random_n100_100$error_2 
norm_m_Group_Detect_p300_random_n100_100 <- Group_Detect_p300_random_n100_100$error_M


################# f norm ########################
# Frobenius norm vector
norm_f_Group_Detect_p300_random_n100 <- c(
  norm_f_Group_Detect_p300_random_n100_1, 
  norm_f_Group_Detect_p300_random_n100_2, 
  norm_f_Group_Detect_p300_random_n100_3, 
  norm_f_Group_Detect_p300_random_n100_4, 
  norm_f_Group_Detect_p300_random_n100_5, 
  norm_f_Group_Detect_p300_random_n100_6, 
  norm_f_Group_Detect_p300_random_n100_7, 
  norm_f_Group_Detect_p300_random_n100_8, 
  norm_f_Group_Detect_p300_random_n100_9, 
  norm_f_Group_Detect_p300_random_n100_10, 
  norm_f_Group_Detect_p300_random_n100_11, 
  norm_f_Group_Detect_p300_random_n100_12, 
  norm_f_Group_Detect_p300_random_n100_13, 
  norm_f_Group_Detect_p300_random_n100_14, 
  norm_f_Group_Detect_p300_random_n100_15, 
  norm_f_Group_Detect_p300_random_n100_16, 
  norm_f_Group_Detect_p300_random_n100_17, 
  norm_f_Group_Detect_p300_random_n100_18, 
  norm_f_Group_Detect_p300_random_n100_19, 
  norm_f_Group_Detect_p300_random_n100_20, 
  norm_f_Group_Detect_p300_random_n100_21, 
  norm_f_Group_Detect_p300_random_n100_22, 
  norm_f_Group_Detect_p300_random_n100_23, 
  norm_f_Group_Detect_p300_random_n100_24, 
  norm_f_Group_Detect_p300_random_n100_25, 
  norm_f_Group_Detect_p300_random_n100_26, 
  norm_f_Group_Detect_p300_random_n100_27, 
  norm_f_Group_Detect_p300_random_n100_28, 
  norm_f_Group_Detect_p300_random_n100_29, 
  norm_f_Group_Detect_p300_random_n100_30, 
  norm_f_Group_Detect_p300_random_n100_31, 
  norm_f_Group_Detect_p300_random_n100_32, 
  norm_f_Group_Detect_p300_random_n100_33, 
  norm_f_Group_Detect_p300_random_n100_34, 
  norm_f_Group_Detect_p300_random_n100_35, 
  norm_f_Group_Detect_p300_random_n100_36, 
  norm_f_Group_Detect_p300_random_n100_37, 
  norm_f_Group_Detect_p300_random_n100_38, 
  norm_f_Group_Detect_p300_random_n100_39, 
  norm_f_Group_Detect_p300_random_n100_40, 
  norm_f_Group_Detect_p300_random_n100_41, 
  norm_f_Group_Detect_p300_random_n100_42, 
  norm_f_Group_Detect_p300_random_n100_43, 
  norm_f_Group_Detect_p300_random_n100_44, 
  norm_f_Group_Detect_p300_random_n100_45, 
  norm_f_Group_Detect_p300_random_n100_46, 
  norm_f_Group_Detect_p300_random_n100_47, 
  norm_f_Group_Detect_p300_random_n100_48, 
  norm_f_Group_Detect_p300_random_n100_49, 
  norm_f_Group_Detect_p300_random_n100_50, 
  norm_f_Group_Detect_p300_random_n100_51, 
  norm_f_Group_Detect_p300_random_n100_52, 
  norm_f_Group_Detect_p300_random_n100_53, 
  norm_f_Group_Detect_p300_random_n100_54, 
  norm_f_Group_Detect_p300_random_n100_55, 
  norm_f_Group_Detect_p300_random_n100_56, 
  norm_f_Group_Detect_p300_random_n100_57, 
  norm_f_Group_Detect_p300_random_n100_58, 
  norm_f_Group_Detect_p300_random_n100_59, 
  norm_f_Group_Detect_p300_random_n100_60, 
  norm_f_Group_Detect_p300_random_n100_61, 
  norm_f_Group_Detect_p300_random_n100_62, 
  norm_f_Group_Detect_p300_random_n100_63, 
  norm_f_Group_Detect_p300_random_n100_64, 
  norm_f_Group_Detect_p300_random_n100_65, 
  norm_f_Group_Detect_p300_random_n100_66, 
  norm_f_Group_Detect_p300_random_n100_67, 
  norm_f_Group_Detect_p300_random_n100_68, 
  norm_f_Group_Detect_p300_random_n100_69, 
  norm_f_Group_Detect_p300_random_n100_70, 
  norm_f_Group_Detect_p300_random_n100_71, 
  norm_f_Group_Detect_p300_random_n100_72, 
  norm_f_Group_Detect_p300_random_n100_73, 
  norm_f_Group_Detect_p300_random_n100_74, 
  norm_f_Group_Detect_p300_random_n100_75, 
  norm_f_Group_Detect_p300_random_n100_76, 
  norm_f_Group_Detect_p300_random_n100_77, 
  norm_f_Group_Detect_p300_random_n100_78, 
  norm_f_Group_Detect_p300_random_n100_79, 
  norm_f_Group_Detect_p300_random_n100_80, 
  norm_f_Group_Detect_p300_random_n100_81, 
  norm_f_Group_Detect_p300_random_n100_82, 
  norm_f_Group_Detect_p300_random_n100_83, 
  norm_f_Group_Detect_p300_random_n100_84, 
  norm_f_Group_Detect_p300_random_n100_85, 
  norm_f_Group_Detect_p300_random_n100_86, 
  norm_f_Group_Detect_p300_random_n100_87, 
  norm_f_Group_Detect_p300_random_n100_88, 
  norm_f_Group_Detect_p300_random_n100_89, 
  norm_f_Group_Detect_p300_random_n100_90, 
  norm_f_Group_Detect_p300_random_n100_91, 
  norm_f_Group_Detect_p300_random_n100_92, 
  norm_f_Group_Detect_p300_random_n100_93, 
  norm_f_Group_Detect_p300_random_n100_94, 
  norm_f_Group_Detect_p300_random_n100_95, 
  norm_f_Group_Detect_p300_random_n100_96, 
  norm_f_Group_Detect_p300_random_n100_97, 
  norm_f_Group_Detect_p300_random_n100_98, 
  norm_f_Group_Detect_p300_random_n100_99, 
  norm_f_Group_Detect_p300_random_n100_100
)

mean_norm_f_Group_Detect_p300_random_n100 <- mean(norm_f_Group_Detect_p300_random_n100)
sd_norm_f_Group_Detect_p300_random_n100 <- sd(norm_f_Group_Detect_p300_random_n100)


################# 1 norm ########################
norm_1_Group_Detect_p300_random_n100 <- c(
  norm_1_Group_Detect_p300_random_n100_1, 
  norm_1_Group_Detect_p300_random_n100_2, 
  norm_1_Group_Detect_p300_random_n100_3, 
  norm_1_Group_Detect_p300_random_n100_4, 
  norm_1_Group_Detect_p300_random_n100_5, 
  norm_1_Group_Detect_p300_random_n100_6, 
  norm_1_Group_Detect_p300_random_n100_7, 
  norm_1_Group_Detect_p300_random_n100_8, 
  norm_1_Group_Detect_p300_random_n100_9, 
  norm_1_Group_Detect_p300_random_n100_10, 
  norm_1_Group_Detect_p300_random_n100_11, 
  norm_1_Group_Detect_p300_random_n100_12, 
  norm_1_Group_Detect_p300_random_n100_13, 
  norm_1_Group_Detect_p300_random_n100_14, 
  norm_1_Group_Detect_p300_random_n100_15, 
  norm_1_Group_Detect_p300_random_n100_16, 
  norm_1_Group_Detect_p300_random_n100_17, 
  norm_1_Group_Detect_p300_random_n100_18, 
  norm_1_Group_Detect_p300_random_n100_19, 
  norm_1_Group_Detect_p300_random_n100_20, 
  norm_1_Group_Detect_p300_random_n100_21, 
  norm_1_Group_Detect_p300_random_n100_22, 
  norm_1_Group_Detect_p300_random_n100_23, 
  norm_1_Group_Detect_p300_random_n100_24, 
  norm_1_Group_Detect_p300_random_n100_25, 
  norm_1_Group_Detect_p300_random_n100_26, 
  norm_1_Group_Detect_p300_random_n100_27, 
  norm_1_Group_Detect_p300_random_n100_28, 
  norm_1_Group_Detect_p300_random_n100_29, 
  norm_1_Group_Detect_p300_random_n100_30, 
  norm_1_Group_Detect_p300_random_n100_31, 
  norm_1_Group_Detect_p300_random_n100_32, 
  norm_1_Group_Detect_p300_random_n100_33, 
  norm_1_Group_Detect_p300_random_n100_34, 
  norm_1_Group_Detect_p300_random_n100_35, 
  norm_1_Group_Detect_p300_random_n100_36, 
  norm_1_Group_Detect_p300_random_n100_37, 
  norm_1_Group_Detect_p300_random_n100_38, 
  norm_1_Group_Detect_p300_random_n100_39, 
  norm_1_Group_Detect_p300_random_n100_40, 
  norm_1_Group_Detect_p300_random_n100_41, 
  norm_1_Group_Detect_p300_random_n100_42, 
  norm_1_Group_Detect_p300_random_n100_43, 
  norm_1_Group_Detect_p300_random_n100_44, 
  norm_1_Group_Detect_p300_random_n100_45, 
  norm_1_Group_Detect_p300_random_n100_46, 
  norm_1_Group_Detect_p300_random_n100_47, 
  norm_1_Group_Detect_p300_random_n100_48, 
  norm_1_Group_Detect_p300_random_n100_49, 
  norm_1_Group_Detect_p300_random_n100_50, 
  norm_1_Group_Detect_p300_random_n100_51, 
  norm_1_Group_Detect_p300_random_n100_52, 
  norm_1_Group_Detect_p300_random_n100_53, 
  norm_1_Group_Detect_p300_random_n100_54, 
  norm_1_Group_Detect_p300_random_n100_55, 
  norm_1_Group_Detect_p300_random_n100_56, 
  norm_1_Group_Detect_p300_random_n100_57, 
  norm_1_Group_Detect_p300_random_n100_58, 
  norm_1_Group_Detect_p300_random_n100_59, 
  norm_1_Group_Detect_p300_random_n100_60, 
  norm_1_Group_Detect_p300_random_n100_61, 
  norm_1_Group_Detect_p300_random_n100_62, 
  norm_1_Group_Detect_p300_random_n100_63, 
  norm_1_Group_Detect_p300_random_n100_64, 
  norm_1_Group_Detect_p300_random_n100_65, 
  norm_1_Group_Detect_p300_random_n100_66, 
  norm_1_Group_Detect_p300_random_n100_67, 
  norm_1_Group_Detect_p300_random_n100_68, 
  norm_1_Group_Detect_p300_random_n100_69, 
  norm_1_Group_Detect_p300_random_n100_70, 
  norm_1_Group_Detect_p300_random_n100_71, 
  norm_1_Group_Detect_p300_random_n100_72, 
  norm_1_Group_Detect_p300_random_n100_73, 
  norm_1_Group_Detect_p300_random_n100_74, 
  norm_1_Group_Detect_p300_random_n100_75, 
  norm_1_Group_Detect_p300_random_n100_76, 
  norm_1_Group_Detect_p300_random_n100_77, 
  norm_1_Group_Detect_p300_random_n100_78, 
  norm_1_Group_Detect_p300_random_n100_79, 
  norm_1_Group_Detect_p300_random_n100_80, 
  norm_1_Group_Detect_p300_random_n100_81, 
  norm_1_Group_Detect_p300_random_n100_82, 
  norm_1_Group_Detect_p300_random_n100_83, 
  norm_1_Group_Detect_p300_random_n100_84, 
  norm_1_Group_Detect_p300_random_n100_85, 
  norm_1_Group_Detect_p300_random_n100_86, 
  norm_1_Group_Detect_p300_random_n100_87, 
  norm_1_Group_Detect_p300_random_n100_88, 
  norm_1_Group_Detect_p300_random_n100_89, 
  norm_1_Group_Detect_p300_random_n100_90, 
  norm_1_Group_Detect_p300_random_n100_91, 
  norm_1_Group_Detect_p300_random_n100_92, 
  norm_1_Group_Detect_p300_random_n100_93, 
  norm_1_Group_Detect_p300_random_n100_94, 
  norm_1_Group_Detect_p300_random_n100_95, 
  norm_1_Group_Detect_p300_random_n100_96, 
  norm_1_Group_Detect_p300_random_n100_97, 
  norm_1_Group_Detect_p300_random_n100_98, 
  norm_1_Group_Detect_p300_random_n100_99, 
  norm_1_Group_Detect_p300_random_n100_100
)

mean_norm_1_Group_Detect_p300_random_n100 <- mean(norm_1_Group_Detect_p300_random_n100)
sd_norm_1_Group_Detect_p300_random_n100 <- sd(norm_1_Group_Detect_p300_random_n100)


################# 2 norm ########################
# 2-norm vector
norm_2_Group_Detect_p300_random_n100 <- c(
  norm_2_Group_Detect_p300_random_n100_1, 
  norm_2_Group_Detect_p300_random_n100_2, 
  norm_2_Group_Detect_p300_random_n100_3, 
  norm_2_Group_Detect_p300_random_n100_4, 
  norm_2_Group_Detect_p300_random_n100_5, 
  norm_2_Group_Detect_p300_random_n100_6, 
  norm_2_Group_Detect_p300_random_n100_7, 
  norm_2_Group_Detect_p300_random_n100_8, 
  norm_2_Group_Detect_p300_random_n100_9, 
  norm_2_Group_Detect_p300_random_n100_10, 
  norm_2_Group_Detect_p300_random_n100_11, 
  norm_2_Group_Detect_p300_random_n100_12, 
  norm_2_Group_Detect_p300_random_n100_13, 
  norm_2_Group_Detect_p300_random_n100_14, 
  norm_2_Group_Detect_p300_random_n100_15, 
  norm_2_Group_Detect_p300_random_n100_16, 
  norm_2_Group_Detect_p300_random_n100_17, 
  norm_2_Group_Detect_p300_random_n100_18, 
  norm_2_Group_Detect_p300_random_n100_19, 
  norm_2_Group_Detect_p300_random_n100_20, 
  norm_2_Group_Detect_p300_random_n100_21, 
  norm_2_Group_Detect_p300_random_n100_22, 
  norm_2_Group_Detect_p300_random_n100_23, 
  norm_2_Group_Detect_p300_random_n100_24, 
  norm_2_Group_Detect_p300_random_n100_25, 
  norm_2_Group_Detect_p300_random_n100_26, 
  norm_2_Group_Detect_p300_random_n100_27, 
  norm_2_Group_Detect_p300_random_n100_28, 
  norm_2_Group_Detect_p300_random_n100_29, 
  norm_2_Group_Detect_p300_random_n100_30, 
  norm_2_Group_Detect_p300_random_n100_31, 
  norm_2_Group_Detect_p300_random_n100_32, 
  norm_2_Group_Detect_p300_random_n100_33, 
  norm_2_Group_Detect_p300_random_n100_34, 
  norm_2_Group_Detect_p300_random_n100_35, 
  norm_2_Group_Detect_p300_random_n100_36, 
  norm_2_Group_Detect_p300_random_n100_37, 
  norm_2_Group_Detect_p300_random_n100_38, 
  norm_2_Group_Detect_p300_random_n100_39, 
  norm_2_Group_Detect_p300_random_n100_40, 
  norm_2_Group_Detect_p300_random_n100_41, 
  norm_2_Group_Detect_p300_random_n100_42, 
  norm_2_Group_Detect_p300_random_n100_43, 
  norm_2_Group_Detect_p300_random_n100_44, 
  norm_2_Group_Detect_p300_random_n100_45, 
  norm_2_Group_Detect_p300_random_n100_46, 
  norm_2_Group_Detect_p300_random_n100_47, 
  norm_2_Group_Detect_p300_random_n100_48, 
  norm_2_Group_Detect_p300_random_n100_49, 
  norm_2_Group_Detect_p300_random_n100_50, 
  norm_2_Group_Detect_p300_random_n100_51, 
  norm_2_Group_Detect_p300_random_n100_52, 
  norm_2_Group_Detect_p300_random_n100_53, 
  norm_2_Group_Detect_p300_random_n100_54, 
  norm_2_Group_Detect_p300_random_n100_55, 
  norm_2_Group_Detect_p300_random_n100_56, 
  norm_2_Group_Detect_p300_random_n100_57, 
  norm_2_Group_Detect_p300_random_n100_58, 
  norm_2_Group_Detect_p300_random_n100_59, 
  norm_2_Group_Detect_p300_random_n100_60, 
  norm_2_Group_Detect_p300_random_n100_61, 
  norm_2_Group_Detect_p300_random_n100_62, 
  norm_2_Group_Detect_p300_random_n100_63, 
  norm_2_Group_Detect_p300_random_n100_64, 
  norm_2_Group_Detect_p300_random_n100_65, 
  norm_2_Group_Detect_p300_random_n100_66, 
  norm_2_Group_Detect_p300_random_n100_67, 
  norm_2_Group_Detect_p300_random_n100_68, 
  norm_2_Group_Detect_p300_random_n100_69, 
  norm_2_Group_Detect_p300_random_n100_70, 
  norm_2_Group_Detect_p300_random_n100_71, 
  norm_2_Group_Detect_p300_random_n100_72, 
  norm_2_Group_Detect_p300_random_n100_73, 
  norm_2_Group_Detect_p300_random_n100_74, 
  norm_2_Group_Detect_p300_random_n100_75, 
  norm_2_Group_Detect_p300_random_n100_76, 
  norm_2_Group_Detect_p300_random_n100_77, 
  norm_2_Group_Detect_p300_random_n100_78, 
  norm_2_Group_Detect_p300_random_n100_79, 
  norm_2_Group_Detect_p300_random_n100_80, 
  norm_2_Group_Detect_p300_random_n100_81, 
  norm_2_Group_Detect_p300_random_n100_82, 
  norm_2_Group_Detect_p300_random_n100_83, 
  norm_2_Group_Detect_p300_random_n100_84, 
  norm_2_Group_Detect_p300_random_n100_85, 
  norm_2_Group_Detect_p300_random_n100_86, 
  norm_2_Group_Detect_p300_random_n100_87, 
  norm_2_Group_Detect_p300_random_n100_88, 
  norm_2_Group_Detect_p300_random_n100_89, 
  norm_2_Group_Detect_p300_random_n100_90, 
  norm_2_Group_Detect_p300_random_n100_91, 
  norm_2_Group_Detect_p300_random_n100_92, 
  norm_2_Group_Detect_p300_random_n100_93, 
  norm_2_Group_Detect_p300_random_n100_94, 
  norm_2_Group_Detect_p300_random_n100_95, 
  norm_2_Group_Detect_p300_random_n100_96, 
  norm_2_Group_Detect_p300_random_n100_97, 
  norm_2_Group_Detect_p300_random_n100_98, 
  norm_2_Group_Detect_p300_random_n100_99, 
  norm_2_Group_Detect_p300_random_n100_100
)

mean_norm_2_Group_Detect_p300_random_n100 <- mean(norm_2_Group_Detect_p300_random_n100)
sd_norm_2_Group_Detect_p300_random_n100 <- sd(norm_2_Group_Detect_p300_random_n100)


################# m norm ########################
norm_m_Group_Detect_p300_random_n100 <- c(
  norm_m_Group_Detect_p300_random_n100_1, 
  norm_m_Group_Detect_p300_random_n100_2, 
  norm_m_Group_Detect_p300_random_n100_3, 
  norm_m_Group_Detect_p300_random_n100_4, 
  norm_m_Group_Detect_p300_random_n100_5, 
  norm_m_Group_Detect_p300_random_n100_6, 
  norm_m_Group_Detect_p300_random_n100_7, 
  norm_m_Group_Detect_p300_random_n100_8, 
  norm_m_Group_Detect_p300_random_n100_9, 
  norm_m_Group_Detect_p300_random_n100_10, 
  norm_m_Group_Detect_p300_random_n100_11, 
  norm_m_Group_Detect_p300_random_n100_12, 
  norm_m_Group_Detect_p300_random_n100_13, 
  norm_m_Group_Detect_p300_random_n100_14, 
  norm_m_Group_Detect_p300_random_n100_15, 
  norm_m_Group_Detect_p300_random_n100_16, 
  norm_m_Group_Detect_p300_random_n100_17, 
  norm_m_Group_Detect_p300_random_n100_18, 
  norm_m_Group_Detect_p300_random_n100_19, 
  norm_m_Group_Detect_p300_random_n100_20, 
  norm_m_Group_Detect_p300_random_n100_21, 
  norm_m_Group_Detect_p300_random_n100_22, 
  norm_m_Group_Detect_p300_random_n100_23, 
  norm_m_Group_Detect_p300_random_n100_24, 
  norm_m_Group_Detect_p300_random_n100_25, 
  norm_m_Group_Detect_p300_random_n100_26, 
  norm_m_Group_Detect_p300_random_n100_27, 
  norm_m_Group_Detect_p300_random_n100_28, 
  norm_m_Group_Detect_p300_random_n100_29, 
  norm_m_Group_Detect_p300_random_n100_30, 
  norm_m_Group_Detect_p300_random_n100_31, 
  norm_m_Group_Detect_p300_random_n100_32, 
  norm_m_Group_Detect_p300_random_n100_33, 
  norm_m_Group_Detect_p300_random_n100_34, 
  norm_m_Group_Detect_p300_random_n100_35, 
  norm_m_Group_Detect_p300_random_n100_36, 
  norm_m_Group_Detect_p300_random_n100_37, 
  norm_m_Group_Detect_p300_random_n100_38, 
  norm_m_Group_Detect_p300_random_n100_39, 
  norm_m_Group_Detect_p300_random_n100_40, 
  norm_m_Group_Detect_p300_random_n100_41, 
  norm_m_Group_Detect_p300_random_n100_42, 
  norm_m_Group_Detect_p300_random_n100_43, 
  norm_m_Group_Detect_p300_random_n100_44, 
  norm_m_Group_Detect_p300_random_n100_45, 
  norm_m_Group_Detect_p300_random_n100_46, 
  norm_m_Group_Detect_p300_random_n100_47, 
  norm_m_Group_Detect_p300_random_n100_48, 
  norm_m_Group_Detect_p300_random_n100_49, 
  norm_m_Group_Detect_p300_random_n100_50, 
  norm_m_Group_Detect_p300_random_n100_51, 
  norm_m_Group_Detect_p300_random_n100_52, 
  norm_m_Group_Detect_p300_random_n100_53, 
  norm_m_Group_Detect_p300_random_n100_54, 
  norm_m_Group_Detect_p300_random_n100_55, 
  norm_m_Group_Detect_p300_random_n100_56, 
  norm_m_Group_Detect_p300_random_n100_57, 
  norm_m_Group_Detect_p300_random_n100_58, 
  norm_m_Group_Detect_p300_random_n100_59, 
  norm_m_Group_Detect_p300_random_n100_60, 
  norm_m_Group_Detect_p300_random_n100_61, 
  norm_m_Group_Detect_p300_random_n100_62, 
  norm_m_Group_Detect_p300_random_n100_63, 
  norm_m_Group_Detect_p300_random_n100_64, 
  norm_m_Group_Detect_p300_random_n100_65, 
  norm_m_Group_Detect_p300_random_n100_66, 
  norm_m_Group_Detect_p300_random_n100_67, 
  norm_m_Group_Detect_p300_random_n100_68, 
  norm_m_Group_Detect_p300_random_n100_69, 
  norm_m_Group_Detect_p300_random_n100_70, 
  norm_m_Group_Detect_p300_random_n100_71, 
  norm_m_Group_Detect_p300_random_n100_72, 
  norm_m_Group_Detect_p300_random_n100_73, 
  norm_m_Group_Detect_p300_random_n100_74, 
  norm_m_Group_Detect_p300_random_n100_75, 
  norm_m_Group_Detect_p300_random_n100_76, 
  norm_m_Group_Detect_p300_random_n100_77, 
  norm_m_Group_Detect_p300_random_n100_78, 
  norm_m_Group_Detect_p300_random_n100_79, 
  norm_m_Group_Detect_p300_random_n100_80, 
  norm_m_Group_Detect_p300_random_n100_81, 
  norm_m_Group_Detect_p300_random_n100_82, 
  norm_m_Group_Detect_p300_random_n100_83, 
  norm_m_Group_Detect_p300_random_n100_84, 
  norm_m_Group_Detect_p300_random_n100_85, 
  norm_m_Group_Detect_p300_random_n100_86, 
  norm_m_Group_Detect_p300_random_n100_87, 
  norm_m_Group_Detect_p300_random_n100_88, 
  norm_m_Group_Detect_p300_random_n100_89, 
  norm_m_Group_Detect_p300_random_n100_90, 
  norm_m_Group_Detect_p300_random_n100_91, 
  norm_m_Group_Detect_p300_random_n100_92, 
  norm_m_Group_Detect_p300_random_n100_93, 
  norm_m_Group_Detect_p300_random_n100_94, 
  norm_m_Group_Detect_p300_random_n100_95, 
  norm_m_Group_Detect_p300_random_n100_96, 
  norm_m_Group_Detect_p300_random_n100_97, 
  norm_m_Group_Detect_p300_random_n100_98, 
  norm_m_Group_Detect_p300_random_n100_99, 
  norm_m_Group_Detect_p300_random_n100_100
)

mean_norm_m_Group_Detect_p300_random_n100 <- mean(norm_m_Group_Detect_p300_random_n100)
sd_norm_m_Group_Detect_p300_random_n100 <- sd(norm_m_Group_Detect_p300_random_n100)

################# time ########################
time_Group_Detect_p300_random_n100/100



##########################################################
###################### bmsppre ###########################
##########################################################
# i = 1
diff_bmsppre_p300_random_n100_1 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_1
norm_f_bmsppre_p300_random_n100_1 <- norm(diff_bmsppre_p300_random_n100_1, type="f") 
norm_1_bmsppre_p300_random_n100_1 <- norm(diff_bmsppre_p300_random_n100_1, type="1") 
norm_2_bmsppre_p300_random_n100_1 <- norm(diff_bmsppre_p300_random_n100_1, type="2") 
norm_m_bmsppre_p300_random_n100_1 <- norm(diff_bmsppre_p300_random_n100_1, type="m") 

# i = 2
diff_bmsppre_p300_random_n100_2 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_2
norm_f_bmsppre_p300_random_n100_2 <- norm(diff_bmsppre_p300_random_n100_2, type="f") 
norm_1_bmsppre_p300_random_n100_2 <- norm(diff_bmsppre_p300_random_n100_2, type="1") 
norm_2_bmsppre_p300_random_n100_2 <- norm(diff_bmsppre_p300_random_n100_2, type="2") 
norm_m_bmsppre_p300_random_n100_2 <- norm(diff_bmsppre_p300_random_n100_2, type="m") 

# i = 3
diff_bmsppre_p300_random_n100_3 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_3
norm_f_bmsppre_p300_random_n100_3 <- norm(diff_bmsppre_p300_random_n100_3, type="f") 
norm_1_bmsppre_p300_random_n100_3 <- norm(diff_bmsppre_p300_random_n100_3, type="1") 
norm_2_bmsppre_p300_random_n100_3 <- norm(diff_bmsppre_p300_random_n100_3, type="2") 
norm_m_bmsppre_p300_random_n100_3 <- norm(diff_bmsppre_p300_random_n100_3, type="m") 

# i = 4
diff_bmsppre_p300_random_n100_4 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_4
norm_f_bmsppre_p300_random_n100_4 <- norm(diff_bmsppre_p300_random_n100_4, type="f") 
norm_1_bmsppre_p300_random_n100_4 <- norm(diff_bmsppre_p300_random_n100_4, type="1") 
norm_2_bmsppre_p300_random_n100_4 <- norm(diff_bmsppre_p300_random_n100_4, type="2") 
norm_m_bmsppre_p300_random_n100_4 <- norm(diff_bmsppre_p300_random_n100_4, type="m") 

# i = 5
diff_bmsppre_p300_random_n100_5 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_5
norm_f_bmsppre_p300_random_n100_5 <- norm(diff_bmsppre_p300_random_n100_5, type="f") 
norm_1_bmsppre_p300_random_n100_5 <- norm(diff_bmsppre_p300_random_n100_5, type="1") 
norm_2_bmsppre_p300_random_n100_5 <- norm(diff_bmsppre_p300_random_n100_5, type="2") 
norm_m_bmsppre_p300_random_n100_5 <- norm(diff_bmsppre_p300_random_n100_5, type="m") 

# i = 6
diff_bmsppre_p300_random_n100_6 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_6
norm_f_bmsppre_p300_random_n100_6 <- norm(diff_bmsppre_p300_random_n100_6, type="f") 
norm_1_bmsppre_p300_random_n100_6 <- norm(diff_bmsppre_p300_random_n100_6, type="1") 
norm_2_bmsppre_p300_random_n100_6 <- norm(diff_bmsppre_p300_random_n100_6, type="2") 
norm_m_bmsppre_p300_random_n100_6 <- norm(diff_bmsppre_p300_random_n100_6, type="m") 

# i = 7
diff_bmsppre_p300_random_n100_7 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_7
norm_f_bmsppre_p300_random_n100_7 <- norm(diff_bmsppre_p300_random_n100_7, type="f") 
norm_1_bmsppre_p300_random_n100_7 <- norm(diff_bmsppre_p300_random_n100_7, type="1") 
norm_2_bmsppre_p300_random_n100_7 <- norm(diff_bmsppre_p300_random_n100_7, type="2") 
norm_m_bmsppre_p300_random_n100_7 <- norm(diff_bmsppre_p300_random_n100_7, type="m") 

# i = 8
diff_bmsppre_p300_random_n100_8 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_8
norm_f_bmsppre_p300_random_n100_8 <- norm(diff_bmsppre_p300_random_n100_8, type="f") 
norm_1_bmsppre_p300_random_n100_8 <- norm(diff_bmsppre_p300_random_n100_8, type="1") 
norm_2_bmsppre_p300_random_n100_8 <- norm(diff_bmsppre_p300_random_n100_8, type="2") 
norm_m_bmsppre_p300_random_n100_8 <- norm(diff_bmsppre_p300_random_n100_8, type="m") 

# i = 9
diff_bmsppre_p300_random_n100_9 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_9
norm_f_bmsppre_p300_random_n100_9 <- norm(diff_bmsppre_p300_random_n100_9, type="f") 
norm_1_bmsppre_p300_random_n100_9 <- norm(diff_bmsppre_p300_random_n100_9, type="1") 
norm_2_bmsppre_p300_random_n100_9 <- norm(diff_bmsppre_p300_random_n100_9, type="2") 
norm_m_bmsppre_p300_random_n100_9 <- norm(diff_bmsppre_p300_random_n100_9, type="m") 

# i = 10
diff_bmsppre_p300_random_n100_10 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_10
norm_f_bmsppre_p300_random_n100_10 <- norm(diff_bmsppre_p300_random_n100_10, type="f") 
norm_1_bmsppre_p300_random_n100_10 <- norm(diff_bmsppre_p300_random_n100_10, type="1") 
norm_2_bmsppre_p300_random_n100_10 <- norm(diff_bmsppre_p300_random_n100_10, type="2") 
norm_m_bmsppre_p300_random_n100_10 <- norm(diff_bmsppre_p300_random_n100_10, type="m") 

# i = 11
diff_bmsppre_p300_random_n100_11 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_11
norm_f_bmsppre_p300_random_n100_11 <- norm(diff_bmsppre_p300_random_n100_11, type="f") 
norm_1_bmsppre_p300_random_n100_11 <- norm(diff_bmsppre_p300_random_n100_11, type="1") 
norm_2_bmsppre_p300_random_n100_11 <- norm(diff_bmsppre_p300_random_n100_11, type="2") 
norm_m_bmsppre_p300_random_n100_11 <- norm(diff_bmsppre_p300_random_n100_11, type="m") 

# i = 12
diff_bmsppre_p300_random_n100_12 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_12
norm_f_bmsppre_p300_random_n100_12 <- norm(diff_bmsppre_p300_random_n100_12, type="f") 
norm_1_bmsppre_p300_random_n100_12 <- norm(diff_bmsppre_p300_random_n100_12, type="1") 
norm_2_bmsppre_p300_random_n100_12 <- norm(diff_bmsppre_p300_random_n100_12, type="2") 
norm_m_bmsppre_p300_random_n100_12 <- norm(diff_bmsppre_p300_random_n100_12, type="m") 

# i = 13
diff_bmsppre_p300_random_n100_13 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_13
norm_f_bmsppre_p300_random_n100_13 <- norm(diff_bmsppre_p300_random_n100_13, type="f") 
norm_1_bmsppre_p300_random_n100_13 <- norm(diff_bmsppre_p300_random_n100_13, type="1") 
norm_2_bmsppre_p300_random_n100_13 <- norm(diff_bmsppre_p300_random_n100_13, type="2") 
norm_m_bmsppre_p300_random_n100_13 <- norm(diff_bmsppre_p300_random_n100_13, type="m") 

# i = 14
diff_bmsppre_p300_random_n100_14 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_14
norm_f_bmsppre_p300_random_n100_14 <- norm(diff_bmsppre_p300_random_n100_14, type="f") 
norm_1_bmsppre_p300_random_n100_14 <- norm(diff_bmsppre_p300_random_n100_14, type="1") 
norm_2_bmsppre_p300_random_n100_14 <- norm(diff_bmsppre_p300_random_n100_14, type="2") 
norm_m_bmsppre_p300_random_n100_14 <- norm(diff_bmsppre_p300_random_n100_14, type="m") 

# i = 15
diff_bmsppre_p300_random_n100_15 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_15
norm_f_bmsppre_p300_random_n100_15 <- norm(diff_bmsppre_p300_random_n100_15, type="f") 
norm_1_bmsppre_p300_random_n100_15 <- norm(diff_bmsppre_p300_random_n100_15, type="1") 
norm_2_bmsppre_p300_random_n100_15 <- norm(diff_bmsppre_p300_random_n100_15, type="2") 
norm_m_bmsppre_p300_random_n100_15 <- norm(diff_bmsppre_p300_random_n100_15, type="m") 

# i = 16
diff_bmsppre_p300_random_n100_16 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_16
norm_f_bmsppre_p300_random_n100_16 <- norm(diff_bmsppre_p300_random_n100_16, type="f") 
norm_1_bmsppre_p300_random_n100_16 <- norm(diff_bmsppre_p300_random_n100_16, type="1") 
norm_2_bmsppre_p300_random_n100_16 <- norm(diff_bmsppre_p300_random_n100_16, type="2") 
norm_m_bmsppre_p300_random_n100_16 <- norm(diff_bmsppre_p300_random_n100_16, type="m") 

# i = 17
diff_bmsppre_p300_random_n100_17 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_17
norm_f_bmsppre_p300_random_n100_17 <- norm(diff_bmsppre_p300_random_n100_17, type="f") 
norm_1_bmsppre_p300_random_n100_17 <- norm(diff_bmsppre_p300_random_n100_17, type="1") 
norm_2_bmsppre_p300_random_n100_17 <- norm(diff_bmsppre_p300_random_n100_17, type="2") 
norm_m_bmsppre_p300_random_n100_17 <- norm(diff_bmsppre_p300_random_n100_17, type="m") 

# i = 18
diff_bmsppre_p300_random_n100_18 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_18
norm_f_bmsppre_p300_random_n100_18 <- norm(diff_bmsppre_p300_random_n100_18, type="f") 
norm_1_bmsppre_p300_random_n100_18 <- norm(diff_bmsppre_p300_random_n100_18, type="1") 
norm_2_bmsppre_p300_random_n100_18 <- norm(diff_bmsppre_p300_random_n100_18, type="2") 
norm_m_bmsppre_p300_random_n100_18 <- norm(diff_bmsppre_p300_random_n100_18, type="m") 

# i = 19
diff_bmsppre_p300_random_n100_19 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_19
norm_f_bmsppre_p300_random_n100_19 <- norm(diff_bmsppre_p300_random_n100_19, type="f") 
norm_1_bmsppre_p300_random_n100_19 <- norm(diff_bmsppre_p300_random_n100_19, type="1") 
norm_2_bmsppre_p300_random_n100_19 <- norm(diff_bmsppre_p300_random_n100_19, type="2") 
norm_m_bmsppre_p300_random_n100_19 <- norm(diff_bmsppre_p300_random_n100_19, type="m") 

# i = 20
diff_bmsppre_p300_random_n100_20 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_20
norm_f_bmsppre_p300_random_n100_20 <- norm(diff_bmsppre_p300_random_n100_20, type="f") 
norm_1_bmsppre_p300_random_n100_20 <- norm(diff_bmsppre_p300_random_n100_20, type="1") 
norm_2_bmsppre_p300_random_n100_20 <- norm(diff_bmsppre_p300_random_n100_20, type="2") 
norm_m_bmsppre_p300_random_n100_20 <- norm(diff_bmsppre_p300_random_n100_20, type="m") 

# i = 21
diff_bmsppre_p300_random_n100_21 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_21
norm_f_bmsppre_p300_random_n100_21 <- norm(diff_bmsppre_p300_random_n100_21, type="f") 
norm_1_bmsppre_p300_random_n100_21 <- norm(diff_bmsppre_p300_random_n100_21, type="1") 
norm_2_bmsppre_p300_random_n100_21 <- norm(diff_bmsppre_p300_random_n100_21, type="2") 
norm_m_bmsppre_p300_random_n100_21 <- norm(diff_bmsppre_p300_random_n100_21, type="m") 

# i = 22
diff_bmsppre_p300_random_n100_22 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_22
norm_f_bmsppre_p300_random_n100_22 <- norm(diff_bmsppre_p300_random_n100_22, type="f") 
norm_1_bmsppre_p300_random_n100_22 <- norm(diff_bmsppre_p300_random_n100_22, type="1") 
norm_2_bmsppre_p300_random_n100_22 <- norm(diff_bmsppre_p300_random_n100_22, type="2") 
norm_m_bmsppre_p300_random_n100_22 <- norm(diff_bmsppre_p300_random_n100_22, type="m") 

# i = 23
diff_bmsppre_p300_random_n100_23 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_23
norm_f_bmsppre_p300_random_n100_23 <- norm(diff_bmsppre_p300_random_n100_23, type="f") 
norm_1_bmsppre_p300_random_n100_23 <- norm(diff_bmsppre_p300_random_n100_23, type="1") 
norm_2_bmsppre_p300_random_n100_23 <- norm(diff_bmsppre_p300_random_n100_23, type="2") 
norm_m_bmsppre_p300_random_n100_23 <- norm(diff_bmsppre_p300_random_n100_23, type="m") 

# i = 24
diff_bmsppre_p300_random_n100_24 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_24
norm_f_bmsppre_p300_random_n100_24 <- norm(diff_bmsppre_p300_random_n100_24, type="f") 
norm_1_bmsppre_p300_random_n100_24 <- norm(diff_bmsppre_p300_random_n100_24, type="1") 
norm_2_bmsppre_p300_random_n100_24 <- norm(diff_bmsppre_p300_random_n100_24, type="2") 
norm_m_bmsppre_p300_random_n100_24 <- norm(diff_bmsppre_p300_random_n100_24, type="m") 

# i = 25
diff_bmsppre_p300_random_n100_25 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_25
norm_f_bmsppre_p300_random_n100_25 <- norm(diff_bmsppre_p300_random_n100_25, type="f") 
norm_1_bmsppre_p300_random_n100_25 <- norm(diff_bmsppre_p300_random_n100_25, type="1") 
norm_2_bmsppre_p300_random_n100_25 <- norm(diff_bmsppre_p300_random_n100_25, type="2") 
norm_m_bmsppre_p300_random_n100_25 <- norm(diff_bmsppre_p300_random_n100_25, type="m") 

# i = 26
diff_bmsppre_p300_random_n100_26 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_26
norm_f_bmsppre_p300_random_n100_26 <- norm(diff_bmsppre_p300_random_n100_26, type="f") 
norm_1_bmsppre_p300_random_n100_26 <- norm(diff_bmsppre_p300_random_n100_26, type="1") 
norm_2_bmsppre_p300_random_n100_26 <- norm(diff_bmsppre_p300_random_n100_26, type="2") 
norm_m_bmsppre_p300_random_n100_26 <- norm(diff_bmsppre_p300_random_n100_26, type="m") 

# i = 27
diff_bmsppre_p300_random_n100_27 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_27
norm_f_bmsppre_p300_random_n100_27 <- norm(diff_bmsppre_p300_random_n100_27, type="f") 
norm_1_bmsppre_p300_random_n100_27 <- norm(diff_bmsppre_p300_random_n100_27, type="1") 
norm_2_bmsppre_p300_random_n100_27 <- norm(diff_bmsppre_p300_random_n100_27, type="2") 
norm_m_bmsppre_p300_random_n100_27 <- norm(diff_bmsppre_p300_random_n100_27, type="m") 

# i = 28
diff_bmsppre_p300_random_n100_28 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_28
norm_f_bmsppre_p300_random_n100_28 <- norm(diff_bmsppre_p300_random_n100_28, type="f") 
norm_1_bmsppre_p300_random_n100_28 <- norm(diff_bmsppre_p300_random_n100_28, type="1") 
norm_2_bmsppre_p300_random_n100_28 <- norm(diff_bmsppre_p300_random_n100_28, type="2") 
norm_m_bmsppre_p300_random_n100_28 <- norm(diff_bmsppre_p300_random_n100_28, type="m") 

# i = 29
diff_bmsppre_p300_random_n100_29 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_29
norm_f_bmsppre_p300_random_n100_29 <- norm(diff_bmsppre_p300_random_n100_29, type="f") 
norm_1_bmsppre_p300_random_n100_29 <- norm(diff_bmsppre_p300_random_n100_29, type="1") 
norm_2_bmsppre_p300_random_n100_29 <- norm(diff_bmsppre_p300_random_n100_29, type="2") 
norm_m_bmsppre_p300_random_n100_29 <- norm(diff_bmsppre_p300_random_n100_29, type="m") 

# i = 30
diff_bmsppre_p300_random_n100_30 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_30
norm_f_bmsppre_p300_random_n100_30 <- norm(diff_bmsppre_p300_random_n100_30, type="f") 
norm_1_bmsppre_p300_random_n100_30 <- norm(diff_bmsppre_p300_random_n100_30, type="1") 
norm_2_bmsppre_p300_random_n100_30 <- norm(diff_bmsppre_p300_random_n100_30, type="2") 
norm_m_bmsppre_p300_random_n100_30 <- norm(diff_bmsppre_p300_random_n100_30, type="m") 

# i = 31
diff_bmsppre_p300_random_n100_31 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_31
norm_f_bmsppre_p300_random_n100_31 <- norm(diff_bmsppre_p300_random_n100_31, type="f") 
norm_1_bmsppre_p300_random_n100_31 <- norm(diff_bmsppre_p300_random_n100_31, type="1") 
norm_2_bmsppre_p300_random_n100_31 <- norm(diff_bmsppre_p300_random_n100_31, type="2") 
norm_m_bmsppre_p300_random_n100_31 <- norm(diff_bmsppre_p300_random_n100_31, type="m") 

# i = 32
diff_bmsppre_p300_random_n100_32 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_32
norm_f_bmsppre_p300_random_n100_32 <- norm(diff_bmsppre_p300_random_n100_32, type="f") 
norm_1_bmsppre_p300_random_n100_32 <- norm(diff_bmsppre_p300_random_n100_32, type="1") 
norm_2_bmsppre_p300_random_n100_32 <- norm(diff_bmsppre_p300_random_n100_32, type="2") 
norm_m_bmsppre_p300_random_n100_32 <- norm(diff_bmsppre_p300_random_n100_32, type="m") 

# i = 33
diff_bmsppre_p300_random_n100_33 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_33
norm_f_bmsppre_p300_random_n100_33 <- norm(diff_bmsppre_p300_random_n100_33, type="f") 
norm_1_bmsppre_p300_random_n100_33 <- norm(diff_bmsppre_p300_random_n100_33, type="1") 
norm_2_bmsppre_p300_random_n100_33 <- norm(diff_bmsppre_p300_random_n100_33, type="2") 
norm_m_bmsppre_p300_random_n100_33 <- norm(diff_bmsppre_p300_random_n100_33, type="m") 

# i = 34
diff_bmsppre_p300_random_n100_34 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_34
norm_f_bmsppre_p300_random_n100_34 <- norm(diff_bmsppre_p300_random_n100_34, type="f") 
norm_1_bmsppre_p300_random_n100_34 <- norm(diff_bmsppre_p300_random_n100_34, type="1") 
norm_2_bmsppre_p300_random_n100_34 <- norm(diff_bmsppre_p300_random_n100_34, type="2") 
norm_m_bmsppre_p300_random_n100_34 <- norm(diff_bmsppre_p300_random_n100_34, type="m") 

# i = 35
diff_bmsppre_p300_random_n100_35 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_35
norm_f_bmsppre_p300_random_n100_35 <- norm(diff_bmsppre_p300_random_n100_35, type="f") 
norm_1_bmsppre_p300_random_n100_35 <- norm(diff_bmsppre_p300_random_n100_35, type="1") 
norm_2_bmsppre_p300_random_n100_35 <- norm(diff_bmsppre_p300_random_n100_35, type="2") 
norm_m_bmsppre_p300_random_n100_35 <- norm(diff_bmsppre_p300_random_n100_35, type="m") 

# i = 36
diff_bmsppre_p300_random_n100_36 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_36
norm_f_bmsppre_p300_random_n100_36 <- norm(diff_bmsppre_p300_random_n100_36, type="f") 
norm_1_bmsppre_p300_random_n100_36 <- norm(diff_bmsppre_p300_random_n100_36, type="1") 
norm_2_bmsppre_p300_random_n100_36 <- norm(diff_bmsppre_p300_random_n100_36, type="2") 
norm_m_bmsppre_p300_random_n100_36 <- norm(diff_bmsppre_p300_random_n100_36, type="m") 

# i = 37
diff_bmsppre_p300_random_n100_37 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_37
norm_f_bmsppre_p300_random_n100_37 <- norm(diff_bmsppre_p300_random_n100_37, type="f") 
norm_1_bmsppre_p300_random_n100_37 <- norm(diff_bmsppre_p300_random_n100_37, type="1") 
norm_2_bmsppre_p300_random_n100_37 <- norm(diff_bmsppre_p300_random_n100_37, type="2") 
norm_m_bmsppre_p300_random_n100_37 <- norm(diff_bmsppre_p300_random_n100_37, type="m") 

# i = 38
diff_bmsppre_p300_random_n100_38 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_38
norm_f_bmsppre_p300_random_n100_38 <- norm(diff_bmsppre_p300_random_n100_38, type="f") 
norm_1_bmsppre_p300_random_n100_38 <- norm(diff_bmsppre_p300_random_n100_38, type="1") 
norm_2_bmsppre_p300_random_n100_38 <- norm(diff_bmsppre_p300_random_n100_38, type="2") 
norm_m_bmsppre_p300_random_n100_38 <- norm(diff_bmsppre_p300_random_n100_38, type="m") 

# i = 39
diff_bmsppre_p300_random_n100_39 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_39
norm_f_bmsppre_p300_random_n100_39 <- norm(diff_bmsppre_p300_random_n100_39, type="f") 
norm_1_bmsppre_p300_random_n100_39 <- norm(diff_bmsppre_p300_random_n100_39, type="1") 
norm_2_bmsppre_p300_random_n100_39 <- norm(diff_bmsppre_p300_random_n100_39, type="2") 
norm_m_bmsppre_p300_random_n100_39 <- norm(diff_bmsppre_p300_random_n100_39, type="m") 

# i = 40
diff_bmsppre_p300_random_n100_40 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_40
norm_f_bmsppre_p300_random_n100_40 <- norm(diff_bmsppre_p300_random_n100_40, type="f") 
norm_1_bmsppre_p300_random_n100_40 <- norm(diff_bmsppre_p300_random_n100_40, type="1") 
norm_2_bmsppre_p300_random_n100_40 <- norm(diff_bmsppre_p300_random_n100_40, type="2") 
norm_m_bmsppre_p300_random_n100_40 <- norm(diff_bmsppre_p300_random_n100_40, type="m") 

# i = 41
diff_bmsppre_p300_random_n100_41 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_41
norm_f_bmsppre_p300_random_n100_41 <- norm(diff_bmsppre_p300_random_n100_41, type="f") 
norm_1_bmsppre_p300_random_n100_41 <- norm(diff_bmsppre_p300_random_n100_41, type="1") 
norm_2_bmsppre_p300_random_n100_41 <- norm(diff_bmsppre_p300_random_n100_41, type="2") 
norm_m_bmsppre_p300_random_n100_41 <- norm(diff_bmsppre_p300_random_n100_41, type="m") 

# i = 42
diff_bmsppre_p300_random_n100_42 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_42
norm_f_bmsppre_p300_random_n100_42 <- norm(diff_bmsppre_p300_random_n100_42, type="f") 
norm_1_bmsppre_p300_random_n100_42 <- norm(diff_bmsppre_p300_random_n100_42, type="1") 
norm_2_bmsppre_p300_random_n100_42 <- norm(diff_bmsppre_p300_random_n100_42, type="2") 
norm_m_bmsppre_p300_random_n100_42 <- norm(diff_bmsppre_p300_random_n100_42, type="m") 

# i = 43
diff_bmsppre_p300_random_n100_43 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_43
norm_f_bmsppre_p300_random_n100_43 <- norm(diff_bmsppre_p300_random_n100_43, type="f") 
norm_1_bmsppre_p300_random_n100_43 <- norm(diff_bmsppre_p300_random_n100_43, type="1") 
norm_2_bmsppre_p300_random_n100_43 <- norm(diff_bmsppre_p300_random_n100_43, type="2") 
norm_m_bmsppre_p300_random_n100_43 <- norm(diff_bmsppre_p300_random_n100_43, type="m") 

# i = 44
diff_bmsppre_p300_random_n100_44 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_44
norm_f_bmsppre_p300_random_n100_44 <- norm(diff_bmsppre_p300_random_n100_44, type="f") 
norm_1_bmsppre_p300_random_n100_44 <- norm(diff_bmsppre_p300_random_n100_44, type="1") 
norm_2_bmsppre_p300_random_n100_44 <- norm(diff_bmsppre_p300_random_n100_44, type="2") 
norm_m_bmsppre_p300_random_n100_44 <- norm(diff_bmsppre_p300_random_n100_44, type="m") 

# i = 45
diff_bmsppre_p300_random_n100_45 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_45
norm_f_bmsppre_p300_random_n100_45 <- norm(diff_bmsppre_p300_random_n100_45, type="f") 
norm_1_bmsppre_p300_random_n100_45 <- norm(diff_bmsppre_p300_random_n100_45, type="1") 
norm_2_bmsppre_p300_random_n100_45 <- norm(diff_bmsppre_p300_random_n100_45, type="2") 
norm_m_bmsppre_p300_random_n100_45 <- norm(diff_bmsppre_p300_random_n100_45, type="m") 

# i = 46
diff_bmsppre_p300_random_n100_46 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_46
norm_f_bmsppre_p300_random_n100_46 <- norm(diff_bmsppre_p300_random_n100_46, type="f") 
norm_1_bmsppre_p300_random_n100_46 <- norm(diff_bmsppre_p300_random_n100_46, type="1") 
norm_2_bmsppre_p300_random_n100_46 <- norm(diff_bmsppre_p300_random_n100_46, type="2") 
norm_m_bmsppre_p300_random_n100_46 <- norm(diff_bmsppre_p300_random_n100_46, type="m") 

# i = 47
diff_bmsppre_p300_random_n100_47 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_47
norm_f_bmsppre_p300_random_n100_47 <- norm(diff_bmsppre_p300_random_n100_47, type="f") 
norm_1_bmsppre_p300_random_n100_47 <- norm(diff_bmsppre_p300_random_n100_47, type="1") 
norm_2_bmsppre_p300_random_n100_47 <- norm(diff_bmsppre_p300_random_n100_47, type="2") 
norm_m_bmsppre_p300_random_n100_47 <- norm(diff_bmsppre_p300_random_n100_47, type="m") 

# i = 48
diff_bmsppre_p300_random_n100_48 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_48
norm_f_bmsppre_p300_random_n100_48 <- norm(diff_bmsppre_p300_random_n100_48, type="f") 
norm_1_bmsppre_p300_random_n100_48 <- norm(diff_bmsppre_p300_random_n100_48, type="1") 
norm_2_bmsppre_p300_random_n100_48 <- norm(diff_bmsppre_p300_random_n100_48, type="2") 
norm_m_bmsppre_p300_random_n100_48 <- norm(diff_bmsppre_p300_random_n100_48, type="m") 

# i = 49
diff_bmsppre_p300_random_n100_49 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_49
norm_f_bmsppre_p300_random_n100_49 <- norm(diff_bmsppre_p300_random_n100_49, type="f") 
norm_1_bmsppre_p300_random_n100_49 <- norm(diff_bmsppre_p300_random_n100_49, type="1") 
norm_2_bmsppre_p300_random_n100_49 <- norm(diff_bmsppre_p300_random_n100_49, type="2") 
norm_m_bmsppre_p300_random_n100_49 <- norm(diff_bmsppre_p300_random_n100_49, type="m") 

# i = 50
diff_bmsppre_p300_random_n100_50 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_50
norm_f_bmsppre_p300_random_n100_50 <- norm(diff_bmsppre_p300_random_n100_50, type="f") 
norm_1_bmsppre_p300_random_n100_50 <- norm(diff_bmsppre_p300_random_n100_50, type="1") 
norm_2_bmsppre_p300_random_n100_50 <- norm(diff_bmsppre_p300_random_n100_50, type="2") 
norm_m_bmsppre_p300_random_n100_50 <- norm(diff_bmsppre_p300_random_n100_50, type="m") 

# i = 51
diff_bmsppre_p300_random_n100_51 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_51
norm_f_bmsppre_p300_random_n100_51 <- norm(diff_bmsppre_p300_random_n100_51, type="f") 
norm_1_bmsppre_p300_random_n100_51 <- norm(diff_bmsppre_p300_random_n100_51, type="1") 
norm_2_bmsppre_p300_random_n100_51 <- norm(diff_bmsppre_p300_random_n100_51, type="2") 
norm_m_bmsppre_p300_random_n100_51 <- norm(diff_bmsppre_p300_random_n100_51, type="m") 

# i = 52
diff_bmsppre_p300_random_n100_52 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_52
norm_f_bmsppre_p300_random_n100_52 <- norm(diff_bmsppre_p300_random_n100_52, type="f") 
norm_1_bmsppre_p300_random_n100_52 <- norm(diff_bmsppre_p300_random_n100_52, type="1") 
norm_2_bmsppre_p300_random_n100_52 <- norm(diff_bmsppre_p300_random_n100_52, type="2") 
norm_m_bmsppre_p300_random_n100_52 <- norm(diff_bmsppre_p300_random_n100_52, type="m") 

# i = 53
diff_bmsppre_p300_random_n100_53 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_53
norm_f_bmsppre_p300_random_n100_53 <- norm(diff_bmsppre_p300_random_n100_53, type="f") 
norm_1_bmsppre_p300_random_n100_53 <- norm(diff_bmsppre_p300_random_n100_53, type="1") 
norm_2_bmsppre_p300_random_n100_53 <- norm(diff_bmsppre_p300_random_n100_53, type="2") 
norm_m_bmsppre_p300_random_n100_53 <- norm(diff_bmsppre_p300_random_n100_53, type="m") 

# i = 54
diff_bmsppre_p300_random_n100_54 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_54
norm_f_bmsppre_p300_random_n100_54 <- norm(diff_bmsppre_p300_random_n100_54, type="f") 
norm_1_bmsppre_p300_random_n100_54 <- norm(diff_bmsppre_p300_random_n100_54, type="1") 
norm_2_bmsppre_p300_random_n100_54 <- norm(diff_bmsppre_p300_random_n100_54, type="2") 
norm_m_bmsppre_p300_random_n100_54 <- norm(diff_bmsppre_p300_random_n100_54, type="m") 

# i = 55
diff_bmsppre_p300_random_n100_55 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_55
norm_f_bmsppre_p300_random_n100_55 <- norm(diff_bmsppre_p300_random_n100_55, type="f") 
norm_1_bmsppre_p300_random_n100_55 <- norm(diff_bmsppre_p300_random_n100_55, type="1") 
norm_2_bmsppre_p300_random_n100_55 <- norm(diff_bmsppre_p300_random_n100_55, type="2") 
norm_m_bmsppre_p300_random_n100_55 <- norm(diff_bmsppre_p300_random_n100_55, type="m") 

# i = 56
diff_bmsppre_p300_random_n100_56 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_56
norm_f_bmsppre_p300_random_n100_56 <- norm(diff_bmsppre_p300_random_n100_56, type="f") 
norm_1_bmsppre_p300_random_n100_56 <- norm(diff_bmsppre_p300_random_n100_56, type="1") 
norm_2_bmsppre_p300_random_n100_56 <- norm(diff_bmsppre_p300_random_n100_56, type="2") 
norm_m_bmsppre_p300_random_n100_56 <- norm(diff_bmsppre_p300_random_n100_56, type="m") 

# i = 57
diff_bmsppre_p300_random_n100_57 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_57
norm_f_bmsppre_p300_random_n100_57 <- norm(diff_bmsppre_p300_random_n100_57, type="f") 
norm_1_bmsppre_p300_random_n100_57 <- norm(diff_bmsppre_p300_random_n100_57, type="1") 
norm_2_bmsppre_p300_random_n100_57 <- norm(diff_bmsppre_p300_random_n100_57, type="2") 
norm_m_bmsppre_p300_random_n100_57 <- norm(diff_bmsppre_p300_random_n100_57, type="m") 

# i = 58
diff_bmsppre_p300_random_n100_58 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_58
norm_f_bmsppre_p300_random_n100_58 <- norm(diff_bmsppre_p300_random_n100_58, type="f") 
norm_1_bmsppre_p300_random_n100_58 <- norm(diff_bmsppre_p300_random_n100_58, type="1") 
norm_2_bmsppre_p300_random_n100_58 <- norm(diff_bmsppre_p300_random_n100_58, type="2") 
norm_m_bmsppre_p300_random_n100_58 <- norm(diff_bmsppre_p300_random_n100_58, type="m") 

# i = 59
diff_bmsppre_p300_random_n100_59 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_59
norm_f_bmsppre_p300_random_n100_59 <- norm(diff_bmsppre_p300_random_n100_59, type="f") 
norm_1_bmsppre_p300_random_n100_59 <- norm(diff_bmsppre_p300_random_n100_59, type="1") 
norm_2_bmsppre_p300_random_n100_59 <- norm(diff_bmsppre_p300_random_n100_59, type="2") 
norm_m_bmsppre_p300_random_n100_59 <- norm(diff_bmsppre_p300_random_n100_59, type="m") 

# i = 60
diff_bmsppre_p300_random_n100_60 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_60
norm_f_bmsppre_p300_random_n100_60 <- norm(diff_bmsppre_p300_random_n100_60, type="f") 
norm_1_bmsppre_p300_random_n100_60 <- norm(diff_bmsppre_p300_random_n100_60, type="1") 
norm_2_bmsppre_p300_random_n100_60 <- norm(diff_bmsppre_p300_random_n100_60, type="2") 
norm_m_bmsppre_p300_random_n100_60 <- norm(diff_bmsppre_p300_random_n100_60, type="m") 

# i = 61
diff_bmsppre_p300_random_n100_61 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_61
norm_f_bmsppre_p300_random_n100_61 <- norm(diff_bmsppre_p300_random_n100_61, type="f") 
norm_1_bmsppre_p300_random_n100_61 <- norm(diff_bmsppre_p300_random_n100_61, type="1") 
norm_2_bmsppre_p300_random_n100_61 <- norm(diff_bmsppre_p300_random_n100_61, type="2") 
norm_m_bmsppre_p300_random_n100_61 <- norm(diff_bmsppre_p300_random_n100_61, type="m") 

# i = 62
diff_bmsppre_p300_random_n100_62 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_62
norm_f_bmsppre_p300_random_n100_62 <- norm(diff_bmsppre_p300_random_n100_62, type="f") 
norm_1_bmsppre_p300_random_n100_62 <- norm(diff_bmsppre_p300_random_n100_62, type="1") 
norm_2_bmsppre_p300_random_n100_62 <- norm(diff_bmsppre_p300_random_n100_62, type="2") 
norm_m_bmsppre_p300_random_n100_62 <- norm(diff_bmsppre_p300_random_n100_62, type="m") 

# i = 63
diff_bmsppre_p300_random_n100_63 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_63
norm_f_bmsppre_p300_random_n100_63 <- norm(diff_bmsppre_p300_random_n100_63, type="f") 
norm_1_bmsppre_p300_random_n100_63 <- norm(diff_bmsppre_p300_random_n100_63, type="1") 
norm_2_bmsppre_p300_random_n100_63 <- norm(diff_bmsppre_p300_random_n100_63, type="2") 
norm_m_bmsppre_p300_random_n100_63 <- norm(diff_bmsppre_p300_random_n100_63, type="m") 

# i = 64
diff_bmsppre_p300_random_n100_64 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_64
norm_f_bmsppre_p300_random_n100_64 <- norm(diff_bmsppre_p300_random_n100_64, type="f") 
norm_1_bmsppre_p300_random_n100_64 <- norm(diff_bmsppre_p300_random_n100_64, type="1") 
norm_2_bmsppre_p300_random_n100_64 <- norm(diff_bmsppre_p300_random_n100_64, type="2") 
norm_m_bmsppre_p300_random_n100_64 <- norm(diff_bmsppre_p300_random_n100_64, type="m") 

# i = 65
diff_bmsppre_p300_random_n100_65 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_65
norm_f_bmsppre_p300_random_n100_65 <- norm(diff_bmsppre_p300_random_n100_65, type="f") 
norm_1_bmsppre_p300_random_n100_65 <- norm(diff_bmsppre_p300_random_n100_65, type="1") 
norm_2_bmsppre_p300_random_n100_65 <- norm(diff_bmsppre_p300_random_n100_65, type="2") 
norm_m_bmsppre_p300_random_n100_65 <- norm(diff_bmsppre_p300_random_n100_65, type="m") 

# i = 66
diff_bmsppre_p300_random_n100_66 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_66
norm_f_bmsppre_p300_random_n100_66 <- norm(diff_bmsppre_p300_random_n100_66, type="f") 
norm_1_bmsppre_p300_random_n100_66 <- norm(diff_bmsppre_p300_random_n100_66, type="1") 
norm_2_bmsppre_p300_random_n100_66 <- norm(diff_bmsppre_p300_random_n100_66, type="2") 
norm_m_bmsppre_p300_random_n100_66 <- norm(diff_bmsppre_p300_random_n100_66, type="m") 

# i = 67
diff_bmsppre_p300_random_n100_67 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_67
norm_f_bmsppre_p300_random_n100_67 <- norm(diff_bmsppre_p300_random_n100_67, type="f") 
norm_1_bmsppre_p300_random_n100_67 <- norm(diff_bmsppre_p300_random_n100_67, type="1") 
norm_2_bmsppre_p300_random_n100_67 <- norm(diff_bmsppre_p300_random_n100_67, type="2") 
norm_m_bmsppre_p300_random_n100_67 <- norm(diff_bmsppre_p300_random_n100_67, type="m") 

# i = 68
diff_bmsppre_p300_random_n100_68 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_68
norm_f_bmsppre_p300_random_n100_68 <- norm(diff_bmsppre_p300_random_n100_68, type="f") 
norm_1_bmsppre_p300_random_n100_68 <- norm(diff_bmsppre_p300_random_n100_68, type="1") 
norm_2_bmsppre_p300_random_n100_68 <- norm(diff_bmsppre_p300_random_n100_68, type="2") 
norm_m_bmsppre_p300_random_n100_68 <- norm(diff_bmsppre_p300_random_n100_68, type="m") 

# i = 69
diff_bmsppre_p300_random_n100_69 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_69
norm_f_bmsppre_p300_random_n100_69 <- norm(diff_bmsppre_p300_random_n100_69, type="f") 
norm_1_bmsppre_p300_random_n100_69 <- norm(diff_bmsppre_p300_random_n100_69, type="1") 
norm_2_bmsppre_p300_random_n100_69 <- norm(diff_bmsppre_p300_random_n100_69, type="2") 
norm_m_bmsppre_p300_random_n100_69 <- norm(diff_bmsppre_p300_random_n100_69, type="m") 

# i = 70
diff_bmsppre_p300_random_n100_70 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_70
norm_f_bmsppre_p300_random_n100_70 <- norm(diff_bmsppre_p300_random_n100_70, type="f") 
norm_1_bmsppre_p300_random_n100_70 <- norm(diff_bmsppre_p300_random_n100_70, type="1") 
norm_2_bmsppre_p300_random_n100_70 <- norm(diff_bmsppre_p300_random_n100_70, type="2") 
norm_m_bmsppre_p300_random_n100_70 <- norm(diff_bmsppre_p300_random_n100_70, type="m") 

# i = 71
diff_bmsppre_p300_random_n100_71 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_71
norm_f_bmsppre_p300_random_n100_71 <- norm(diff_bmsppre_p300_random_n100_71, type="f") 
norm_1_bmsppre_p300_random_n100_71 <- norm(diff_bmsppre_p300_random_n100_71, type="1") 
norm_2_bmsppre_p300_random_n100_71 <- norm(diff_bmsppre_p300_random_n100_71, type="2") 
norm_m_bmsppre_p300_random_n100_71 <- norm(diff_bmsppre_p300_random_n100_71, type="m") 

# i = 72
diff_bmsppre_p300_random_n100_72 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_72
norm_f_bmsppre_p300_random_n100_72 <- norm(diff_bmsppre_p300_random_n100_72, type="f") 
norm_1_bmsppre_p300_random_n100_72 <- norm(diff_bmsppre_p300_random_n100_72, type="1") 
norm_2_bmsppre_p300_random_n100_72 <- norm(diff_bmsppre_p300_random_n100_72, type="2") 
norm_m_bmsppre_p300_random_n100_72 <- norm(diff_bmsppre_p300_random_n100_72, type="m") 

# i = 73
diff_bmsppre_p300_random_n100_73 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_73
norm_f_bmsppre_p300_random_n100_73 <- norm(diff_bmsppre_p300_random_n100_73, type="f") 
norm_1_bmsppre_p300_random_n100_73 <- norm(diff_bmsppre_p300_random_n100_73, type="1") 
norm_2_bmsppre_p300_random_n100_73 <- norm(diff_bmsppre_p300_random_n100_73, type="2") 
norm_m_bmsppre_p300_random_n100_73 <- norm(diff_bmsppre_p300_random_n100_73, type="m") 

# i = 74
diff_bmsppre_p300_random_n100_74 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_74
norm_f_bmsppre_p300_random_n100_74 <- norm(diff_bmsppre_p300_random_n100_74, type="f") 
norm_1_bmsppre_p300_random_n100_74 <- norm(diff_bmsppre_p300_random_n100_74, type="1") 
norm_2_bmsppre_p300_random_n100_74 <- norm(diff_bmsppre_p300_random_n100_74, type="2") 
norm_m_bmsppre_p300_random_n100_74 <- norm(diff_bmsppre_p300_random_n100_74, type="m") 

# i = 75
diff_bmsppre_p300_random_n100_75 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_75
norm_f_bmsppre_p300_random_n100_75 <- norm(diff_bmsppre_p300_random_n100_75, type="f") 
norm_1_bmsppre_p300_random_n100_75 <- norm(diff_bmsppre_p300_random_n100_75, type="1") 
norm_2_bmsppre_p300_random_n100_75 <- norm(diff_bmsppre_p300_random_n100_75, type="2") 
norm_m_bmsppre_p300_random_n100_75 <- norm(diff_bmsppre_p300_random_n100_75, type="m") 

# i = 76
diff_bmsppre_p300_random_n100_76 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_76
norm_f_bmsppre_p300_random_n100_76 <- norm(diff_bmsppre_p300_random_n100_76, type="f") 
norm_1_bmsppre_p300_random_n100_76 <- norm(diff_bmsppre_p300_random_n100_76, type="1") 
norm_2_bmsppre_p300_random_n100_76 <- norm(diff_bmsppre_p300_random_n100_76, type="2") 
norm_m_bmsppre_p300_random_n100_76 <- norm(diff_bmsppre_p300_random_n100_76, type="m") 

# i = 77
diff_bmsppre_p300_random_n100_77 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_77
norm_f_bmsppre_p300_random_n100_77 <- norm(diff_bmsppre_p300_random_n100_77, type="f") 
norm_1_bmsppre_p300_random_n100_77 <- norm(diff_bmsppre_p300_random_n100_77, type="1") 
norm_2_bmsppre_p300_random_n100_77 <- norm(diff_bmsppre_p300_random_n100_77, type="2") 
norm_m_bmsppre_p300_random_n100_77 <- norm(diff_bmsppre_p300_random_n100_77, type="m") 

# i = 78
diff_bmsppre_p300_random_n100_78 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_78
norm_f_bmsppre_p300_random_n100_78 <- norm(diff_bmsppre_p300_random_n100_78, type="f") 
norm_1_bmsppre_p300_random_n100_78 <- norm(diff_bmsppre_p300_random_n100_78, type="1") 
norm_2_bmsppre_p300_random_n100_78 <- norm(diff_bmsppre_p300_random_n100_78, type="2") 
norm_m_bmsppre_p300_random_n100_78 <- norm(diff_bmsppre_p300_random_n100_78, type="m") 

# i = 79
diff_bmsppre_p300_random_n100_79 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_79
norm_f_bmsppre_p300_random_n100_79 <- norm(diff_bmsppre_p300_random_n100_79, type="f") 
norm_1_bmsppre_p300_random_n100_79 <- norm(diff_bmsppre_p300_random_n100_79, type="1") 
norm_2_bmsppre_p300_random_n100_79 <- norm(diff_bmsppre_p300_random_n100_79, type="2") 
norm_m_bmsppre_p300_random_n100_79 <- norm(diff_bmsppre_p300_random_n100_79, type="m") 

# i = 80
diff_bmsppre_p300_random_n100_80 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_80
norm_f_bmsppre_p300_random_n100_80 <- norm(diff_bmsppre_p300_random_n100_80, type="f") 
norm_1_bmsppre_p300_random_n100_80 <- norm(diff_bmsppre_p300_random_n100_80, type="1") 
norm_2_bmsppre_p300_random_n100_80 <- norm(diff_bmsppre_p300_random_n100_80, type="2") 
norm_m_bmsppre_p300_random_n100_80 <- norm(diff_bmsppre_p300_random_n100_80, type="m") 

# i = 81
diff_bmsppre_p300_random_n100_81 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_81
norm_f_bmsppre_p300_random_n100_81 <- norm(diff_bmsppre_p300_random_n100_81, type="f") 
norm_1_bmsppre_p300_random_n100_81 <- norm(diff_bmsppre_p300_random_n100_81, type="1") 
norm_2_bmsppre_p300_random_n100_81 <- norm(diff_bmsppre_p300_random_n100_81, type="2") 
norm_m_bmsppre_p300_random_n100_81 <- norm(diff_bmsppre_p300_random_n100_81, type="m") 

# i = 82
diff_bmsppre_p300_random_n100_82 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_82
norm_f_bmsppre_p300_random_n100_82 <- norm(diff_bmsppre_p300_random_n100_82, type="f") 
norm_1_bmsppre_p300_random_n100_82 <- norm(diff_bmsppre_p300_random_n100_82, type="1") 
norm_2_bmsppre_p300_random_n100_82 <- norm(diff_bmsppre_p300_random_n100_82, type="2") 
norm_m_bmsppre_p300_random_n100_82 <- norm(diff_bmsppre_p300_random_n100_82, type="m") 

# i = 83
diff_bmsppre_p300_random_n100_83 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_83
norm_f_bmsppre_p300_random_n100_83 <- norm(diff_bmsppre_p300_random_n100_83, type="f") 
norm_1_bmsppre_p300_random_n100_83 <- norm(diff_bmsppre_p300_random_n100_83, type="1") 
norm_2_bmsppre_p300_random_n100_83 <- norm(diff_bmsppre_p300_random_n100_83, type="2") 
norm_m_bmsppre_p300_random_n100_83 <- norm(diff_bmsppre_p300_random_n100_83, type="m") 

# i = 84
diff_bmsppre_p300_random_n100_84 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_84
norm_f_bmsppre_p300_random_n100_84 <- norm(diff_bmsppre_p300_random_n100_84, type="f") 
norm_1_bmsppre_p300_random_n100_84 <- norm(diff_bmsppre_p300_random_n100_84, type="1") 
norm_2_bmsppre_p300_random_n100_84 <- norm(diff_bmsppre_p300_random_n100_84, type="2") 
norm_m_bmsppre_p300_random_n100_84 <- norm(diff_bmsppre_p300_random_n100_84, type="m") 

# i = 85
diff_bmsppre_p300_random_n100_85 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_85
norm_f_bmsppre_p300_random_n100_85 <- norm(diff_bmsppre_p300_random_n100_85, type="f") 
norm_1_bmsppre_p300_random_n100_85 <- norm(diff_bmsppre_p300_random_n100_85, type="1") 
norm_2_bmsppre_p300_random_n100_85 <- norm(diff_bmsppre_p300_random_n100_85, type="2") 
norm_m_bmsppre_p300_random_n100_85 <- norm(diff_bmsppre_p300_random_n100_85, type="m") 

# i = 86
diff_bmsppre_p300_random_n100_86 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_86
norm_f_bmsppre_p300_random_n100_86 <- norm(diff_bmsppre_p300_random_n100_86, type="f") 
norm_1_bmsppre_p300_random_n100_86 <- norm(diff_bmsppre_p300_random_n100_86, type="1") 
norm_2_bmsppre_p300_random_n100_86 <- norm(diff_bmsppre_p300_random_n100_86, type="2") 
norm_m_bmsppre_p300_random_n100_86 <- norm(diff_bmsppre_p300_random_n100_86, type="m") 

# i = 87
diff_bmsppre_p300_random_n100_87 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_87
norm_f_bmsppre_p300_random_n100_87 <- norm(diff_bmsppre_p300_random_n100_87, type="f") 
norm_1_bmsppre_p300_random_n100_87 <- norm(diff_bmsppre_p300_random_n100_87, type="1") 
norm_2_bmsppre_p300_random_n100_87 <- norm(diff_bmsppre_p300_random_n100_87, type="2") 
norm_m_bmsppre_p300_random_n100_87 <- norm(diff_bmsppre_p300_random_n100_87, type="m") 

# i = 88
diff_bmsppre_p300_random_n100_88 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_88
norm_f_bmsppre_p300_random_n100_88 <- norm(diff_bmsppre_p300_random_n100_88, type="f") 
norm_1_bmsppre_p300_random_n100_88 <- norm(diff_bmsppre_p300_random_n100_88, type="1") 
norm_2_bmsppre_p300_random_n100_88 <- norm(diff_bmsppre_p300_random_n100_88, type="2") 
norm_m_bmsppre_p300_random_n100_88 <- norm(diff_bmsppre_p300_random_n100_88, type="m") 

# i = 89
diff_bmsppre_p300_random_n100_89 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_89
norm_f_bmsppre_p300_random_n100_89 <- norm(diff_bmsppre_p300_random_n100_89, type="f") 
norm_1_bmsppre_p300_random_n100_89 <- norm(diff_bmsppre_p300_random_n100_89, type="1") 
norm_2_bmsppre_p300_random_n100_89 <- norm(diff_bmsppre_p300_random_n100_89, type="2") 
norm_m_bmsppre_p300_random_n100_89 <- norm(diff_bmsppre_p300_random_n100_89, type="m") 

# i = 90
diff_bmsppre_p300_random_n100_90 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_90
norm_f_bmsppre_p300_random_n100_90 <- norm(diff_bmsppre_p300_random_n100_90, type="f") 
norm_1_bmsppre_p300_random_n100_90 <- norm(diff_bmsppre_p300_random_n100_90, type="1") 
norm_2_bmsppre_p300_random_n100_90 <- norm(diff_bmsppre_p300_random_n100_90, type="2") 
norm_m_bmsppre_p300_random_n100_90 <- norm(diff_bmsppre_p300_random_n100_90, type="m") 

# i = 91
diff_bmsppre_p300_random_n100_91 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_91
norm_f_bmsppre_p300_random_n100_91 <- norm(diff_bmsppre_p300_random_n100_91, type="f") 
norm_1_bmsppre_p300_random_n100_91 <- norm(diff_bmsppre_p300_random_n100_91, type="1") 
norm_2_bmsppre_p300_random_n100_91 <- norm(diff_bmsppre_p300_random_n100_91, type="2") 
norm_m_bmsppre_p300_random_n100_91 <- norm(diff_bmsppre_p300_random_n100_91, type="m") 

# i = 92
diff_bmsppre_p300_random_n100_92 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_92
norm_f_bmsppre_p300_random_n100_92 <- norm(diff_bmsppre_p300_random_n100_92, type="f") 
norm_1_bmsppre_p300_random_n100_92 <- norm(diff_bmsppre_p300_random_n100_92, type="1") 
norm_2_bmsppre_p300_random_n100_92 <- norm(diff_bmsppre_p300_random_n100_92, type="2") 
norm_m_bmsppre_p300_random_n100_92 <- norm(diff_bmsppre_p300_random_n100_92, type="m") 

# i = 93
diff_bmsppre_p300_random_n100_93 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_93
norm_f_bmsppre_p300_random_n100_93 <- norm(diff_bmsppre_p300_random_n100_93, type="f") 
norm_1_bmsppre_p300_random_n100_93 <- norm(diff_bmsppre_p300_random_n100_93, type="1") 
norm_2_bmsppre_p300_random_n100_93 <- norm(diff_bmsppre_p300_random_n100_93, type="2") 
norm_m_bmsppre_p300_random_n100_93 <- norm(diff_bmsppre_p300_random_n100_93, type="m") 

# i = 94
diff_bmsppre_p300_random_n100_94 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_94
norm_f_bmsppre_p300_random_n100_94 <- norm(diff_bmsppre_p300_random_n100_94, type="f") 
norm_1_bmsppre_p300_random_n100_94 <- norm(diff_bmsppre_p300_random_n100_94, type="1") 
norm_2_bmsppre_p300_random_n100_94 <- norm(diff_bmsppre_p300_random_n100_94, type="2") 
norm_m_bmsppre_p300_random_n100_94 <- norm(diff_bmsppre_p300_random_n100_94, type="m") 

# i = 95
diff_bmsppre_p300_random_n100_95 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_95
norm_f_bmsppre_p300_random_n100_95 <- norm(diff_bmsppre_p300_random_n100_95, type="f") 
norm_1_bmsppre_p300_random_n100_95 <- norm(diff_bmsppre_p300_random_n100_95, type="1") 
norm_2_bmsppre_p300_random_n100_95 <- norm(diff_bmsppre_p300_random_n100_95, type="2") 
norm_m_bmsppre_p300_random_n100_95 <- norm(diff_bmsppre_p300_random_n100_95, type="m") 

# i = 96
diff_bmsppre_p300_random_n100_96 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_96
norm_f_bmsppre_p300_random_n100_96 <- norm(diff_bmsppre_p300_random_n100_96, type="f") 
norm_1_bmsppre_p300_random_n100_96 <- norm(diff_bmsppre_p300_random_n100_96, type="1") 
norm_2_bmsppre_p300_random_n100_96 <- norm(diff_bmsppre_p300_random_n100_96, type="2") 
norm_m_bmsppre_p300_random_n100_96 <- norm(diff_bmsppre_p300_random_n100_96, type="m") 

# i = 97
diff_bmsppre_p300_random_n100_97 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_97
norm_f_bmsppre_p300_random_n100_97 <- norm(diff_bmsppre_p300_random_n100_97, type="f") 
norm_1_bmsppre_p300_random_n100_97 <- norm(diff_bmsppre_p300_random_n100_97, type="1") 
norm_2_bmsppre_p300_random_n100_97 <- norm(diff_bmsppre_p300_random_n100_97, type="2") 
norm_m_bmsppre_p300_random_n100_97 <- norm(diff_bmsppre_p300_random_n100_97, type="m") 

# i = 98
diff_bmsppre_p300_random_n100_98 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_98
norm_f_bmsppre_p300_random_n100_98 <- norm(diff_bmsppre_p300_random_n100_98, type="f") 
norm_1_bmsppre_p300_random_n100_98 <- norm(diff_bmsppre_p300_random_n100_98, type="1") 
norm_2_bmsppre_p300_random_n100_98 <- norm(diff_bmsppre_p300_random_n100_98, type="2") 
norm_m_bmsppre_p300_random_n100_98 <- norm(diff_bmsppre_p300_random_n100_98, type="m") 

# i = 99
diff_bmsppre_p300_random_n100_99 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_99
norm_f_bmsppre_p300_random_n100_99 <- norm(diff_bmsppre_p300_random_n100_99, type="f") 
norm_1_bmsppre_p300_random_n100_99 <- norm(diff_bmsppre_p300_random_n100_99, type="1") 
norm_2_bmsppre_p300_random_n100_99 <- norm(diff_bmsppre_p300_random_n100_99, type="2") 
norm_m_bmsppre_p300_random_n100_99 <- norm(diff_bmsppre_p300_random_n100_99, type="m") 

# i = 100
diff_bmsppre_p300_random_n100_100 <- true_precision_p300_random - post.est.result_bmsppre_p300_random_n100_100
norm_f_bmsppre_p300_random_n100_100 <- norm(diff_bmsppre_p300_random_n100_100, type="f") 
norm_1_bmsppre_p300_random_n100_100 <- norm(diff_bmsppre_p300_random_n100_100, type="1") 
norm_2_bmsppre_p300_random_n100_100 <- norm(diff_bmsppre_p300_random_n100_100, type="2") 
norm_m_bmsppre_p300_random_n100_100 <- norm(diff_bmsppre_p300_random_n100_100, type="m") 



##################################### Norm f #######################################
norm_f_bmsppre_p300_random_n100 <- c(
  norm_f_bmsppre_p300_random_n100_1, 
  norm_f_bmsppre_p300_random_n100_2, 
  norm_f_bmsppre_p300_random_n100_3, 
  norm_f_bmsppre_p300_random_n100_4, 
  norm_f_bmsppre_p300_random_n100_5, 
  norm_f_bmsppre_p300_random_n100_6, 
  norm_f_bmsppre_p300_random_n100_7, 
  norm_f_bmsppre_p300_random_n100_8, 
  norm_f_bmsppre_p300_random_n100_9, 
  norm_f_bmsppre_p300_random_n100_10, 
  norm_f_bmsppre_p300_random_n100_11, 
  norm_f_bmsppre_p300_random_n100_12, 
  norm_f_bmsppre_p300_random_n100_13, 
  norm_f_bmsppre_p300_random_n100_14, 
  norm_f_bmsppre_p300_random_n100_15, 
  norm_f_bmsppre_p300_random_n100_16, 
  norm_f_bmsppre_p300_random_n100_17, 
  norm_f_bmsppre_p300_random_n100_18, 
  norm_f_bmsppre_p300_random_n100_19, 
  norm_f_bmsppre_p300_random_n100_20, 
  norm_f_bmsppre_p300_random_n100_21, 
  norm_f_bmsppre_p300_random_n100_22, 
  norm_f_bmsppre_p300_random_n100_23, 
  norm_f_bmsppre_p300_random_n100_24, 
  norm_f_bmsppre_p300_random_n100_25, 
  norm_f_bmsppre_p300_random_n100_26, 
  norm_f_bmsppre_p300_random_n100_27, 
  norm_f_bmsppre_p300_random_n100_28, 
  norm_f_bmsppre_p300_random_n100_29, 
  norm_f_bmsppre_p300_random_n100_30, 
  norm_f_bmsppre_p300_random_n100_31, 
  norm_f_bmsppre_p300_random_n100_32, 
  norm_f_bmsppre_p300_random_n100_33, 
  norm_f_bmsppre_p300_random_n100_34, 
  norm_f_bmsppre_p300_random_n100_35, 
  norm_f_bmsppre_p300_random_n100_36, 
  norm_f_bmsppre_p300_random_n100_37, 
  norm_f_bmsppre_p300_random_n100_38, 
  norm_f_bmsppre_p300_random_n100_39, 
  norm_f_bmsppre_p300_random_n100_40, 
  norm_f_bmsppre_p300_random_n100_41, 
  norm_f_bmsppre_p300_random_n100_42, 
  norm_f_bmsppre_p300_random_n100_43, 
  norm_f_bmsppre_p300_random_n100_44, 
  norm_f_bmsppre_p300_random_n100_45, 
  norm_f_bmsppre_p300_random_n100_46, 
  norm_f_bmsppre_p300_random_n100_47, 
  norm_f_bmsppre_p300_random_n100_48, 
  norm_f_bmsppre_p300_random_n100_49, 
  norm_f_bmsppre_p300_random_n100_50, 
  norm_f_bmsppre_p300_random_n100_51, 
  norm_f_bmsppre_p300_random_n100_52, 
  norm_f_bmsppre_p300_random_n100_53, 
  norm_f_bmsppre_p300_random_n100_54, 
  norm_f_bmsppre_p300_random_n100_55, 
  norm_f_bmsppre_p300_random_n100_56, 
  norm_f_bmsppre_p300_random_n100_57, 
  norm_f_bmsppre_p300_random_n100_58, 
  norm_f_bmsppre_p300_random_n100_59, 
  norm_f_bmsppre_p300_random_n100_60, 
  norm_f_bmsppre_p300_random_n100_61, 
  norm_f_bmsppre_p300_random_n100_62, 
  norm_f_bmsppre_p300_random_n100_63, 
  norm_f_bmsppre_p300_random_n100_64, 
  norm_f_bmsppre_p300_random_n100_65, 
  norm_f_bmsppre_p300_random_n100_66, 
  norm_f_bmsppre_p300_random_n100_67, 
  norm_f_bmsppre_p300_random_n100_68, 
  norm_f_bmsppre_p300_random_n100_69, 
  norm_f_bmsppre_p300_random_n100_70, 
  norm_f_bmsppre_p300_random_n100_71, 
  norm_f_bmsppre_p300_random_n100_72, 
  norm_f_bmsppre_p300_random_n100_73, 
  norm_f_bmsppre_p300_random_n100_74, 
  norm_f_bmsppre_p300_random_n100_75, 
  norm_f_bmsppre_p300_random_n100_76, 
  norm_f_bmsppre_p300_random_n100_77, 
  norm_f_bmsppre_p300_random_n100_78, 
  norm_f_bmsppre_p300_random_n100_79, 
  norm_f_bmsppre_p300_random_n100_80, 
  norm_f_bmsppre_p300_random_n100_81, 
  norm_f_bmsppre_p300_random_n100_82, 
  norm_f_bmsppre_p300_random_n100_83, 
  norm_f_bmsppre_p300_random_n100_84, 
  norm_f_bmsppre_p300_random_n100_85, 
  norm_f_bmsppre_p300_random_n100_86, 
  norm_f_bmsppre_p300_random_n100_87, 
  norm_f_bmsppre_p300_random_n100_88, 
  norm_f_bmsppre_p300_random_n100_89, 
  norm_f_bmsppre_p300_random_n100_90, 
  norm_f_bmsppre_p300_random_n100_91, 
  norm_f_bmsppre_p300_random_n100_92, 
  norm_f_bmsppre_p300_random_n100_93, 
  norm_f_bmsppre_p300_random_n100_94, 
  norm_f_bmsppre_p300_random_n100_95, 
  norm_f_bmsppre_p300_random_n100_96, 
  norm_f_bmsppre_p300_random_n100_97, 
  norm_f_bmsppre_p300_random_n100_98, 
  norm_f_bmsppre_p300_random_n100_99, 
  norm_f_bmsppre_p300_random_n100_100
)


mean_norm_f_bmsppre_p300_random_n100 <- mean(norm_f_bmsppre_p300_random_n100)
sd_norm_f_bmsppre_p300_random_n100<- sd(norm_f_bmsppre_p300_random_n100)


##################################### Norm 1 #######################################
norm_1_bmsppre_p300_random_n100 <- c(
  norm_1_bmsppre_p300_random_n100_1, 
  norm_1_bmsppre_p300_random_n100_2, 
  norm_1_bmsppre_p300_random_n100_3, 
  norm_1_bmsppre_p300_random_n100_4, 
  norm_1_bmsppre_p300_random_n100_5, 
  norm_1_bmsppre_p300_random_n100_6, 
  norm_1_bmsppre_p300_random_n100_7, 
  norm_1_bmsppre_p300_random_n100_8, 
  norm_1_bmsppre_p300_random_n100_9, 
  norm_1_bmsppre_p300_random_n100_10, 
  norm_1_bmsppre_p300_random_n100_11, 
  norm_1_bmsppre_p300_random_n100_12, 
  norm_1_bmsppre_p300_random_n100_13, 
  norm_1_bmsppre_p300_random_n100_14, 
  norm_1_bmsppre_p300_random_n100_15, 
  norm_1_bmsppre_p300_random_n100_16, 
  norm_1_bmsppre_p300_random_n100_17, 
  norm_1_bmsppre_p300_random_n100_18, 
  norm_1_bmsppre_p300_random_n100_19, 
  norm_1_bmsppre_p300_random_n100_20, 
  norm_1_bmsppre_p300_random_n100_21, 
  norm_1_bmsppre_p300_random_n100_22, 
  norm_1_bmsppre_p300_random_n100_23, 
  norm_1_bmsppre_p300_random_n100_24, 
  norm_1_bmsppre_p300_random_n100_25, 
  norm_1_bmsppre_p300_random_n100_26, 
  norm_1_bmsppre_p300_random_n100_27, 
  norm_1_bmsppre_p300_random_n100_28, 
  norm_1_bmsppre_p300_random_n100_29, 
  norm_1_bmsppre_p300_random_n100_30, 
  norm_1_bmsppre_p300_random_n100_31, 
  norm_1_bmsppre_p300_random_n100_32, 
  norm_1_bmsppre_p300_random_n100_33, 
  norm_1_bmsppre_p300_random_n100_34, 
  norm_1_bmsppre_p300_random_n100_35, 
  norm_1_bmsppre_p300_random_n100_36, 
  norm_1_bmsppre_p300_random_n100_37, 
  norm_1_bmsppre_p300_random_n100_38, 
  norm_1_bmsppre_p300_random_n100_39, 
  norm_1_bmsppre_p300_random_n100_40, 
  norm_1_bmsppre_p300_random_n100_41, 
  norm_1_bmsppre_p300_random_n100_42, 
  norm_1_bmsppre_p300_random_n100_43, 
  norm_1_bmsppre_p300_random_n100_44, 
  norm_1_bmsppre_p300_random_n100_45, 
  norm_1_bmsppre_p300_random_n100_46, 
  norm_1_bmsppre_p300_random_n100_47, 
  norm_1_bmsppre_p300_random_n100_48, 
  norm_1_bmsppre_p300_random_n100_49, 
  norm_1_bmsppre_p300_random_n100_50, 
  norm_1_bmsppre_p300_random_n100_51, 
  norm_1_bmsppre_p300_random_n100_52, 
  norm_1_bmsppre_p300_random_n100_53, 
  norm_1_bmsppre_p300_random_n100_54, 
  norm_1_bmsppre_p300_random_n100_55, 
  norm_1_bmsppre_p300_random_n100_56, 
  norm_1_bmsppre_p300_random_n100_57, 
  norm_1_bmsppre_p300_random_n100_58, 
  norm_1_bmsppre_p300_random_n100_59, 
  norm_1_bmsppre_p300_random_n100_60, 
  norm_1_bmsppre_p300_random_n100_61, 
  norm_1_bmsppre_p300_random_n100_62, 
  norm_1_bmsppre_p300_random_n100_63, 
  norm_1_bmsppre_p300_random_n100_64, 
  norm_1_bmsppre_p300_random_n100_65, 
  norm_1_bmsppre_p300_random_n100_66, 
  norm_1_bmsppre_p300_random_n100_67, 
  norm_1_bmsppre_p300_random_n100_68, 
  norm_1_bmsppre_p300_random_n100_69, 
  norm_1_bmsppre_p300_random_n100_70, 
  norm_1_bmsppre_p300_random_n100_71, 
  norm_1_bmsppre_p300_random_n100_72, 
  norm_1_bmsppre_p300_random_n100_73, 
  norm_1_bmsppre_p300_random_n100_74, 
  norm_1_bmsppre_p300_random_n100_75, 
  norm_1_bmsppre_p300_random_n100_76, 
  norm_1_bmsppre_p300_random_n100_77, 
  norm_1_bmsppre_p300_random_n100_78, 
  norm_1_bmsppre_p300_random_n100_79, 
  norm_1_bmsppre_p300_random_n100_80, 
  norm_1_bmsppre_p300_random_n100_81, 
  norm_1_bmsppre_p300_random_n100_82, 
  norm_1_bmsppre_p300_random_n100_83, 
  norm_1_bmsppre_p300_random_n100_84, 
  norm_1_bmsppre_p300_random_n100_85, 
  norm_1_bmsppre_p300_random_n100_86, 
  norm_1_bmsppre_p300_random_n100_87, 
  norm_1_bmsppre_p300_random_n100_88, 
  norm_1_bmsppre_p300_random_n100_89, 
  norm_1_bmsppre_p300_random_n100_90, 
  norm_1_bmsppre_p300_random_n100_91, 
  norm_1_bmsppre_p300_random_n100_92, 
  norm_1_bmsppre_p300_random_n100_93, 
  norm_1_bmsppre_p300_random_n100_94, 
  norm_1_bmsppre_p300_random_n100_95, 
  norm_1_bmsppre_p300_random_n100_96, 
  norm_1_bmsppre_p300_random_n100_97, 
  norm_1_bmsppre_p300_random_n100_98, 
  norm_1_bmsppre_p300_random_n100_99, 
  norm_1_bmsppre_p300_random_n100_100
)

mean_norm_1_bmsppre_p300_random_n100 <- mean(norm_1_bmsppre_p300_random_n100)
sd_norm_1_bmsppre_p300_random_n100<- sd(norm_1_bmsppre_p300_random_n100)


##################################### Norm 2 #######################################
norm_2_bmsppre_p300_random_n100 <- c(
  norm_2_bmsppre_p300_random_n100_1, 
  norm_2_bmsppre_p300_random_n100_2, 
  norm_2_bmsppre_p300_random_n100_3, 
  norm_2_bmsppre_p300_random_n100_4, 
  norm_2_bmsppre_p300_random_n100_5, 
  norm_2_bmsppre_p300_random_n100_6, 
  norm_2_bmsppre_p300_random_n100_7, 
  norm_2_bmsppre_p300_random_n100_8, 
  norm_2_bmsppre_p300_random_n100_9, 
  norm_2_bmsppre_p300_random_n100_10, 
  norm_2_bmsppre_p300_random_n100_11, 
  norm_2_bmsppre_p300_random_n100_12, 
  norm_2_bmsppre_p300_random_n100_13, 
  norm_2_bmsppre_p300_random_n100_14, 
  norm_2_bmsppre_p300_random_n100_15, 
  norm_2_bmsppre_p300_random_n100_16, 
  norm_2_bmsppre_p300_random_n100_17, 
  norm_2_bmsppre_p300_random_n100_18, 
  norm_2_bmsppre_p300_random_n100_19, 
  norm_2_bmsppre_p300_random_n100_20, 
  norm_2_bmsppre_p300_random_n100_21, 
  norm_2_bmsppre_p300_random_n100_22, 
  norm_2_bmsppre_p300_random_n100_23, 
  norm_2_bmsppre_p300_random_n100_24, 
  norm_2_bmsppre_p300_random_n100_25, 
  norm_2_bmsppre_p300_random_n100_26, 
  norm_2_bmsppre_p300_random_n100_27, 
  norm_2_bmsppre_p300_random_n100_28, 
  norm_2_bmsppre_p300_random_n100_29, 
  norm_2_bmsppre_p300_random_n100_30, 
  norm_2_bmsppre_p300_random_n100_31, 
  norm_2_bmsppre_p300_random_n100_32, 
  norm_2_bmsppre_p300_random_n100_33, 
  norm_2_bmsppre_p300_random_n100_34, 
  norm_2_bmsppre_p300_random_n100_35, 
  norm_2_bmsppre_p300_random_n100_36, 
  norm_2_bmsppre_p300_random_n100_37, 
  norm_2_bmsppre_p300_random_n100_38, 
  norm_2_bmsppre_p300_random_n100_39, 
  norm_2_bmsppre_p300_random_n100_40, 
  norm_2_bmsppre_p300_random_n100_41, 
  norm_2_bmsppre_p300_random_n100_42, 
  norm_2_bmsppre_p300_random_n100_43, 
  norm_2_bmsppre_p300_random_n100_44, 
  norm_2_bmsppre_p300_random_n100_45, 
  norm_2_bmsppre_p300_random_n100_46, 
  norm_2_bmsppre_p300_random_n100_47, 
  norm_2_bmsppre_p300_random_n100_48, 
  norm_2_bmsppre_p300_random_n100_49, 
  norm_2_bmsppre_p300_random_n100_50, 
  norm_2_bmsppre_p300_random_n100_51, 
  norm_2_bmsppre_p300_random_n100_52, 
  norm_2_bmsppre_p300_random_n100_53, 
  norm_2_bmsppre_p300_random_n100_54, 
  norm_2_bmsppre_p300_random_n100_55, 
  norm_2_bmsppre_p300_random_n100_56, 
  norm_2_bmsppre_p300_random_n100_57, 
  norm_2_bmsppre_p300_random_n100_58, 
  norm_2_bmsppre_p300_random_n100_59, 
  norm_2_bmsppre_p300_random_n100_60, 
  norm_2_bmsppre_p300_random_n100_61, 
  norm_2_bmsppre_p300_random_n100_62, 
  norm_2_bmsppre_p300_random_n100_63, 
  norm_2_bmsppre_p300_random_n100_64, 
  norm_2_bmsppre_p300_random_n100_65, 
  norm_2_bmsppre_p300_random_n100_66, 
  norm_2_bmsppre_p300_random_n100_67, 
  norm_2_bmsppre_p300_random_n100_68, 
  norm_2_bmsppre_p300_random_n100_69, 
  norm_2_bmsppre_p300_random_n100_70, 
  norm_2_bmsppre_p300_random_n100_71, 
  norm_2_bmsppre_p300_random_n100_72, 
  norm_2_bmsppre_p300_random_n100_73, 
  norm_2_bmsppre_p300_random_n100_74, 
  norm_2_bmsppre_p300_random_n100_75, 
  norm_2_bmsppre_p300_random_n100_76, 
  norm_2_bmsppre_p300_random_n100_77, 
  norm_2_bmsppre_p300_random_n100_78, 
  norm_2_bmsppre_p300_random_n100_79, 
  norm_2_bmsppre_p300_random_n100_80, 
  norm_2_bmsppre_p300_random_n100_81, 
  norm_2_bmsppre_p300_random_n100_82, 
  norm_2_bmsppre_p300_random_n100_83, 
  norm_2_bmsppre_p300_random_n100_84, 
  norm_2_bmsppre_p300_random_n100_85, 
  norm_2_bmsppre_p300_random_n100_86, 
  norm_2_bmsppre_p300_random_n100_87, 
  norm_2_bmsppre_p300_random_n100_88, 
  norm_2_bmsppre_p300_random_n100_89, 
  norm_2_bmsppre_p300_random_n100_90, 
  norm_2_bmsppre_p300_random_n100_91, 
  norm_2_bmsppre_p300_random_n100_92, 
  norm_2_bmsppre_p300_random_n100_93, 
  norm_2_bmsppre_p300_random_n100_94, 
  norm_2_bmsppre_p300_random_n100_95, 
  norm_2_bmsppre_p300_random_n100_96, 
  norm_2_bmsppre_p300_random_n100_97, 
  norm_2_bmsppre_p300_random_n100_98, 
  norm_2_bmsppre_p300_random_n100_99, 
  norm_2_bmsppre_p300_random_n100_100
)


mean_norm_2_bmsppre_p300_random_n100 <- mean(norm_2_bmsppre_p300_random_n100)
sd_norm_2_bmsppre_p300_random_n100<- sd(norm_2_bmsppre_p300_random_n100)


##################################### Norm m #######################################
norm_m_bmsppre_p300_random_n100 <- c(
  norm_m_bmsppre_p300_random_n100_1, 
  norm_m_bmsppre_p300_random_n100_2, 
  norm_m_bmsppre_p300_random_n100_3, 
  norm_m_bmsppre_p300_random_n100_4, 
  norm_m_bmsppre_p300_random_n100_5, 
  norm_m_bmsppre_p300_random_n100_6, 
  norm_m_bmsppre_p300_random_n100_7, 
  norm_m_bmsppre_p300_random_n100_8, 
  norm_m_bmsppre_p300_random_n100_9, 
  norm_m_bmsppre_p300_random_n100_10, 
  norm_m_bmsppre_p300_random_n100_11, 
  norm_m_bmsppre_p300_random_n100_12, 
  norm_m_bmsppre_p300_random_n100_13, 
  norm_m_bmsppre_p300_random_n100_14, 
  norm_m_bmsppre_p300_random_n100_15, 
  norm_m_bmsppre_p300_random_n100_16, 
  norm_m_bmsppre_p300_random_n100_17, 
  norm_m_bmsppre_p300_random_n100_18, 
  norm_m_bmsppre_p300_random_n100_19, 
  norm_m_bmsppre_p300_random_n100_20, 
  norm_m_bmsppre_p300_random_n100_21, 
  norm_m_bmsppre_p300_random_n100_22, 
  norm_m_bmsppre_p300_random_n100_23, 
  norm_m_bmsppre_p300_random_n100_24, 
  norm_m_bmsppre_p300_random_n100_25, 
  norm_m_bmsppre_p300_random_n100_26, 
  norm_m_bmsppre_p300_random_n100_27, 
  norm_m_bmsppre_p300_random_n100_28, 
  norm_m_bmsppre_p300_random_n100_29, 
  norm_m_bmsppre_p300_random_n100_30, 
  norm_m_bmsppre_p300_random_n100_31, 
  norm_m_bmsppre_p300_random_n100_32, 
  norm_m_bmsppre_p300_random_n100_33, 
  norm_m_bmsppre_p300_random_n100_34, 
  norm_m_bmsppre_p300_random_n100_35, 
  norm_m_bmsppre_p300_random_n100_36, 
  norm_m_bmsppre_p300_random_n100_37, 
  norm_m_bmsppre_p300_random_n100_38, 
  norm_m_bmsppre_p300_random_n100_39, 
  norm_m_bmsppre_p300_random_n100_40, 
  norm_m_bmsppre_p300_random_n100_41, 
  norm_m_bmsppre_p300_random_n100_42, 
  norm_m_bmsppre_p300_random_n100_43, 
  norm_m_bmsppre_p300_random_n100_44, 
  norm_m_bmsppre_p300_random_n100_45, 
  norm_m_bmsppre_p300_random_n100_46, 
  norm_m_bmsppre_p300_random_n100_47, 
  norm_m_bmsppre_p300_random_n100_48, 
  norm_m_bmsppre_p300_random_n100_49, 
  norm_m_bmsppre_p300_random_n100_50, 
  norm_m_bmsppre_p300_random_n100_51, 
  norm_m_bmsppre_p300_random_n100_52, 
  norm_m_bmsppre_p300_random_n100_53, 
  norm_m_bmsppre_p300_random_n100_54, 
  norm_m_bmsppre_p300_random_n100_55, 
  norm_m_bmsppre_p300_random_n100_56, 
  norm_m_bmsppre_p300_random_n100_57, 
  norm_m_bmsppre_p300_random_n100_58, 
  norm_m_bmsppre_p300_random_n100_59, 
  norm_m_bmsppre_p300_random_n100_60, 
  norm_m_bmsppre_p300_random_n100_61, 
  norm_m_bmsppre_p300_random_n100_62, 
  norm_m_bmsppre_p300_random_n100_63, 
  norm_m_bmsppre_p300_random_n100_64, 
  norm_m_bmsppre_p300_random_n100_65, 
  norm_m_bmsppre_p300_random_n100_66, 
  norm_m_bmsppre_p300_random_n100_67, 
  norm_m_bmsppre_p300_random_n100_68, 
  norm_m_bmsppre_p300_random_n100_69, 
  norm_m_bmsppre_p300_random_n100_70, 
  norm_m_bmsppre_p300_random_n100_71, 
  norm_m_bmsppre_p300_random_n100_72, 
  norm_m_bmsppre_p300_random_n100_73, 
  norm_m_bmsppre_p300_random_n100_74, 
  norm_m_bmsppre_p300_random_n100_75, 
  norm_m_bmsppre_p300_random_n100_76, 
  norm_m_bmsppre_p300_random_n100_77, 
  norm_m_bmsppre_p300_random_n100_78, 
  norm_m_bmsppre_p300_random_n100_79, 
  norm_m_bmsppre_p300_random_n100_80, 
  norm_m_bmsppre_p300_random_n100_81, 
  norm_m_bmsppre_p300_random_n100_82, 
  norm_m_bmsppre_p300_random_n100_83, 
  norm_m_bmsppre_p300_random_n100_84, 
  norm_m_bmsppre_p300_random_n100_85, 
  norm_m_bmsppre_p300_random_n100_86, 
  norm_m_bmsppre_p300_random_n100_87, 
  norm_m_bmsppre_p300_random_n100_88, 
  norm_m_bmsppre_p300_random_n100_89, 
  norm_m_bmsppre_p300_random_n100_90, 
  norm_m_bmsppre_p300_random_n100_91, 
  norm_m_bmsppre_p300_random_n100_92, 
  norm_m_bmsppre_p300_random_n100_93, 
  norm_m_bmsppre_p300_random_n100_94, 
  norm_m_bmsppre_p300_random_n100_95, 
  norm_m_bmsppre_p300_random_n100_96, 
  norm_m_bmsppre_p300_random_n100_97, 
  norm_m_bmsppre_p300_random_n100_98, 
  norm_m_bmsppre_p300_random_n100_99, 
  norm_m_bmsppre_p300_random_n100_100
)


mean_norm_m_bmsppre_p300_random_n100 <- mean(norm_m_bmsppre_p300_random_n100)
sd_norm_m_bmsppre_p300_random_n100<- sd(norm_m_bmsppre_p300_random_n100)

##################################### Time #######################################
time_bmsppre_p300_random_n100 <- c(
  mcmctime_elapsed_p300_random_n100_1, 
  mcmctime_elapsed_p300_random_n100_2, 
  mcmctime_elapsed_p300_random_n100_3, 
  mcmctime_elapsed_p300_random_n100_4, 
  mcmctime_elapsed_p300_random_n100_5, 
  mcmctime_elapsed_p300_random_n100_6, 
  mcmctime_elapsed_p300_random_n100_7, 
  mcmctime_elapsed_p300_random_n100_8, 
  mcmctime_elapsed_p300_random_n100_9, 
  mcmctime_elapsed_p300_random_n100_10, 
  mcmctime_elapsed_p300_random_n100_11, 
  mcmctime_elapsed_p300_random_n100_12, 
  mcmctime_elapsed_p300_random_n100_13, 
  mcmctime_elapsed_p300_random_n100_14, 
  mcmctime_elapsed_p300_random_n100_15, 
  mcmctime_elapsed_p300_random_n100_16, 
  mcmctime_elapsed_p300_random_n100_17, 
  mcmctime_elapsed_p300_random_n100_18, 
  mcmctime_elapsed_p300_random_n100_19, 
  mcmctime_elapsed_p300_random_n100_20, 
  mcmctime_elapsed_p300_random_n100_21, 
  mcmctime_elapsed_p300_random_n100_22, 
  mcmctime_elapsed_p300_random_n100_23, 
  mcmctime_elapsed_p300_random_n100_24, 
  mcmctime_elapsed_p300_random_n100_25, 
  mcmctime_elapsed_p300_random_n100_26, 
  mcmctime_elapsed_p300_random_n100_27, 
  mcmctime_elapsed_p300_random_n100_28, 
  mcmctime_elapsed_p300_random_n100_29, 
  mcmctime_elapsed_p300_random_n100_30, 
  mcmctime_elapsed_p300_random_n100_31, 
  mcmctime_elapsed_p300_random_n100_32, 
  mcmctime_elapsed_p300_random_n100_33, 
  mcmctime_elapsed_p300_random_n100_34, 
  mcmctime_elapsed_p300_random_n100_35, 
  mcmctime_elapsed_p300_random_n100_36, 
  mcmctime_elapsed_p300_random_n100_37, 
  mcmctime_elapsed_p300_random_n100_38, 
  mcmctime_elapsed_p300_random_n100_39, 
  mcmctime_elapsed_p300_random_n100_40, 
  mcmctime_elapsed_p300_random_n100_41, 
  mcmctime_elapsed_p300_random_n100_42, 
  mcmctime_elapsed_p300_random_n100_43, 
  mcmctime_elapsed_p300_random_n100_44, 
  mcmctime_elapsed_p300_random_n100_45, 
  mcmctime_elapsed_p300_random_n100_46, 
  mcmctime_elapsed_p300_random_n100_47, 
  mcmctime_elapsed_p300_random_n100_48, 
  mcmctime_elapsed_p300_random_n100_49, 
  mcmctime_elapsed_p300_random_n100_50, 
  mcmctime_elapsed_p300_random_n100_51, 
  mcmctime_elapsed_p300_random_n100_52, 
  mcmctime_elapsed_p300_random_n100_53, 
  mcmctime_elapsed_p300_random_n100_54, 
  mcmctime_elapsed_p300_random_n100_55, 
  mcmctime_elapsed_p300_random_n100_56, 
  mcmctime_elapsed_p300_random_n100_57, 
  mcmctime_elapsed_p300_random_n100_58, 
  mcmctime_elapsed_p300_random_n100_59, 
  mcmctime_elapsed_p300_random_n100_60, 
  mcmctime_elapsed_p300_random_n100_61, 
  mcmctime_elapsed_p300_random_n100_62, 
  mcmctime_elapsed_p300_random_n100_63, 
  mcmctime_elapsed_p300_random_n100_64, 
  mcmctime_elapsed_p300_random_n100_65, 
  mcmctime_elapsed_p300_random_n100_66, 
  mcmctime_elapsed_p300_random_n100_67, 
  mcmctime_elapsed_p300_random_n100_68, 
  mcmctime_elapsed_p300_random_n100_69, 
  mcmctime_elapsed_p300_random_n100_70, 
  mcmctime_elapsed_p300_random_n100_71, 
  mcmctime_elapsed_p300_random_n100_72, 
  mcmctime_elapsed_p300_random_n100_73, 
  mcmctime_elapsed_p300_random_n100_74, 
  mcmctime_elapsed_p300_random_n100_75, 
  mcmctime_elapsed_p300_random_n100_76, 
  mcmctime_elapsed_p300_random_n100_77, 
  mcmctime_elapsed_p300_random_n100_78, 
  mcmctime_elapsed_p300_random_n100_79, 
  mcmctime_elapsed_p300_random_n100_80, 
  mcmctime_elapsed_p300_random_n100_81, 
  mcmctime_elapsed_p300_random_n100_82, 
  mcmctime_elapsed_p300_random_n100_83, 
  mcmctime_elapsed_p300_random_n100_84, 
  mcmctime_elapsed_p300_random_n100_85, 
  mcmctime_elapsed_p300_random_n100_86, 
  mcmctime_elapsed_p300_random_n100_87, 
  mcmctime_elapsed_p300_random_n100_88, 
  mcmctime_elapsed_p300_random_n100_89, 
  mcmctime_elapsed_p300_random_n100_90, 
  mcmctime_elapsed_p300_random_n100_91, 
  mcmctime_elapsed_p300_random_n100_92, 
  mcmctime_elapsed_p300_random_n100_93, 
  mcmctime_elapsed_p300_random_n100_94, 
  mcmctime_elapsed_p300_random_n100_95, 
  mcmctime_elapsed_p300_random_n100_96, 
  mcmctime_elapsed_p300_random_n100_97, 
  mcmctime_elapsed_p300_random_n100_98, 
  mcmctime_elapsed_p300_random_n100_99, 
  mcmctime_elapsed_p300_random_n100_100
)

mean_time_bmsppre_p300_random_n100 <- mean(time_bmsppre_p300_random_n100)

