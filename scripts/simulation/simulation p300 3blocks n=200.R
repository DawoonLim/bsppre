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
######################## n = 200 #########################
##########################################################
result_p300_3blocks_n200_1 <- community_bsppre(p300_3blocks_n200_1, cluster_louvain, seed = 1)
estimated_p300_3blocks_n200_1 <- integrate_community_results(result_p300_3blocks_n200_1$result, p = 300)
result_p300_3blocks_n200_2 <- community_bsppre(p300_3blocks_n200_2, cluster_louvain, seed = 2)
estimated_p300_3blocks_n200_2 <- integrate_community_results(result_p300_3blocks_n200_2$result, p = 300)
result_p300_3blocks_n200_3 <- community_bsppre(p300_3blocks_n200_3, cluster_louvain, seed = 3)
estimated_p300_3blocks_n200_3 <- integrate_community_results(result_p300_3blocks_n200_3$result, p = 300)
result_p300_3blocks_n200_4 <- community_bsppre(p300_3blocks_n200_4, cluster_louvain, seed = 4)
estimated_p300_3blocks_n200_4 <- integrate_community_results(result_p300_3blocks_n200_4$result, p = 300)
result_p300_3blocks_n200_5 <- community_bsppre(p300_3blocks_n200_5, cluster_louvain, seed = 5)
estimated_p300_3blocks_n200_5 <- integrate_community_results(result_p300_3blocks_n200_5$result, p = 300)
result_p300_3blocks_n200_6 <- community_bsppre(p300_3blocks_n200_6, cluster_louvain, seed = 6)
estimated_p300_3blocks_n200_6 <- integrate_community_results(result_p300_3blocks_n200_6$result, p = 300)
result_p300_3blocks_n200_7 <- community_bsppre(p300_3blocks_n200_7, cluster_louvain, seed = 7)
estimated_p300_3blocks_n200_7 <- integrate_community_results(result_p300_3blocks_n200_7$result, p = 300)
result_p300_3blocks_n200_8 <- community_bsppre(p300_3blocks_n200_8, cluster_louvain, seed = 8)
estimated_p300_3blocks_n200_8 <- integrate_community_results(result_p300_3blocks_n200_8$result, p = 300)
result_p300_3blocks_n200_9 <- community_bsppre(p300_3blocks_n200_9, cluster_louvain, seed = 9)
estimated_p300_3blocks_n200_9 <- integrate_community_results(result_p300_3blocks_n200_9$result, p = 300)
result_p300_3blocks_n200_10 <- community_bsppre(p300_3blocks_n200_10, cluster_louvain, seed = 10)
estimated_p300_3blocks_n200_10 <- integrate_community_results(result_p300_3blocks_n200_10$result, p = 300)
result_p300_3blocks_n200_11 <- community_bsppre(p300_3blocks_n200_11, cluster_louvain, seed = 11)
estimated_p300_3blocks_n200_11 <- integrate_community_results(result_p300_3blocks_n200_11$result, p = 300)
result_p300_3blocks_n200_12 <- community_bsppre(p300_3blocks_n200_12, cluster_louvain, seed = 12)
estimated_p300_3blocks_n200_12 <- integrate_community_results(result_p300_3blocks_n200_12$result, p = 300)
result_p300_3blocks_n200_13 <- community_bsppre(p300_3blocks_n200_13, cluster_louvain, seed = 13)
estimated_p300_3blocks_n200_13 <- integrate_community_results(result_p300_3blocks_n200_13$result, p = 300)
result_p300_3blocks_n200_14 <- community_bsppre(p300_3blocks_n200_14, cluster_louvain, seed = 14)
estimated_p300_3blocks_n200_14 <- integrate_community_results(result_p300_3blocks_n200_14$result, p = 300)
result_p300_3blocks_n200_15 <- community_bsppre(p300_3blocks_n200_15, cluster_louvain, seed = 15)
estimated_p300_3blocks_n200_15 <- integrate_community_results(result_p300_3blocks_n200_15$result, p = 300)
result_p300_3blocks_n200_16 <- community_bsppre(p300_3blocks_n200_16, cluster_louvain, seed = 16)
estimated_p300_3blocks_n200_16 <- integrate_community_results(result_p300_3blocks_n200_16$result, p = 300)
result_p300_3blocks_n200_17 <- community_bsppre(p300_3blocks_n200_17, cluster_louvain, seed = 17)
estimated_p300_3blocks_n200_17 <- integrate_community_results(result_p300_3blocks_n200_17$result, p = 300)
result_p300_3blocks_n200_18 <- community_bsppre(p300_3blocks_n200_18, cluster_louvain, seed = 18)
estimated_p300_3blocks_n200_18 <- integrate_community_results(result_p300_3blocks_n200_18$result, p = 300)
result_p300_3blocks_n200_19 <- community_bsppre(p300_3blocks_n200_19, cluster_louvain, seed = 19)
estimated_p300_3blocks_n200_19 <- integrate_community_results(result_p300_3blocks_n200_19$result, p = 300)
result_p300_3blocks_n200_20 <- community_bsppre(p300_3blocks_n200_20, cluster_louvain, seed = 20)
estimated_p300_3blocks_n200_20 <- integrate_community_results(result_p300_3blocks_n200_20$result, p = 300)
result_p300_3blocks_n200_21 <- community_bsppre(p300_3blocks_n200_21, cluster_louvain, seed = 21)
estimated_p300_3blocks_n200_21 <- integrate_community_results(result_p300_3blocks_n200_21$result, p = 300)
result_p300_3blocks_n200_22 <- community_bsppre(p300_3blocks_n200_22, cluster_louvain, seed = 22)
estimated_p300_3blocks_n200_22 <- integrate_community_results(result_p300_3blocks_n200_22$result, p = 300)
result_p300_3blocks_n200_23 <- community_bsppre(p300_3blocks_n200_23, cluster_louvain, seed = 23)
estimated_p300_3blocks_n200_23 <- integrate_community_results(result_p300_3blocks_n200_23$result, p = 300)
result_p300_3blocks_n200_24 <- community_bsppre(p300_3blocks_n200_24, cluster_louvain, seed = 24)
estimated_p300_3blocks_n200_24 <- integrate_community_results(result_p300_3blocks_n200_24$result, p = 300)
result_p300_3blocks_n200_25 <- community_bsppre(p300_3blocks_n200_25, cluster_louvain, seed = 25)
estimated_p300_3blocks_n200_25 <- integrate_community_results(result_p300_3blocks_n200_25$result, p = 300)
result_p300_3blocks_n200_26 <- community_bsppre(p300_3blocks_n200_26, cluster_louvain, seed = 26)
estimated_p300_3blocks_n200_26 <- integrate_community_results(result_p300_3blocks_n200_26$result, p = 300)
result_p300_3blocks_n200_27 <- community_bsppre(p300_3blocks_n200_27, cluster_louvain, seed = 27)
estimated_p300_3blocks_n200_27 <- integrate_community_results(result_p300_3blocks_n200_27$result, p = 300)
result_p300_3blocks_n200_28 <- community_bsppre(p300_3blocks_n200_28, cluster_louvain, seed = 28)
estimated_p300_3blocks_n200_28 <- integrate_community_results(result_p300_3blocks_n200_28$result, p = 300)
result_p300_3blocks_n200_29 <- community_bsppre(p300_3blocks_n200_29, cluster_louvain, seed = 29)
estimated_p300_3blocks_n200_29 <- integrate_community_results(result_p300_3blocks_n200_29$result, p = 300)
result_p300_3blocks_n200_30 <- community_bsppre(p300_3blocks_n200_30, cluster_louvain, seed = 30)
estimated_p300_3blocks_n200_30 <- integrate_community_results(result_p300_3blocks_n200_30$result, p = 300)
result_p300_3blocks_n200_31 <- community_bsppre(p300_3blocks_n200_31, cluster_louvain, seed = 31)
estimated_p300_3blocks_n200_31 <- integrate_community_results(result_p300_3blocks_n200_31$result, p = 300)
result_p300_3blocks_n200_32 <- community_bsppre(p300_3blocks_n200_32, cluster_louvain, seed = 32)
estimated_p300_3blocks_n200_32 <- integrate_community_results(result_p300_3blocks_n200_32$result, p = 300)
result_p300_3blocks_n200_33 <- community_bsppre(p300_3blocks_n200_33, cluster_louvain, seed = 33)
estimated_p300_3blocks_n200_33 <- integrate_community_results(result_p300_3blocks_n200_33$result, p = 300)
result_p300_3blocks_n200_34 <- community_bsppre(p300_3blocks_n200_34, cluster_louvain, seed = 34)
estimated_p300_3blocks_n200_34 <- integrate_community_results(result_p300_3blocks_n200_34$result, p = 300)
result_p300_3blocks_n200_35 <- community_bsppre(p300_3blocks_n200_35, cluster_louvain, seed = 35)
estimated_p300_3blocks_n200_35 <- integrate_community_results(result_p300_3blocks_n200_35$result, p = 300)
result_p300_3blocks_n200_36 <- community_bsppre(p300_3blocks_n200_36, cluster_louvain, seed = 36)
estimated_p300_3blocks_n200_36 <- integrate_community_results(result_p300_3blocks_n200_36$result, p = 300)
result_p300_3blocks_n200_37 <- community_bsppre(p300_3blocks_n200_37, cluster_louvain, seed = 37)
estimated_p300_3blocks_n200_37 <- integrate_community_results(result_p300_3blocks_n200_37$result, p = 300)
result_p300_3blocks_n200_38 <- community_bsppre(p300_3blocks_n200_38, cluster_louvain, seed = 38)
estimated_p300_3blocks_n200_38 <- integrate_community_results(result_p300_3blocks_n200_38$result, p = 300)
result_p300_3blocks_n200_39 <- community_bsppre(p300_3blocks_n200_39, cluster_louvain, seed = 39)
estimated_p300_3blocks_n200_39 <- integrate_community_results(result_p300_3blocks_n200_39$result, p = 300)
result_p300_3blocks_n200_40 <- community_bsppre(p300_3blocks_n200_40, cluster_louvain, seed = 40)
estimated_p300_3blocks_n200_40 <- integrate_community_results(result_p300_3blocks_n200_40$result, p = 300)
result_p300_3blocks_n200_41 <- community_bsppre(p300_3blocks_n200_41, cluster_louvain, seed = 41)
estimated_p300_3blocks_n200_41 <- integrate_community_results(result_p300_3blocks_n200_41$result, p = 300)
result_p300_3blocks_n200_42 <- community_bsppre(p300_3blocks_n200_42, cluster_louvain, seed = 42)
estimated_p300_3blocks_n200_42 <- integrate_community_results(result_p300_3blocks_n200_42$result, p = 300)
result_p300_3blocks_n200_43 <- community_bsppre(p300_3blocks_n200_43, cluster_louvain, seed = 43)
estimated_p300_3blocks_n200_43 <- integrate_community_results(result_p300_3blocks_n200_43$result, p = 300)
result_p300_3blocks_n200_44 <- community_bsppre(p300_3blocks_n200_44, cluster_louvain, seed = 44)
estimated_p300_3blocks_n200_44 <- integrate_community_results(result_p300_3blocks_n200_44$result, p = 300)
result_p300_3blocks_n200_45 <- community_bsppre(p300_3blocks_n200_45, cluster_louvain, seed = 45)
estimated_p300_3blocks_n200_45 <- integrate_community_results(result_p300_3blocks_n200_45$result, p = 300)
result_p300_3blocks_n200_46 <- community_bsppre(p300_3blocks_n200_46, cluster_louvain, seed = 46)
estimated_p300_3blocks_n200_46 <- integrate_community_results(result_p300_3blocks_n200_46$result, p = 300)
result_p300_3blocks_n200_47 <- community_bsppre(p300_3blocks_n200_47, cluster_louvain, seed = 47)
estimated_p300_3blocks_n200_47 <- integrate_community_results(result_p300_3blocks_n200_47$result, p = 300)
result_p300_3blocks_n200_48 <- community_bsppre(p300_3blocks_n200_48, cluster_louvain, seed = 48)
estimated_p300_3blocks_n200_48 <- integrate_community_results(result_p300_3blocks_n200_48$result, p = 300)
result_p300_3blocks_n200_49 <- community_bsppre(p300_3blocks_n200_49, cluster_louvain, seed = 49)
estimated_p300_3blocks_n200_49 <- integrate_community_results(result_p300_3blocks_n200_49$result, p = 300)
result_p300_3blocks_n200_50 <- community_bsppre(p300_3blocks_n200_50, cluster_louvain, seed = 50)
estimated_p300_3blocks_n200_50 <- integrate_community_results(result_p300_3blocks_n200_50$result, p = 300)
result_p300_3blocks_n200_51 <- community_bsppre(p300_3blocks_n200_51, cluster_louvain, seed = 51)
estimated_p300_3blocks_n200_51 <- integrate_community_results(result_p300_3blocks_n200_51$result, p = 300)
result_p300_3blocks_n200_52 <- community_bsppre(p300_3blocks_n200_52, cluster_louvain, seed = 52)
estimated_p300_3blocks_n200_52 <- integrate_community_results(result_p300_3blocks_n200_52$result, p = 300)
result_p300_3blocks_n200_53 <- community_bsppre(p300_3blocks_n200_53, cluster_louvain, seed = 53)
estimated_p300_3blocks_n200_53 <- integrate_community_results(result_p300_3blocks_n200_53$result, p = 300)
result_p300_3blocks_n200_54 <- community_bsppre(p300_3blocks_n200_54, cluster_louvain, seed = 54)
estimated_p300_3blocks_n200_54 <- integrate_community_results(result_p300_3blocks_n200_54$result, p = 300)
result_p300_3blocks_n200_55 <- community_bsppre(p300_3blocks_n200_55, cluster_louvain, seed = 55)
estimated_p300_3blocks_n200_55 <- integrate_community_results(result_p300_3blocks_n200_55$result, p = 300)
result_p300_3blocks_n200_56 <- community_bsppre(p300_3blocks_n200_56, cluster_louvain, seed = 56)
estimated_p300_3blocks_n200_56 <- integrate_community_results(result_p300_3blocks_n200_56$result, p = 300)
result_p300_3blocks_n200_57 <- community_bsppre(p300_3blocks_n200_57, cluster_louvain, seed = 57)
estimated_p300_3blocks_n200_57 <- integrate_community_results(result_p300_3blocks_n200_57$result, p = 300)
result_p300_3blocks_n200_58 <- community_bsppre(p300_3blocks_n200_58, cluster_louvain, seed = 58)
estimated_p300_3blocks_n200_58 <- integrate_community_results(result_p300_3blocks_n200_58$result, p = 300)
result_p300_3blocks_n200_59 <- community_bsppre(p300_3blocks_n200_59, cluster_louvain, seed = 59)
estimated_p300_3blocks_n200_59 <- integrate_community_results(result_p300_3blocks_n200_59$result, p = 300)
result_p300_3blocks_n200_60 <- community_bsppre(p300_3blocks_n200_60, cluster_louvain, seed = 60)
estimated_p300_3blocks_n200_60 <- integrate_community_results(result_p300_3blocks_n200_60$result, p = 300)
result_p300_3blocks_n200_61 <- community_bsppre(p300_3blocks_n200_61, cluster_louvain, seed = 61)
estimated_p300_3blocks_n200_61 <- integrate_community_results(result_p300_3blocks_n200_61$result, p = 300)
result_p300_3blocks_n200_62 <- community_bsppre(p300_3blocks_n200_62, cluster_louvain, seed = 62)
estimated_p300_3blocks_n200_62 <- integrate_community_results(result_p300_3blocks_n200_62$result, p = 300)
result_p300_3blocks_n200_63 <- community_bsppre(p300_3blocks_n200_63, cluster_louvain, seed = 63)
estimated_p300_3blocks_n200_63 <- integrate_community_results(result_p300_3blocks_n200_63$result, p = 300)
result_p300_3blocks_n200_64 <- community_bsppre(p300_3blocks_n200_64, cluster_louvain, seed = 64)
estimated_p300_3blocks_n200_64 <- integrate_community_results(result_p300_3blocks_n200_64$result, p = 300)
result_p300_3blocks_n200_65 <- community_bsppre(p300_3blocks_n200_65, cluster_louvain, seed = 65)
estimated_p300_3blocks_n200_65 <- integrate_community_results(result_p300_3blocks_n200_65$result, p = 300)
result_p300_3blocks_n200_66 <- community_bsppre(p300_3blocks_n200_66, cluster_louvain, seed = 66)
estimated_p300_3blocks_n200_66 <- integrate_community_results(result_p300_3blocks_n200_66$result, p = 300)
result_p300_3blocks_n200_67 <- community_bsppre(p300_3blocks_n200_67, cluster_louvain, seed = 67)
estimated_p300_3blocks_n200_67 <- integrate_community_results(result_p300_3blocks_n200_67$result, p = 300)
result_p300_3blocks_n200_68 <- community_bsppre(p300_3blocks_n200_68, cluster_louvain, seed = 68)
estimated_p300_3blocks_n200_68 <- integrate_community_results(result_p300_3blocks_n200_68$result, p = 300)
result_p300_3blocks_n200_69 <- community_bsppre(p300_3blocks_n200_69, cluster_louvain, seed = 69)
estimated_p300_3blocks_n200_69 <- integrate_community_results(result_p300_3blocks_n200_69$result, p = 300)
result_p300_3blocks_n200_70 <- community_bsppre(p300_3blocks_n200_70, cluster_louvain, seed = 70)
estimated_p300_3blocks_n200_70 <- integrate_community_results(result_p300_3blocks_n200_70$result, p = 300)
result_p300_3blocks_n200_71 <- community_bsppre(p300_3blocks_n200_71, cluster_louvain, seed = 71)
estimated_p300_3blocks_n200_71 <- integrate_community_results(result_p300_3blocks_n200_71$result, p = 300)
result_p300_3blocks_n200_72 <- community_bsppre(p300_3blocks_n200_72, cluster_louvain, seed = 72)
estimated_p300_3blocks_n200_72 <- integrate_community_results(result_p300_3blocks_n200_72$result, p = 300)
result_p300_3blocks_n200_73 <- community_bsppre(p300_3blocks_n200_73, cluster_louvain, seed = 73)
estimated_p300_3blocks_n200_73 <- integrate_community_results(result_p300_3blocks_n200_73$result, p = 300)
result_p300_3blocks_n200_74 <- community_bsppre(p300_3blocks_n200_74, cluster_louvain, seed = 74)
estimated_p300_3blocks_n200_74 <- integrate_community_results(result_p300_3blocks_n200_74$result, p = 300)
result_p300_3blocks_n200_75 <- community_bsppre(p300_3blocks_n200_75, cluster_louvain, seed = 75)
estimated_p300_3blocks_n200_75 <- integrate_community_results(result_p300_3blocks_n200_75$result, p = 300)
result_p300_3blocks_n200_76 <- community_bsppre(p300_3blocks_n200_76, cluster_louvain, seed = 76)
estimated_p300_3blocks_n200_76 <- integrate_community_results(result_p300_3blocks_n200_76$result, p = 300)
result_p300_3blocks_n200_77 <- community_bsppre(p300_3blocks_n200_77, cluster_louvain, seed = 77)
estimated_p300_3blocks_n200_77 <- integrate_community_results(result_p300_3blocks_n200_77$result, p = 300)
result_p300_3blocks_n200_78 <- community_bsppre(p300_3blocks_n200_78, cluster_louvain, seed = 78)
estimated_p300_3blocks_n200_78 <- integrate_community_results(result_p300_3blocks_n200_78$result, p = 300)
result_p300_3blocks_n200_79 <- community_bsppre(p300_3blocks_n200_79, cluster_louvain, seed = 79)
estimated_p300_3blocks_n200_79 <- integrate_community_results(result_p300_3blocks_n200_79$result, p = 300)
result_p300_3blocks_n200_80 <- community_bsppre(p300_3blocks_n200_80, cluster_louvain, seed = 80)
estimated_p300_3blocks_n200_80 <- integrate_community_results(result_p300_3blocks_n200_80$result, p = 300)
result_p300_3blocks_n200_81 <- community_bsppre(p300_3blocks_n200_81, cluster_louvain, seed = 81)
estimated_p300_3blocks_n200_81 <- integrate_community_results(result_p300_3blocks_n200_81$result, p = 300)
result_p300_3blocks_n200_82 <- community_bsppre(p300_3blocks_n200_82, cluster_louvain, seed = 82)
estimated_p300_3blocks_n200_82 <- integrate_community_results(result_p300_3blocks_n200_82$result, p = 300)
result_p300_3blocks_n200_83 <- community_bsppre(p300_3blocks_n200_83, cluster_louvain, seed = 83)
estimated_p300_3blocks_n200_83 <- integrate_community_results(result_p300_3blocks_n200_83$result, p = 300)
result_p300_3blocks_n200_84 <- community_bsppre(p300_3blocks_n200_84, cluster_louvain, seed = 84)
estimated_p300_3blocks_n200_84 <- integrate_community_results(result_p300_3blocks_n200_84$result, p = 300)
result_p300_3blocks_n200_85 <- community_bsppre(p300_3blocks_n200_85, cluster_louvain, seed = 85)
estimated_p300_3blocks_n200_85 <- integrate_community_results(result_p300_3blocks_n200_85$result, p = 300)
result_p300_3blocks_n200_86 <- community_bsppre(p300_3blocks_n200_86, cluster_louvain, seed = 86)
estimated_p300_3blocks_n200_86 <- integrate_community_results(result_p300_3blocks_n200_86$result, p = 300)
result_p300_3blocks_n200_87 <- community_bsppre(p300_3blocks_n200_87, cluster_louvain, seed = 87)
estimated_p300_3blocks_n200_87 <- integrate_community_results(result_p300_3blocks_n200_87$result, p = 300)
result_p300_3blocks_n200_88 <- community_bsppre(p300_3blocks_n200_88, cluster_louvain, seed = 88)
estimated_p300_3blocks_n200_88 <- integrate_community_results(result_p300_3blocks_n200_88$result, p = 300)
result_p300_3blocks_n200_89 <- community_bsppre(p300_3blocks_n200_89, cluster_louvain, seed = 89)
estimated_p300_3blocks_n200_89 <- integrate_community_results(result_p300_3blocks_n200_89$result, p = 300)
result_p300_3blocks_n200_90 <- community_bsppre(p300_3blocks_n200_90, cluster_louvain, seed = 90)
estimated_p300_3blocks_n200_90 <- integrate_community_results(result_p300_3blocks_n200_90$result, p = 300)
result_p300_3blocks_n200_91 <- community_bsppre(p300_3blocks_n200_91, cluster_louvain, seed = 91)
estimated_p300_3blocks_n200_91 <- integrate_community_results(result_p300_3blocks_n200_91$result, p = 300)
result_p300_3blocks_n200_92 <- community_bsppre(p300_3blocks_n200_92, cluster_louvain, seed = 92)
estimated_p300_3blocks_n200_92 <- integrate_community_results(result_p300_3blocks_n200_92$result, p = 300)
result_p300_3blocks_n200_93 <- community_bsppre(p300_3blocks_n200_93, cluster_louvain, seed = 93)
estimated_p300_3blocks_n200_93 <- integrate_community_results(result_p300_3blocks_n200_93$result, p = 300)
result_p300_3blocks_n200_94 <- community_bsppre(p300_3blocks_n200_94, cluster_louvain, seed = 94)
estimated_p300_3blocks_n200_94 <- integrate_community_results(result_p300_3blocks_n200_94$result, p = 300)
result_p300_3blocks_n200_95 <- community_bsppre(p300_3blocks_n200_95, cluster_louvain, seed = 95)
estimated_p300_3blocks_n200_95 <- integrate_community_results(result_p300_3blocks_n200_95$result, p = 300)
result_p300_3blocks_n200_96 <- community_bsppre(p300_3blocks_n200_96, cluster_louvain, seed = 96)
estimated_p300_3blocks_n200_96 <- integrate_community_results(result_p300_3blocks_n200_96$result, p = 300)
result_p300_3blocks_n200_97 <- community_bsppre(p300_3blocks_n200_97, cluster_louvain, seed = 97)
estimated_p300_3blocks_n200_97 <- integrate_community_results(result_p300_3blocks_n200_97$result, p = 300)
result_p300_3blocks_n200_98 <- community_bsppre(p300_3blocks_n200_98, cluster_louvain, seed = 98)
estimated_p300_3blocks_n200_98 <- integrate_community_results(result_p300_3blocks_n200_98$result, p = 300)
result_p300_3blocks_n200_99 <- community_bsppre(p300_3blocks_n200_99, cluster_louvain, seed = 99)
estimated_p300_3blocks_n200_99 <- integrate_community_results(result_p300_3blocks_n200_99$result, p = 300)
result_p300_3blocks_n200_100 <- community_bsppre(p300_3blocks_n200_100, cluster_louvain, seed = 100)
estimated_p300_3blocks_n200_100 <- integrate_community_results(result_p300_3blocks_n200_100$result, p = 300)

# g.lasso tuning parameter BIC setting
time_g.lasso_p300_3blocks_n200 <- system.time({
  set.seed(1)
  g.lasso_p300_3blocks_n200_1 <- CovTools::PreEst.glasso(p300_3blocks_n200_1, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(2)
  g.lasso_p300_3blocks_n200_2 <- CovTools::PreEst.glasso(p300_3blocks_n200_2, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(3)
  g.lasso_p300_3blocks_n200_3 <- CovTools::PreEst.glasso(p300_3blocks_n200_3, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(4)
  g.lasso_p300_3blocks_n200_4 <- CovTools::PreEst.glasso(p300_3blocks_n200_4, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(5)
  g.lasso_p300_3blocks_n200_5 <- CovTools::PreEst.glasso(p300_3blocks_n200_5, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(6)
  g.lasso_p300_3blocks_n200_6 <- CovTools::PreEst.glasso(p300_3blocks_n200_6, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(7)
  g.lasso_p300_3blocks_n200_7 <- CovTools::PreEst.glasso(p300_3blocks_n200_7, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(8)
  g.lasso_p300_3blocks_n200_8 <- CovTools::PreEst.glasso(p300_3blocks_n200_8, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(9)
  g.lasso_p300_3blocks_n200_9 <- CovTools::PreEst.glasso(p300_3blocks_n200_9, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(10)
  g.lasso_p300_3blocks_n200_10 <- CovTools::PreEst.glasso(p300_3blocks_n200_10, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(11)
  g.lasso_p300_3blocks_n200_11 <- CovTools::PreEst.glasso(p300_3blocks_n200_11, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(12)
  g.lasso_p300_3blocks_n200_12 <- CovTools::PreEst.glasso(p300_3blocks_n200_12, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(13)
  g.lasso_p300_3blocks_n200_13 <- CovTools::PreEst.glasso(p300_3blocks_n200_13, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(14)
  g.lasso_p300_3blocks_n200_14 <- CovTools::PreEst.glasso(p300_3blocks_n200_14, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(15)
  g.lasso_p300_3blocks_n200_15 <- CovTools::PreEst.glasso(p300_3blocks_n200_15, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(16)
  g.lasso_p300_3blocks_n200_16 <- CovTools::PreEst.glasso(p300_3blocks_n200_16, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(17)
  g.lasso_p300_3blocks_n200_17 <- CovTools::PreEst.glasso(p300_3blocks_n200_17, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(18)
  g.lasso_p300_3blocks_n200_18 <- CovTools::PreEst.glasso(p300_3blocks_n200_18, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(19)
  g.lasso_p300_3blocks_n200_19 <- CovTools::PreEst.glasso(p300_3blocks_n200_19, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(20)
  g.lasso_p300_3blocks_n200_20 <- CovTools::PreEst.glasso(p300_3blocks_n200_20, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(21)
  g.lasso_p300_3blocks_n200_21 <- CovTools::PreEst.glasso(p300_3blocks_n200_21, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(22)
  g.lasso_p300_3blocks_n200_22 <- CovTools::PreEst.glasso(p300_3blocks_n200_22, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(23)
  g.lasso_p300_3blocks_n200_23 <- CovTools::PreEst.glasso(p300_3blocks_n200_23, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(24)
  g.lasso_p300_3blocks_n200_24 <- CovTools::PreEst.glasso(p300_3blocks_n200_24, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(25)
  g.lasso_p300_3blocks_n200_25 <- CovTools::PreEst.glasso(p300_3blocks_n200_25, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(26)
  g.lasso_p300_3blocks_n200_26 <- CovTools::PreEst.glasso(p300_3blocks_n200_26, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(27)
  g.lasso_p300_3blocks_n200_27 <- CovTools::PreEst.glasso(p300_3blocks_n200_27, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(28)
  g.lasso_p300_3blocks_n200_28 <- CovTools::PreEst.glasso(p300_3blocks_n200_28, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(29)
  g.lasso_p300_3blocks_n200_29 <- CovTools::PreEst.glasso(p300_3blocks_n200_29, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(30)
  g.lasso_p300_3blocks_n200_30 <- CovTools::PreEst.glasso(p300_3blocks_n200_30, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(31) 
  g.lasso_p300_3blocks_n200_31 <- CovTools::PreEst.glasso(p300_3blocks_n200_31, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(32)
  g.lasso_p300_3blocks_n200_32 <- CovTools::PreEst.glasso(p300_3blocks_n200_32, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(33)
  g.lasso_p300_3blocks_n200_33 <- CovTools::PreEst.glasso(p300_3blocks_n200_33, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(34)
  g.lasso_p300_3blocks_n200_34 <- CovTools::PreEst.glasso(p300_3blocks_n200_34, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(35)
  g.lasso_p300_3blocks_n200_35 <- CovTools::PreEst.glasso(p300_3blocks_n200_35, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(36)
  g.lasso_p300_3blocks_n200_36 <- CovTools::PreEst.glasso(p300_3blocks_n200_36, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(37)
  g.lasso_p300_3blocks_n200_37 <- CovTools::PreEst.glasso(p300_3blocks_n200_37, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(38)
  g.lasso_p300_3blocks_n200_38 <- CovTools::PreEst.glasso(p300_3blocks_n200_38, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(39)
  g.lasso_p300_3blocks_n200_39 <- CovTools::PreEst.glasso(p300_3blocks_n200_39, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(40)
  g.lasso_p300_3blocks_n200_40 <- CovTools::PreEst.glasso(p300_3blocks_n200_40, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(41)
  g.lasso_p300_3blocks_n200_41 <- CovTools::PreEst.glasso(p300_3blocks_n200_41, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(42)
  g.lasso_p300_3blocks_n200_42 <- CovTools::PreEst.glasso(p300_3blocks_n200_42, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(43)
  g.lasso_p300_3blocks_n200_43 <- CovTools::PreEst.glasso(p300_3blocks_n200_43, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(44)
  g.lasso_p300_3blocks_n200_44 <- CovTools::PreEst.glasso(p300_3blocks_n200_44, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(45)
  g.lasso_p300_3blocks_n200_45 <- CovTools::PreEst.glasso(p300_3blocks_n200_45, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(46)
  g.lasso_p300_3blocks_n200_46 <- CovTools::PreEst.glasso(p300_3blocks_n200_46, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(47)
  g.lasso_p300_3blocks_n200_47 <- CovTools::PreEst.glasso(p300_3blocks_n200_47, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(48)
  g.lasso_p300_3blocks_n200_48 <- CovTools::PreEst.glasso(p300_3blocks_n200_48, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(49)
  g.lasso_p300_3blocks_n200_49 <- CovTools::PreEst.glasso(p300_3blocks_n200_49, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(50)
  g.lasso_p300_3blocks_n200_50 <- CovTools::PreEst.glasso(p300_3blocks_n200_50, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(51)
  g.lasso_p300_3blocks_n200_51 <- CovTools::PreEst.glasso(p300_3blocks_n200_51, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(52)
  g.lasso_p300_3blocks_n200_52 <- CovTools::PreEst.glasso(p300_3blocks_n200_52, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(53)
  g.lasso_p300_3blocks_n200_53 <- CovTools::PreEst.glasso(p300_3blocks_n200_53, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(54)
  g.lasso_p300_3blocks_n200_54 <- CovTools::PreEst.glasso(p300_3blocks_n200_54, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(55)
  g.lasso_p300_3blocks_n200_55 <- CovTools::PreEst.glasso(p300_3blocks_n200_55, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(56)
  g.lasso_p300_3blocks_n200_56 <- CovTools::PreEst.glasso(p300_3blocks_n200_56, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(57)
  g.lasso_p300_3blocks_n200_57 <- CovTools::PreEst.glasso(p300_3blocks_n200_57, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(58)
  g.lasso_p300_3blocks_n200_58 <- CovTools::PreEst.glasso(p300_3blocks_n200_58, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(59)
  g.lasso_p300_3blocks_n200_59 <- CovTools::PreEst.glasso(p300_3blocks_n200_59, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(60)
  g.lasso_p300_3blocks_n200_60 <- CovTools::PreEst.glasso(p300_3blocks_n200_60, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(61)
  g.lasso_p300_3blocks_n200_61 <- CovTools::PreEst.glasso(p300_3blocks_n200_61, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(62)
  g.lasso_p300_3blocks_n200_62 <- CovTools::PreEst.glasso(p300_3blocks_n200_62, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(63)
  g.lasso_p300_3blocks_n200_63 <- CovTools::PreEst.glasso(p300_3blocks_n200_63, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(64)
  g.lasso_p300_3blocks_n200_64 <- CovTools::PreEst.glasso(p300_3blocks_n200_64, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(65)
  g.lasso_p300_3blocks_n200_65 <- CovTools::PreEst.glasso(p300_3blocks_n200_65, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(66)
  g.lasso_p300_3blocks_n200_66 <- CovTools::PreEst.glasso(p300_3blocks_n200_66, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(67)
  g.lasso_p300_3blocks_n200_67 <- CovTools::PreEst.glasso(p300_3blocks_n200_67, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(68)
  g.lasso_p300_3blocks_n200_68 <- CovTools::PreEst.glasso(p300_3blocks_n200_68, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(69)
  g.lasso_p300_3blocks_n200_69 <- CovTools::PreEst.glasso(p300_3blocks_n200_69, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(70)
  g.lasso_p300_3blocks_n200_70 <- CovTools::PreEst.glasso(p300_3blocks_n200_70, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(71)
  g.lasso_p300_3blocks_n200_71 <- CovTools::PreEst.glasso(p300_3blocks_n200_71, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(72)
  g.lasso_p300_3blocks_n200_72 <- CovTools::PreEst.glasso(p300_3blocks_n200_72, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(73)
  g.lasso_p300_3blocks_n200_73 <- CovTools::PreEst.glasso(p300_3blocks_n200_73, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(74)
  g.lasso_p300_3blocks_n200_74 <- CovTools::PreEst.glasso(p300_3blocks_n200_74, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(75)
  g.lasso_p300_3blocks_n200_75 <- CovTools::PreEst.glasso(p300_3blocks_n200_75, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(76)
  g.lasso_p300_3blocks_n200_76 <- CovTools::PreEst.glasso(p300_3blocks_n200_76, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(77)
  g.lasso_p300_3blocks_n200_77 <- CovTools::PreEst.glasso(p300_3blocks_n200_77, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(78)
  g.lasso_p300_3blocks_n200_78 <- CovTools::PreEst.glasso(p300_3blocks_n200_78, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(79)
  g.lasso_p300_3blocks_n200_79 <- CovTools::PreEst.glasso(p300_3blocks_n200_79, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(80)
  g.lasso_p300_3blocks_n200_80 <- CovTools::PreEst.glasso(p300_3blocks_n200_80, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(81)
  g.lasso_p300_3blocks_n200_81 <- CovTools::PreEst.glasso(p300_3blocks_n200_81, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(82)
  g.lasso_p300_3blocks_n200_82 <- CovTools::PreEst.glasso(p300_3blocks_n200_82, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(83)
  g.lasso_p300_3blocks_n200_83 <- CovTools::PreEst.glasso(p300_3blocks_n200_83, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(84)
  g.lasso_p300_3blocks_n200_84 <- CovTools::PreEst.glasso(p300_3blocks_n200_84, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(85)
  g.lasso_p300_3blocks_n200_85 <- CovTools::PreEst.glasso(p300_3blocks_n200_85, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(86)
  g.lasso_p300_3blocks_n200_86 <- CovTools::PreEst.glasso(p300_3blocks_n200_86, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(87)
  g.lasso_p300_3blocks_n200_87 <- CovTools::PreEst.glasso(p300_3blocks_n200_87, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(88)
  g.lasso_p300_3blocks_n200_88 <- CovTools::PreEst.glasso(p300_3blocks_n200_88, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(89)
  g.lasso_p300_3blocks_n200_89 <- CovTools::PreEst.glasso(p300_3blocks_n200_89, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(90)
  g.lasso_p300_3blocks_n200_90 <- CovTools::PreEst.glasso(p300_3blocks_n200_90, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(91)
  g.lasso_p300_3blocks_n200_91 <- CovTools::PreEst.glasso(p300_3blocks_n200_91, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(92)
  g.lasso_p300_3blocks_n200_92 <- CovTools::PreEst.glasso(p300_3blocks_n200_92, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(93)
  g.lasso_p300_3blocks_n200_93 <- CovTools::PreEst.glasso(p300_3blocks_n200_93, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(94)
  g.lasso_p300_3blocks_n200_94 <- CovTools::PreEst.glasso(p300_3blocks_n200_94, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(95)
  g.lasso_p300_3blocks_n200_95 <- CovTools::PreEst.glasso(p300_3blocks_n200_95, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(96)
  g.lasso_p300_3blocks_n200_96 <- CovTools::PreEst.glasso(p300_3blocks_n200_96, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(97)
  g.lasso_p300_3blocks_n200_97 <- CovTools::PreEst.glasso(p300_3blocks_n200_97, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(98)
  g.lasso_p300_3blocks_n200_98 <- CovTools::PreEst.glasso(p300_3blocks_n200_98, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(99)
  g.lasso_p300_3blocks_n200_99 <- CovTools::PreEst.glasso(p300_3blocks_n200_99, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
  set.seed(100)
  g.lasso_p300_3blocks_n200_100 <- CovTools::PreEst.glasso(p300_3blocks_n200_100, method = list(type = "BIC", param = seq(0.01, 1, length.out = 10)), parallel = TRUE)$C
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
object_names <- paste0("p300_3blocks_n200_", 1:100)
clusterExport(cl, varlist = object_names)

# 실행 시간 측정을 위해 system.time()으로 감쌉니다.
time_clime_p300_3blocks_n200 <- system.time({
  # 병렬 처리: 1부터 100까지 각 객체에 대해 연산 실행
  simulation_results <- foreach(i = 1:100, .packages = "flare") %dopar% {
    set.seed(i)
    # 데이터 객체 가져오기: 예를 들어 "p300_3blocks_n200_1", "p300_3blocks_n200_2", ...
    current_data <- get(paste0("p300_3blocks_n200_", i))
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

# 결과에 이름 부여 (예: result_clime_p300_3blocks_n200_1, ..., result_clime_p300_3blocks_n200_100)
names(simulation_results) <- paste0("result_clime_p300_3blocks_n200_", 1:100)
list2env(simulation_results, envir = .GlobalEnv)
# simulation_results 객체를 "result_clime_p300_3blocks_n200.RData" 파일로 저장
# save(simulation_results, file = "result_clime_p300_3blocks_n200.RData")
# load("result_clime_p300_3blocks_n200.RData") 




# time_g.lasso_p300_3blocks_n200 <- system.time({
clime_p300_3blocks_n200_1 <- flare::sugm(p300_3blocks_n200_1, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_1 <- flare::sugm.select(clime_p300_3blocks_n200_1, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_2 <- flare::sugm(p300_3blocks_n200_2, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_2 <- flare::sugm.select(clime_p300_3blocks_n200_2, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_3 <- flare::sugm(p300_3blocks_n200_3, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_3 <- flare::sugm.select(clime_p300_3blocks_n200_3, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_4 <- flare::sugm(p300_3blocks_n200_4, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_4 <- flare::sugm.select(clime_p300_3blocks_n200_4, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_5 <- flare::sugm(p300_3blocks_n200_5, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_5 <- flare::sugm.select(clime_p300_3blocks_n200_5, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_6 <- flare::sugm(p300_3blocks_n200_6, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_6 <- flare::sugm.select(clime_p300_3blocks_n200_6, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_7 <- flare::sugm(p300_3blocks_n200_7, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_7 <- flare::sugm.select(clime_p300_3blocks_n200_7, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_8 <- flare::sugm(p300_3blocks_n200_8, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_8 <- flare::sugm.select(clime_p300_3blocks_n200_8, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_9 <- flare::sugm(p300_3blocks_n200_9, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_9 <- flare::sugm.select(clime_p300_3blocks_n200_9, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_10 <- flare::sugm(p300_3blocks_n200_10, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_10 <- flare::sugm.select(clime_p300_3blocks_n200_10, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_11 <- flare::sugm(p300_3blocks_n200_11, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_11 <- flare::sugm.select(clime_p300_3blocks_n200_11, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_12 <- flare::sugm(p300_3blocks_n200_12, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_12 <- flare::sugm.select(clime_p300_3blocks_n200_12, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_13 <- flare::sugm(p300_3blocks_n200_13, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_13 <- flare::sugm.select(clime_p300_3blocks_n200_13, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_14 <- flare::sugm(p300_3blocks_n200_14, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_14 <- flare::sugm.select(clime_p300_3blocks_n200_14, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_15 <- flare::sugm(p300_3blocks_n200_15, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_15 <- flare::sugm.select(clime_p300_3blocks_n200_15, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_16 <- flare::sugm(p300_3blocks_n200_16, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_16 <- flare::sugm.select(clime_p300_3blocks_n200_16, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_17 <- flare::sugm(p300_3blocks_n200_17, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_17 <- flare::sugm.select(clime_p300_3blocks_n200_17, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_18 <- flare::sugm(p300_3blocks_n200_18, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_18 <- flare::sugm.select(clime_p300_3blocks_n200_18, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_19 <- flare::sugm(p300_3blocks_n200_19, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_19 <- flare::sugm.select(clime_p300_3blocks_n200_19, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_20 <- flare::sugm(p300_3blocks_n200_20, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_20 <- flare::sugm.select(clime_p300_3blocks_n200_20, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_21 <- flare::sugm(p300_3blocks_n200_21, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_21 <- flare::sugm.select(clime_p300_3blocks_n200_21, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_22 <- flare::sugm(p300_3blocks_n200_22, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_22 <- flare::sugm.select(clime_p300_3blocks_n200_22, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_23 <- flare::sugm(p300_3blocks_n200_23, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_23 <- flare::sugm.select(clime_p300_3blocks_n200_23, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_24 <- flare::sugm(p300_3blocks_n200_24, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_24 <- flare::sugm.select(clime_p300_3blocks_n200_24, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_25 <- flare::sugm(p300_3blocks_n200_25, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_25 <- flare::sugm.select(clime_p300_3blocks_n200_25, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_26 <- flare::sugm(p300_3blocks_n200_26, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_26 <- flare::sugm.select(clime_p300_3blocks_n200_26, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_27 <- flare::sugm(p300_3blocks_n200_27, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_27 <- flare::sugm.select(clime_p300_3blocks_n200_27, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_28 <- flare::sugm(p300_3blocks_n200_28, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_28 <- flare::sugm.select(clime_p300_3blocks_n200_28, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_29 <- flare::sugm(p300_3blocks_n200_29, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_29 <- flare::sugm.select(clime_p300_3blocks_n200_29, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_30 <- flare::sugm(p300_3blocks_n200_30, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_30 <- flare::sugm.select(clime_p300_3blocks_n200_30, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_31 <- flare::sugm(p300_3blocks_n200_31, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_31 <- flare::sugm.select(clime_p300_3blocks_n200_31, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_32 <- flare::sugm(p300_3blocks_n200_32, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_32 <- flare::sugm.select(clime_p300_3blocks_n200_32, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_33 <- flare::sugm(p300_3blocks_n200_33, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_33 <- flare::sugm.select(clime_p300_3blocks_n200_33, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_34 <- flare::sugm(p300_3blocks_n200_34, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_34 <- flare::sugm.select(clime_p300_3blocks_n200_34, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_35 <- flare::sugm(p300_3blocks_n200_35, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_35 <- flare::sugm.select(clime_p300_3blocks_n200_35, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_36 <- flare::sugm(p300_3blocks_n200_36, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_36 <- flare::sugm.select(clime_p300_3blocks_n200_36, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_37 <- flare::sugm(p300_3blocks_n200_37, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_37 <- flare::sugm.select(clime_p300_3blocks_n200_37, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_38 <- flare::sugm(p300_3blocks_n200_38, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_38 <- flare::sugm.select(clime_p300_3blocks_n200_38, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_39 <- flare::sugm(p300_3blocks_n200_39, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_39 <- flare::sugm.select(clime_p300_3blocks_n200_39, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_40 <- flare::sugm(p300_3blocks_n200_40, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_40 <- flare::sugm.select(clime_p300_3blocks_n200_40, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_41 <- flare::sugm(p300_3blocks_n200_41, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_41 <- flare::sugm.select(clime_p300_3blocks_n200_41, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_42 <- flare::sugm(p300_3blocks_n200_42, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_42 <- flare::sugm.select(clime_p300_3blocks_n200_42, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_43 <- flare::sugm(p300_3blocks_n200_43, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_43 <- flare::sugm.select(clime_p300_3blocks_n200_43, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_44 <- flare::sugm(p300_3blocks_n200_44, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_44 <- flare::sugm.select(clime_p300_3blocks_n200_44, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_45 <- flare::sugm(p300_3blocks_n200_45, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_45 <- flare::sugm.select(clime_p300_3blocks_n200_45, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_46 <- flare::sugm(p300_3blocks_n200_46, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_46 <- flare::sugm.select(clime_p300_3blocks_n200_46, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_47 <- flare::sugm(p300_3blocks_n200_47, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_47 <- flare::sugm.select(clime_p300_3blocks_n200_47, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_48 <- flare::sugm(p300_3blocks_n200_48, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_48 <- flare::sugm.select(clime_p300_3blocks_n200_48, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_49 <- flare::sugm(p300_3blocks_n200_49, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_49 <- flare::sugm.select(clime_p300_3blocks_n200_49, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_50 <- flare::sugm(p300_3blocks_n200_50, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_50 <- flare::sugm.select(clime_p300_3blocks_n200_50, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_51 <- flare::sugm(p300_3blocks_n200_51, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_51 <- flare::sugm.select(clime_p300_3blocks_n200_51, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_52 <- flare::sugm(p300_3blocks_n200_52, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_52 <- flare::sugm.select(clime_p300_3blocks_n200_52, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_53 <- flare::sugm(p300_3blocks_n200_53, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_53 <- flare::sugm.select(clime_p300_3blocks_n200_53, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_54 <- flare::sugm(p300_3blocks_n200_54, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_54 <- flare::sugm.select(clime_p300_3blocks_n200_54, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_55 <- flare::sugm(p300_3blocks_n200_55, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_55 <- flare::sugm.select(clime_p300_3blocks_n200_55, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_56 <- flare::sugm(p300_3blocks_n200_56, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_56 <- flare::sugm.select(clime_p300_3blocks_n200_56, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_57 <- flare::sugm(p300_3blocks_n200_57, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_57 <- flare::sugm.select(clime_p300_3blocks_n200_57, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_58 <- flare::sugm(p300_3blocks_n200_58, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_58 <- flare::sugm.select(clime_p300_3blocks_n200_58, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_59 <- flare::sugm(p300_3blocks_n200_59, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_59 <- flare::sugm.select(clime_p300_3blocks_n200_59, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_60 <- flare::sugm(p300_3blocks_n200_60, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_60 <- flare::sugm.select(clime_p300_3blocks_n200_60, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_61 <- flare::sugm(p300_3blocks_n200_61, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_61 <- flare::sugm.select(clime_p300_3blocks_n200_61, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_62 <- flare::sugm(p300_3blocks_n200_62, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_62 <- flare::sugm.select(clime_p300_3blocks_n200_62, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_63 <- flare::sugm(p300_3blocks_n200_63, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_63 <- flare::sugm.select(clime_p300_3blocks_n200_63, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_64 <- flare::sugm(p300_3blocks_n200_64, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_64 <- flare::sugm.select(clime_p300_3blocks_n200_64, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_65 <- flare::sugm(p300_3blocks_n200_65, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_65 <- flare::sugm.select(clime_p300_3blocks_n200_65, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_66 <- flare::sugm(p300_3blocks_n200_66, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_66 <- flare::sugm.select(clime_p300_3blocks_n200_66, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_67 <- flare::sugm(p300_3blocks_n200_67, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_67 <- flare::sugm.select(clime_p300_3blocks_n200_67, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_68 <- flare::sugm(p300_3blocks_n200_68, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_68 <- flare::sugm.select(clime_p300_3blocks_n200_68, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_69 <- flare::sugm(p300_3blocks_n200_69, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_69 <- flare::sugm.select(clime_p300_3blocks_n200_69, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_70 <- flare::sugm(p300_3blocks_n200_70, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_70 <- flare::sugm.select(clime_p300_3blocks_n200_70, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_71 <- flare::sugm(p300_3blocks_n200_71, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_71 <- flare::sugm.select(clime_p300_3blocks_n200_71, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_72 <- flare::sugm(p300_3blocks_n200_72, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_72 <- flare::sugm.select(clime_p300_3blocks_n200_72, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_73 <- flare::sugm(p300_3blocks_n200_73, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_73 <- flare::sugm.select(clime_p300_3blocks_n200_73, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_74 <- flare::sugm(p300_3blocks_n200_74, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_74 <- flare::sugm.select(clime_p300_3blocks_n200_74, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_75 <- flare::sugm(p300_3blocks_n200_75, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_75 <- flare::sugm.select(clime_p300_3blocks_n200_75, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_76 <- flare::sugm(p300_3blocks_n200_76, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_76 <- flare::sugm.select(clime_p300_3blocks_n200_76, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_77 <- flare::sugm(p300_3blocks_n200_77, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_77 <- flare::sugm.select(clime_p300_3blocks_n200_77, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_78 <- flare::sugm(p300_3blocks_n200_78, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_78 <- flare::sugm.select(clime_p300_3blocks_n200_78, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_79 <- flare::sugm(p300_3blocks_n200_79, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_79 <- flare::sugm.select(clime_p300_3blocks_n200_79, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_80 <- flare::sugm(p300_3blocks_n200_80, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_80 <- flare::sugm.select(clime_p300_3blocks_n200_80, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_81 <- flare::sugm(p300_3blocks_n200_81, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_81 <- flare::sugm.select(clime_p300_3blocks_n200_81, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_82 <- flare::sugm(p300_3blocks_n200_82, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_82 <- flare::sugm.select(clime_p300_3blocks_n200_82, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_83 <- flare::sugm(p300_3blocks_n200_83, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_83 <- flare::sugm.select(clime_p300_3blocks_n200_83, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_84 <- flare::sugm(p300_3blocks_n200_84, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_84 <- flare::sugm.select(clime_p300_3blocks_n200_84, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_85 <- flare::sugm(p300_3blocks_n200_85, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_85 <- flare::sugm.select(clime_p300_3blocks_n200_85, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_86 <- flare::sugm(p300_3blocks_n200_86, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_86 <- flare::sugm.select(clime_p300_3blocks_n200_86, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_87 <- flare::sugm(p300_3blocks_n200_87, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_87 <- flare::sugm.select(clime_p300_3blocks_n200_87, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_88 <- flare::sugm(p300_3blocks_n200_88, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_88 <- flare::sugm.select(clime_p300_3blocks_n200_88, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_89 <- flare::sugm(p300_3blocks_n200_89, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_89 <- flare::sugm.select(clime_p300_3blocks_n200_89, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_90 <- flare::sugm(p300_3blocks_n200_90, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_90 <- flare::sugm.select(clime_p300_3blocks_n200_90, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_91 <- flare::sugm(p300_3blocks_n200_91, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_91 <- flare::sugm.select(clime_p300_3blocks_n200_91, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_92 <- flare::sugm(p300_3blocks_n200_92, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_92 <- flare::sugm.select(clime_p300_3blocks_n200_92, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_93 <- flare::sugm(p300_3blocks_n200_93, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_93 <- flare::sugm.select(clime_p300_3blocks_n200_93, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_94 <- flare::sugm(p300_3blocks_n200_94, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_94 <- flare::sugm.select(clime_p300_3blocks_n200_94, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_95 <- flare::sugm(p300_3blocks_n200_95, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_95 <- flare::sugm.select(clime_p300_3blocks_n200_95, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_96 <- flare::sugm(p300_3blocks_n200_96, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_96 <- flare::sugm.select(clime_p300_3blocks_n200_96, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_97 <- flare::sugm(p300_3blocks_n200_97, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_97 <- flare::sugm.select(clime_p300_3blocks_n200_97, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_98 <- flare::sugm(p300_3blocks_n200_98, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_98 <- flare::sugm.select(clime_p300_3blocks_n200_98, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_99 <- flare::sugm(p300_3blocks_n200_99, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_99 <- flare::sugm.select(clime_p300_3blocks_n200_99, criterion = "cv")$opt.icov
clime_p300_3blocks_n200_100 <- flare::sugm(p300_3blocks_n200_100, method = "clime", standardize = TRUE, perturb = TRUE, verbose = TRUE)
result_clime_p300_3blocks_n200_100 <- flare::sugm.select(clime_p300_3blocks_n200_100, criterion = "cv")$opt.icov
})["elapsed"]



# large precision matrix estrimation with unknown group structure
time_Group_Detect_p300_3blocks_n200 <- system.time({
  set.seed(1)
  Group_Detect_p300_3blocks_n200_1 <- Group_Detect(t(p300_3blocks_n200_1), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(2)
  Group_Detect_p300_3blocks_n200_2 <- Group_Detect(t(p300_3blocks_n200_2), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(3)
  Group_Detect_p300_3blocks_n200_3 <- Group_Detect(t(p300_3blocks_n200_3), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(4)
  Group_Detect_p300_3blocks_n200_4 <- Group_Detect(t(p300_3blocks_n200_4), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(5)
  Group_Detect_p300_3blocks_n200_5 <- Group_Detect(t(p300_3blocks_n200_5), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(6)
  Group_Detect_p300_3blocks_n200_6 <- Group_Detect(t(p300_3blocks_n200_6), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(7)
  Group_Detect_p300_3blocks_n200_7 <- Group_Detect(t(p300_3blocks_n200_7), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(8)
  Group_Detect_p300_3blocks_n200_8 <- Group_Detect(t(p300_3blocks_n200_8), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(9)
  Group_Detect_p300_3blocks_n200_9 <- Group_Detect(t(p300_3blocks_n200_9), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(10)
  Group_Detect_p300_3blocks_n200_10 <- Group_Detect(t(p300_3blocks_n200_10), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(11)
  Group_Detect_p300_3blocks_n200_11 <- Group_Detect(t(p300_3blocks_n200_11), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(12)
  Group_Detect_p300_3blocks_n200_12 <- Group_Detect(t(p300_3blocks_n200_12), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(13)
  Group_Detect_p300_3blocks_n200_13 <- Group_Detect(t(p300_3blocks_n200_13), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(14)
  Group_Detect_p300_3blocks_n200_14 <- Group_Detect(t(p300_3blocks_n200_14), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(15)
  Group_Detect_p300_3blocks_n200_15 <- Group_Detect(t(p300_3blocks_n200_15), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(16)
  Group_Detect_p300_3blocks_n200_16 <- Group_Detect(t(p300_3blocks_n200_16), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(17)
  Group_Detect_p300_3blocks_n200_17 <- Group_Detect(t(p300_3blocks_n200_17), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(18)
  Group_Detect_p300_3blocks_n200_18 <- Group_Detect(t(p300_3blocks_n200_18), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(19)
  Group_Detect_p300_3blocks_n200_19 <- Group_Detect(t(p300_3blocks_n200_19), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(20)
  Group_Detect_p300_3blocks_n200_20 <- Group_Detect(t(p300_3blocks_n200_20), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(21)
  Group_Detect_p300_3blocks_n200_21 <- Group_Detect(t(p300_3blocks_n200_21), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(22)
  Group_Detect_p300_3blocks_n200_22 <- Group_Detect(t(p300_3blocks_n200_22), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(23)
  Group_Detect_p300_3blocks_n200_23 <- Group_Detect(t(p300_3blocks_n200_23), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(24)
  Group_Detect_p300_3blocks_n200_24 <- Group_Detect(t(p300_3blocks_n200_24), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(25)
  Group_Detect_p300_3blocks_n200_25 <- Group_Detect(t(p300_3blocks_n200_25), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(26)
  Group_Detect_p300_3blocks_n200_26 <- Group_Detect(t(p300_3blocks_n200_26), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(27)
  Group_Detect_p300_3blocks_n200_27 <- Group_Detect(t(p300_3blocks_n200_27), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(28)
  Group_Detect_p300_3blocks_n200_28 <- Group_Detect(t(p300_3blocks_n200_28), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(29)
  Group_Detect_p300_3blocks_n200_29 <- Group_Detect(t(p300_3blocks_n200_29), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(30)
  Group_Detect_p300_3blocks_n200_30 <- Group_Detect(t(p300_3blocks_n200_30), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(31)
  Group_Detect_p300_3blocks_n200_31 <- Group_Detect(t(p300_3blocks_n200_31), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(32)
  Group_Detect_p300_3blocks_n200_32 <- Group_Detect(t(p300_3blocks_n200_32), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(33)
  Group_Detect_p300_3blocks_n200_33 <- Group_Detect(t(p300_3blocks_n200_33), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(34)
  Group_Detect_p300_3blocks_n200_34 <- Group_Detect(t(p300_3blocks_n200_34), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(35)
  Group_Detect_p300_3blocks_n200_35 <- Group_Detect(t(p300_3blocks_n200_35), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(36)
  Group_Detect_p300_3blocks_n200_36 <- Group_Detect(t(p300_3blocks_n200_36), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(37)
  Group_Detect_p300_3blocks_n200_37 <- Group_Detect(t(p300_3blocks_n200_37), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(38)
  Group_Detect_p300_3blocks_n200_38 <- Group_Detect(t(p300_3blocks_n200_38), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(39)
  Group_Detect_p300_3blocks_n200_39 <- Group_Detect(t(p300_3blocks_n200_39), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(40)
  Group_Detect_p300_3blocks_n200_40 <- Group_Detect(t(p300_3blocks_n200_40), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(41)
  Group_Detect_p300_3blocks_n200_41 <- Group_Detect(t(p300_3blocks_n200_41), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(42)
  Group_Detect_p300_3blocks_n200_42 <- Group_Detect(t(p300_3blocks_n200_42), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(43)
  Group_Detect_p300_3blocks_n200_43 <- Group_Detect(t(p300_3blocks_n200_43), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(44)
  Group_Detect_p300_3blocks_n200_44 <- Group_Detect(t(p300_3blocks_n200_44), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(45)
  Group_Detect_p300_3blocks_n200_45 <- Group_Detect(t(p300_3blocks_n200_45), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(46)
  Group_Detect_p300_3blocks_n200_46 <- Group_Detect(t(p300_3blocks_n200_46), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(47)
  Group_Detect_p300_3blocks_n200_47 <- Group_Detect(t(p300_3blocks_n200_47), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(48)
  Group_Detect_p300_3blocks_n200_48 <- Group_Detect(t(p300_3blocks_n200_48), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(49)
  Group_Detect_p300_3blocks_n200_49 <- Group_Detect(t(p300_3blocks_n200_49), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(50)
  Group_Detect_p300_3blocks_n200_50 <- Group_Detect(t(p300_3blocks_n200_50), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(51)
  Group_Detect_p300_3blocks_n200_51 <- Group_Detect(t(p300_3blocks_n200_51), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(52)
  Group_Detect_p300_3blocks_n200_52 <- Group_Detect(t(p300_3blocks_n200_52), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(53)
  Group_Detect_p300_3blocks_n200_53 <- Group_Detect(t(p300_3blocks_n200_53), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(54)
  Group_Detect_p300_3blocks_n200_54 <- Group_Detect(t(p300_3blocks_n200_54), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(55)
  Group_Detect_p300_3blocks_n200_55 <- Group_Detect(t(p300_3blocks_n200_55), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(56)
  Group_Detect_p300_3blocks_n200_56 <- Group_Detect(t(p300_3blocks_n200_56), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(57)
  Group_Detect_p300_3blocks_n200_57 <- Group_Detect(t(p300_3blocks_n200_57), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(58)
  Group_Detect_p300_3blocks_n200_58 <- Group_Detect(t(p300_3blocks_n200_58), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(59)
  Group_Detect_p300_3blocks_n200_59 <- Group_Detect(t(p300_3blocks_n200_59), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(60)
  Group_Detect_p300_3blocks_n200_60 <- Group_Detect(t(p300_3blocks_n200_60), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(61)
  Group_Detect_p300_3blocks_n200_61 <- Group_Detect(t(p300_3blocks_n200_61), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(62)
  Group_Detect_p300_3blocks_n200_62 <- Group_Detect(t(p300_3blocks_n200_62), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(63)
  Group_Detect_p300_3blocks_n200_63 <- Group_Detect(t(p300_3blocks_n200_63), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(64)
  Group_Detect_p300_3blocks_n200_64 <- Group_Detect(t(p300_3blocks_n200_64), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(65)
  Group_Detect_p300_3blocks_n200_65 <- Group_Detect(t(p300_3blocks_n200_65), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(66)
  Group_Detect_p300_3blocks_n200_66 <- Group_Detect(t(p300_3blocks_n200_66), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(67)
  Group_Detect_p300_3blocks_n200_67 <- Group_Detect(t(p300_3blocks_n200_67), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(68)
  Group_Detect_p300_3blocks_n200_68 <- Group_Detect(t(p300_3blocks_n200_68), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(69)
  Group_Detect_p300_3blocks_n200_69 <- Group_Detect(t(p300_3blocks_n200_69), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(70)
  Group_Detect_p300_3blocks_n200_70 <- Group_Detect(t(p300_3blocks_n200_70), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(71)
  Group_Detect_p300_3blocks_n200_71 <- Group_Detect(t(p300_3blocks_n200_71), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(72)
  Group_Detect_p300_3blocks_n200_72 <- Group_Detect(t(p300_3blocks_n200_72), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(73)
  Group_Detect_p300_3blocks_n200_73 <- Group_Detect(t(p300_3blocks_n200_73), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(74)
  Group_Detect_p300_3blocks_n200_74 <- Group_Detect(t(p300_3blocks_n200_74), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(75)
  Group_Detect_p300_3blocks_n200_75 <- Group_Detect(t(p300_3blocks_n200_75), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(76)
  Group_Detect_p300_3blocks_n200_76 <- Group_Detect(t(p300_3blocks_n200_76), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(77)
  Group_Detect_p300_3blocks_n200_77 <- Group_Detect(t(p300_3blocks_n200_77), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(78)
  Group_Detect_p300_3blocks_n200_78 <- Group_Detect(t(p300_3blocks_n200_78), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(79)
  Group_Detect_p300_3blocks_n200_79 <- Group_Detect(t(p300_3blocks_n200_79), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(80)
  Group_Detect_p300_3blocks_n200_80 <- Group_Detect(t(p300_3blocks_n200_80), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(81)
  Group_Detect_p300_3blocks_n200_81 <- Group_Detect(t(p300_3blocks_n200_81), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(82)
  Group_Detect_p300_3blocks_n200_82 <- Group_Detect(t(p300_3blocks_n200_82), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(83)
  Group_Detect_p300_3blocks_n200_83 <- Group_Detect(t(p300_3blocks_n200_83), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(84)
  Group_Detect_p300_3blocks_n200_84 <- Group_Detect(t(p300_3blocks_n200_84), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(85)
  Group_Detect_p300_3blocks_n200_85 <- Group_Detect(t(p300_3blocks_n200_85), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(86)
  Group_Detect_p300_3blocks_n200_86 <- Group_Detect(t(p300_3blocks_n200_86), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(87)
  Group_Detect_p300_3blocks_n200_87 <- Group_Detect(t(p300_3blocks_n200_87), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(88)
  Group_Detect_p300_3blocks_n200_88 <- Group_Detect(t(p300_3blocks_n200_88), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(89)
  Group_Detect_p300_3blocks_n200_89 <- Group_Detect(t(p300_3blocks_n200_89), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(90)
  Group_Detect_p300_3blocks_n200_90 <- Group_Detect(t(p300_3blocks_n200_90), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(91)
  Group_Detect_p300_3blocks_n200_91 <- Group_Detect(t(p300_3blocks_n200_91), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(92)
  Group_Detect_p300_3blocks_n200_92 <- Group_Detect(t(p300_3blocks_n200_92), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(93)
  Group_Detect_p300_3blocks_n200_93 <- Group_Detect(t(p300_3blocks_n200_93), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(94)
  Group_Detect_p300_3blocks_n200_94 <- Group_Detect(t(p300_3blocks_n200_94), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(95)
  Group_Detect_p300_3blocks_n200_95 <- Group_Detect(t(p300_3blocks_n200_95), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(96)
  Group_Detect_p300_3blocks_n200_96 <- Group_Detect(t(p300_3blocks_n200_96), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(97)
  Group_Detect_p300_3blocks_n200_97 <- Group_Detect(t(p300_3blocks_n200_97), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(98)
  Group_Detect_p300_3blocks_n200_98 <- Group_Detect(t(p300_3blocks_n200_98), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(99)
  Group_Detect_p300_3blocks_n200_99 <- Group_Detect(t(p300_3blocks_n200_99), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
  set.seed(100)
  Group_Detect_p300_3blocks_n200_100 <- Group_Detect(t(p300_3blocks_n200_100), 3, 0.01, 0.01, 0.01, true_precision_p300_3blocks)
})["elapsed"]



library(parallel)
library(doParallel)
library(foreach)
# 사용 가능한 코어 수 만큼 클러스터 생성
numCores <- parallel::detectCores()
cl <- parallel::makeCluster(numCores)
doParallel::registerDoParallel(cl)
object_names <- paste0("p300_3blocks_n200_", 1:100)
clusterExport(cl, varlist = object_names)
# 병렬 처리로 bmsppre
simulation_results <- foreach(i = 1:100,
                              .packages = c("mvnfast", "Matrix", "ks", "matrixcalc", "stats", "GIGrvg")) %dopar% {
                      set.seed(i)
                               
                      current_data <- get(paste0("p300_3blocks_n200_", i))
                      sample_cov <- pd_matrix(cov(current_data))
                      result_bmsppre <- bmsppre(current_data, Omega = diag(diag(solve(sample_cov))))
                      post_est <- estimate.bsppre(result_bmsppre)
                                # 반환값을 리스트로 구성: post_est와 elapsed 시간 모두 포함
                     list(post_est = post_est, elapsed = result_bmsppre$mcmctime["elapsed"])}
                                
stopCluster(cl)
# post_est와 elapsed 각각에 대해 이름 부여
names_post_est <- paste0("post.est.result_bmsppre_p300_3blocks_n200_", 1:100)
names_elapsed <- paste0("mcmctime_elapsed_p300_3blocks_n200_", 1:100)

# 리스트에서 post_est와 elapsed를 분리
post_est_results <- lapply(simulation_results, `[[`, "post_est")
elapsed_results <- lapply(simulation_results, `[[`, "elapsed")
list2env(setNames(post_est_results, names_post_est), envir = .GlobalEnv)
list2env(setNames(elapsed_results, names_elapsed), envir = .GlobalEnv)



##########################################################
################## norm comparison #######################
##########################################################
diff_community_bsppre_p300_3blocks_n200_1 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_1
norm_f_community_bsppre_p300_3blocks_n200_1 <- norm(diff_community_bsppre_p300_3blocks_n200_1, type="f")
norm_1_community_bsppre_p300_3blocks_n200_1 <- norm(diff_community_bsppre_p300_3blocks_n200_1, type="1")
norm_2_community_bsppre_p300_3blocks_n200_1 <- norm(diff_community_bsppre_p300_3blocks_n200_1, type="2")
norm_m_community_bsppre_p300_3blocks_n200_1 <- norm(diff_community_bsppre_p300_3blocks_n200_1, type="m")
diff_community_bsppre_p300_3blocks_n200_2 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_2
norm_f_community_bsppre_p300_3blocks_n200_2 <- norm(diff_community_bsppre_p300_3blocks_n200_2, type="f")
norm_1_community_bsppre_p300_3blocks_n200_2 <- norm(diff_community_bsppre_p300_3blocks_n200_2, type="1")
norm_2_community_bsppre_p300_3blocks_n200_2 <- norm(diff_community_bsppre_p300_3blocks_n200_2, type="2")
norm_m_community_bsppre_p300_3blocks_n200_2 <- norm(diff_community_bsppre_p300_3blocks_n200_2, type="m")
diff_community_bsppre_p300_3blocks_n200_3 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_3
norm_f_community_bsppre_p300_3blocks_n200_3 <- norm(diff_community_bsppre_p300_3blocks_n200_3, type="f")
norm_1_community_bsppre_p300_3blocks_n200_3 <- norm(diff_community_bsppre_p300_3blocks_n200_3, type="1")
norm_2_community_bsppre_p300_3blocks_n200_3 <- norm(diff_community_bsppre_p300_3blocks_n200_3, type="2")
norm_m_community_bsppre_p300_3blocks_n200_3 <- norm(diff_community_bsppre_p300_3blocks_n200_3, type="m")
diff_community_bsppre_p300_3blocks_n200_4 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_4
norm_f_community_bsppre_p300_3blocks_n200_4 <- norm(diff_community_bsppre_p300_3blocks_n200_4, type="f")
norm_1_community_bsppre_p300_3blocks_n200_4 <- norm(diff_community_bsppre_p300_3blocks_n200_4, type="1")
norm_2_community_bsppre_p300_3blocks_n200_4 <- norm(diff_community_bsppre_p300_3blocks_n200_4, type="2")
norm_m_community_bsppre_p300_3blocks_n200_4 <- norm(diff_community_bsppre_p300_3blocks_n200_4, type="m")
diff_community_bsppre_p300_3blocks_n200_5 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_5
norm_f_community_bsppre_p300_3blocks_n200_5 <- norm(diff_community_bsppre_p300_3blocks_n200_5, type="f")
norm_1_community_bsppre_p300_3blocks_n200_5 <- norm(diff_community_bsppre_p300_3blocks_n200_5, type="1")
norm_2_community_bsppre_p300_3blocks_n200_5 <- norm(diff_community_bsppre_p300_3blocks_n200_5, type="2")
norm_m_community_bsppre_p300_3blocks_n200_5 <- norm(diff_community_bsppre_p300_3blocks_n200_5, type="m")
diff_community_bsppre_p300_3blocks_n200_6 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_6
norm_f_community_bsppre_p300_3blocks_n200_6 <- norm(diff_community_bsppre_p300_3blocks_n200_6, type="f")
norm_1_community_bsppre_p300_3blocks_n200_6 <- norm(diff_community_bsppre_p300_3blocks_n200_6, type="1")
norm_2_community_bsppre_p300_3blocks_n200_6 <- norm(diff_community_bsppre_p300_3blocks_n200_6, type="2")
norm_m_community_bsppre_p300_3blocks_n200_6 <- norm(diff_community_bsppre_p300_3blocks_n200_6, type="m")
diff_community_bsppre_p300_3blocks_n200_7 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_7
norm_f_community_bsppre_p300_3blocks_n200_7 <- norm(diff_community_bsppre_p300_3blocks_n200_7, type="f")
norm_1_community_bsppre_p300_3blocks_n200_7 <- norm(diff_community_bsppre_p300_3blocks_n200_7, type="1")
norm_2_community_bsppre_p300_3blocks_n200_7 <- norm(diff_community_bsppre_p300_3blocks_n200_7, type="2")
norm_m_community_bsppre_p300_3blocks_n200_7 <- norm(diff_community_bsppre_p300_3blocks_n200_7, type="m")
diff_community_bsppre_p300_3blocks_n200_8 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_8
norm_f_community_bsppre_p300_3blocks_n200_8 <- norm(diff_community_bsppre_p300_3blocks_n200_8, type="f")
norm_1_community_bsppre_p300_3blocks_n200_8 <- norm(diff_community_bsppre_p300_3blocks_n200_8, type="1")
norm_2_community_bsppre_p300_3blocks_n200_8 <- norm(diff_community_bsppre_p300_3blocks_n200_8, type="2")
norm_m_community_bsppre_p300_3blocks_n200_8 <- norm(diff_community_bsppre_p300_3blocks_n200_8, type="m")
diff_community_bsppre_p300_3blocks_n200_9 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_9
norm_f_community_bsppre_p300_3blocks_n200_9 <- norm(diff_community_bsppre_p300_3blocks_n200_9, type="f")
norm_1_community_bsppre_p300_3blocks_n200_9 <- norm(diff_community_bsppre_p300_3blocks_n200_9, type="1")
norm_2_community_bsppre_p300_3blocks_n200_9 <- norm(diff_community_bsppre_p300_3blocks_n200_9, type="2")
norm_m_community_bsppre_p300_3blocks_n200_9 <- norm(diff_community_bsppre_p300_3blocks_n200_9, type="m")
diff_community_bsppre_p300_3blocks_n200_10 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_10
norm_f_community_bsppre_p300_3blocks_n200_10 <- norm(diff_community_bsppre_p300_3blocks_n200_10, type="f")
norm_1_community_bsppre_p300_3blocks_n200_10 <- norm(diff_community_bsppre_p300_3blocks_n200_10, type="1")
norm_2_community_bsppre_p300_3blocks_n200_10 <- norm(diff_community_bsppre_p300_3blocks_n200_10, type="2")
norm_m_community_bsppre_p300_3blocks_n200_10 <- norm(diff_community_bsppre_p300_3blocks_n200_10, type="m")
diff_community_bsppre_p300_3blocks_n200_11 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_11
norm_f_community_bsppre_p300_3blocks_n200_11 <- norm(diff_community_bsppre_p300_3blocks_n200_11, type="f")
norm_1_community_bsppre_p300_3blocks_n200_11 <- norm(diff_community_bsppre_p300_3blocks_n200_11, type="1")
norm_2_community_bsppre_p300_3blocks_n200_11 <- norm(diff_community_bsppre_p300_3blocks_n200_11, type="2")
norm_m_community_bsppre_p300_3blocks_n200_11 <- norm(diff_community_bsppre_p300_3blocks_n200_11, type="m")
diff_community_bsppre_p300_3blocks_n200_12 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_12
norm_f_community_bsppre_p300_3blocks_n200_12 <- norm(diff_community_bsppre_p300_3blocks_n200_12, type="f")
norm_1_community_bsppre_p300_3blocks_n200_12 <- norm(diff_community_bsppre_p300_3blocks_n200_12, type="1")
norm_2_community_bsppre_p300_3blocks_n200_12 <- norm(diff_community_bsppre_p300_3blocks_n200_12, type="2")
norm_m_community_bsppre_p300_3blocks_n200_12 <- norm(diff_community_bsppre_p300_3blocks_n200_12, type="m")
diff_community_bsppre_p300_3blocks_n200_13 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_13
norm_f_community_bsppre_p300_3blocks_n200_13 <- norm(diff_community_bsppre_p300_3blocks_n200_13, type="f")
norm_1_community_bsppre_p300_3blocks_n200_13 <- norm(diff_community_bsppre_p300_3blocks_n200_13, type="1")
norm_2_community_bsppre_p300_3blocks_n200_13 <- norm(diff_community_bsppre_p300_3blocks_n200_13, type="2")
norm_m_community_bsppre_p300_3blocks_n200_13 <- norm(diff_community_bsppre_p300_3blocks_n200_13, type="m")
diff_community_bsppre_p300_3blocks_n200_14 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_14
norm_f_community_bsppre_p300_3blocks_n200_14 <- norm(diff_community_bsppre_p300_3blocks_n200_14, type="f")
norm_1_community_bsppre_p300_3blocks_n200_14 <- norm(diff_community_bsppre_p300_3blocks_n200_14, type="1")
norm_2_community_bsppre_p300_3blocks_n200_14 <- norm(diff_community_bsppre_p300_3blocks_n200_14, type="2")
norm_m_community_bsppre_p300_3blocks_n200_14 <- norm(diff_community_bsppre_p300_3blocks_n200_14, type="m")
diff_community_bsppre_p300_3blocks_n200_15 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_15 
norm_f_community_bsppre_p300_3blocks_n200_15 <- norm(diff_community_bsppre_p300_3blocks_n200_15, type="f")
norm_1_community_bsppre_p300_3blocks_n200_15 <- norm(diff_community_bsppre_p300_3blocks_n200_15, type="1")
norm_2_community_bsppre_p300_3blocks_n200_15 <- norm(diff_community_bsppre_p300_3blocks_n200_15, type="2")
norm_m_community_bsppre_p300_3blocks_n200_15 <- norm(diff_community_bsppre_p300_3blocks_n200_15, type="m")
diff_community_bsppre_p300_3blocks_n200_16 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_16
norm_f_community_bsppre_p300_3blocks_n200_16 <- norm(diff_community_bsppre_p300_3blocks_n200_16, type="f")
norm_1_community_bsppre_p300_3blocks_n200_16 <- norm(diff_community_bsppre_p300_3blocks_n200_16, type="1")
norm_2_community_bsppre_p300_3blocks_n200_16 <- norm(diff_community_bsppre_p300_3blocks_n200_16, type="2")
norm_m_community_bsppre_p300_3blocks_n200_16 <- norm(diff_community_bsppre_p300_3blocks_n200_16, type="m")
diff_community_bsppre_p300_3blocks_n200_17 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_17
norm_f_community_bsppre_p300_3blocks_n200_17 <- norm(diff_community_bsppre_p300_3blocks_n200_17, type="f")
norm_1_community_bsppre_p300_3blocks_n200_17 <- norm(diff_community_bsppre_p300_3blocks_n200_17, type="1")
norm_2_community_bsppre_p300_3blocks_n200_17 <- norm(diff_community_bsppre_p300_3blocks_n200_17, type="2")
norm_m_community_bsppre_p300_3blocks_n200_17 <- norm(diff_community_bsppre_p300_3blocks_n200_17, type="m")
diff_community_bsppre_p300_3blocks_n200_18 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_18
norm_f_community_bsppre_p300_3blocks_n200_18 <- norm(diff_community_bsppre_p300_3blocks_n200_18, type="f")
norm_1_community_bsppre_p300_3blocks_n200_18 <- norm(diff_community_bsppre_p300_3blocks_n200_18, type="1")
norm_2_community_bsppre_p300_3blocks_n200_18 <- norm(diff_community_bsppre_p300_3blocks_n200_18, type="2")
norm_m_community_bsppre_p300_3blocks_n200_18 <- norm(diff_community_bsppre_p300_3blocks_n200_18, type="m")
diff_community_bsppre_p300_3blocks_n200_19 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_19
norm_f_community_bsppre_p300_3blocks_n200_19 <- norm(diff_community_bsppre_p300_3blocks_n200_19, type="f")
norm_1_community_bsppre_p300_3blocks_n200_19 <- norm(diff_community_bsppre_p300_3blocks_n200_19, type="1")
norm_2_community_bsppre_p300_3blocks_n200_19 <- norm(diff_community_bsppre_p300_3blocks_n200_19, type="2")
norm_m_community_bsppre_p300_3blocks_n200_19 <- norm(diff_community_bsppre_p300_3blocks_n200_19, type="m")
diff_community_bsppre_p300_3blocks_n200_20 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_20
norm_f_community_bsppre_p300_3blocks_n200_20 <- norm(diff_community_bsppre_p300_3blocks_n200_20, type="f")
norm_1_community_bsppre_p300_3blocks_n200_20 <- norm(diff_community_bsppre_p300_3blocks_n200_20, type="1")
norm_2_community_bsppre_p300_3blocks_n200_20 <- norm(diff_community_bsppre_p300_3blocks_n200_20, type="2")
norm_m_community_bsppre_p300_3blocks_n200_20 <- norm(diff_community_bsppre_p300_3blocks_n200_20, type="m")
diff_community_bsppre_p300_3blocks_n200_21 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_21
norm_f_community_bsppre_p300_3blocks_n200_21 <- norm(diff_community_bsppre_p300_3blocks_n200_21, type="f")
norm_1_community_bsppre_p300_3blocks_n200_21 <- norm(diff_community_bsppre_p300_3blocks_n200_21, type="1")
norm_2_community_bsppre_p300_3blocks_n200_21 <- norm(diff_community_bsppre_p300_3blocks_n200_21, type="2")
norm_m_community_bsppre_p300_3blocks_n200_21 <- norm(diff_community_bsppre_p300_3blocks_n200_21, type="m")
diff_community_bsppre_p300_3blocks_n200_22 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_22
norm_f_community_bsppre_p300_3blocks_n200_22 <- norm(diff_community_bsppre_p300_3blocks_n200_22, type="f")
norm_1_community_bsppre_p300_3blocks_n200_22 <- norm(diff_community_bsppre_p300_3blocks_n200_22, type="1")
norm_2_community_bsppre_p300_3blocks_n200_22 <- norm(diff_community_bsppre_p300_3blocks_n200_22, type="2")
norm_m_community_bsppre_p300_3blocks_n200_22 <- norm(diff_community_bsppre_p300_3blocks_n200_22, type="m")
diff_community_bsppre_p300_3blocks_n200_23 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_23
norm_f_community_bsppre_p300_3blocks_n200_23 <- norm(diff_community_bsppre_p300_3blocks_n200_23, type="f")
norm_1_community_bsppre_p300_3blocks_n200_23 <- norm(diff_community_bsppre_p300_3blocks_n200_23, type="1")
norm_2_community_bsppre_p300_3blocks_n200_23 <- norm(diff_community_bsppre_p300_3blocks_n200_23, type="2")
norm_m_community_bsppre_p300_3blocks_n200_23 <- norm(diff_community_bsppre_p300_3blocks_n200_23, type="m")
diff_community_bsppre_p300_3blocks_n200_24 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_24
norm_f_community_bsppre_p300_3blocks_n200_24 <- norm(diff_community_bsppre_p300_3blocks_n200_24, type="f")
norm_1_community_bsppre_p300_3blocks_n200_24 <- norm(diff_community_bsppre_p300_3blocks_n200_24, type="1")
norm_2_community_bsppre_p300_3blocks_n200_24 <- norm(diff_community_bsppre_p300_3blocks_n200_24, type="2")
norm_m_community_bsppre_p300_3blocks_n200_24 <- norm(diff_community_bsppre_p300_3blocks_n200_24, type="m")
diff_community_bsppre_p300_3blocks_n200_25 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_25
norm_f_community_bsppre_p300_3blocks_n200_25 <- norm(diff_community_bsppre_p300_3blocks_n200_25, type="f")
norm_1_community_bsppre_p300_3blocks_n200_25 <- norm(diff_community_bsppre_p300_3blocks_n200_25, type="1")
norm_2_community_bsppre_p300_3blocks_n200_25 <- norm(diff_community_bsppre_p300_3blocks_n200_25, type="2")
norm_m_community_bsppre_p300_3blocks_n200_25 <- norm(diff_community_bsppre_p300_3blocks_n200_25, type="m")
diff_community_bsppre_p300_3blocks_n200_26 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_26
norm_f_community_bsppre_p300_3blocks_n200_26 <- norm(diff_community_bsppre_p300_3blocks_n200_26, type="f")
norm_1_community_bsppre_p300_3blocks_n200_26 <- norm(diff_community_bsppre_p300_3blocks_n200_26, type="1")
norm_2_community_bsppre_p300_3blocks_n200_26 <- norm(diff_community_bsppre_p300_3blocks_n200_26, type="2")
norm_m_community_bsppre_p300_3blocks_n200_26 <- norm(diff_community_bsppre_p300_3blocks_n200_26, type="m")
diff_community_bsppre_p300_3blocks_n200_27 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_27
norm_f_community_bsppre_p300_3blocks_n200_27 <- norm(diff_community_bsppre_p300_3blocks_n200_27, type="f")
norm_1_community_bsppre_p300_3blocks_n200_27 <- norm(diff_community_bsppre_p300_3blocks_n200_27, type="1")
norm_2_community_bsppre_p300_3blocks_n200_27 <- norm(diff_community_bsppre_p300_3blocks_n200_27, type="2")
norm_m_community_bsppre_p300_3blocks_n200_27 <- norm(diff_community_bsppre_p300_3blocks_n200_27, type="m")
diff_community_bsppre_p300_3blocks_n200_28 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_28
norm_f_community_bsppre_p300_3blocks_n200_28 <- norm(diff_community_bsppre_p300_3blocks_n200_28, type="f")
norm_1_community_bsppre_p300_3blocks_n200_28 <- norm(diff_community_bsppre_p300_3blocks_n200_28, type="1")
norm_2_community_bsppre_p300_3blocks_n200_28 <- norm(diff_community_bsppre_p300_3blocks_n200_28, type="2")
norm_m_community_bsppre_p300_3blocks_n200_28 <- norm(diff_community_bsppre_p300_3blocks_n200_28, type="m")
diff_community_bsppre_p300_3blocks_n200_29 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_29
norm_f_community_bsppre_p300_3blocks_n200_29 <- norm(diff_community_bsppre_p300_3blocks_n200_29, type="f")
norm_1_community_bsppre_p300_3blocks_n200_29 <- norm(diff_community_bsppre_p300_3blocks_n200_29, type="1")
norm_2_community_bsppre_p300_3blocks_n200_29 <- norm(diff_community_bsppre_p300_3blocks_n200_29, type="2")
norm_m_community_bsppre_p300_3blocks_n200_29 <- norm(diff_community_bsppre_p300_3blocks_n200_29, type="m")
diff_community_bsppre_p300_3blocks_n200_30 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_30
norm_f_community_bsppre_p300_3blocks_n200_30 <- norm(diff_community_bsppre_p300_3blocks_n200_30, type="f")
norm_1_community_bsppre_p300_3blocks_n200_30 <- norm(diff_community_bsppre_p300_3blocks_n200_30, type="1")
norm_2_community_bsppre_p300_3blocks_n200_30 <- norm(diff_community_bsppre_p300_3blocks_n200_30, type="2")
norm_m_community_bsppre_p300_3blocks_n200_30 <- norm(diff_community_bsppre_p300_3blocks_n200_30, type="m")
diff_community_bsppre_p300_3blocks_n200_31 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_31
norm_f_community_bsppre_p300_3blocks_n200_31 <- norm(diff_community_bsppre_p300_3blocks_n200_31, type="f")
norm_1_community_bsppre_p300_3blocks_n200_31 <- norm(diff_community_bsppre_p300_3blocks_n200_31, type="1")
norm_2_community_bsppre_p300_3blocks_n200_31 <- norm(diff_community_bsppre_p300_3blocks_n200_31, type="2")
norm_m_community_bsppre_p300_3blocks_n200_31 <- norm(diff_community_bsppre_p300_3blocks_n200_31, type="m")
diff_community_bsppre_p300_3blocks_n200_32 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_32
norm_f_community_bsppre_p300_3blocks_n200_32 <- norm(diff_community_bsppre_p300_3blocks_n200_32, type="f")
norm_1_community_bsppre_p300_3blocks_n200_32 <- norm(diff_community_bsppre_p300_3blocks_n200_32, type="1")
norm_2_community_bsppre_p300_3blocks_n200_32 <- norm(diff_community_bsppre_p300_3blocks_n200_32, type="2")
norm_m_community_bsppre_p300_3blocks_n200_32 <- norm(diff_community_bsppre_p300_3blocks_n200_32, type="m")
diff_community_bsppre_p300_3blocks_n200_33 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_33
norm_f_community_bsppre_p300_3blocks_n200_33 <- norm(diff_community_bsppre_p300_3blocks_n200_33, type="f")
norm_1_community_bsppre_p300_3blocks_n200_33 <- norm(diff_community_bsppre_p300_3blocks_n200_33, type="1")
norm_2_community_bsppre_p300_3blocks_n200_33 <- norm(diff_community_bsppre_p300_3blocks_n200_33, type="2")
norm_m_community_bsppre_p300_3blocks_n200_33 <- norm(diff_community_bsppre_p300_3blocks_n200_33, type="m")
diff_community_bsppre_p300_3blocks_n200_34 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_34
norm_f_community_bsppre_p300_3blocks_n200_34 <- norm(diff_community_bsppre_p300_3blocks_n200_34, type="f")
norm_1_community_bsppre_p300_3blocks_n200_34 <- norm(diff_community_bsppre_p300_3blocks_n200_34, type="1")
norm_2_community_bsppre_p300_3blocks_n200_34 <- norm(diff_community_bsppre_p300_3blocks_n200_34, type="2")
norm_m_community_bsppre_p300_3blocks_n200_34 <- norm(diff_community_bsppre_p300_3blocks_n200_34, type="m")
diff_community_bsppre_p300_3blocks_n200_35 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_35
norm_f_community_bsppre_p300_3blocks_n200_35 <- norm(diff_community_bsppre_p300_3blocks_n200_35, type="f")
norm_1_community_bsppre_p300_3blocks_n200_35 <- norm(diff_community_bsppre_p300_3blocks_n200_35, type="1")
norm_2_community_bsppre_p300_3blocks_n200_35 <- norm(diff_community_bsppre_p300_3blocks_n200_35, type="2")
norm_m_community_bsppre_p300_3blocks_n200_35 <- norm(diff_community_bsppre_p300_3blocks_n200_35, type="m")
diff_community_bsppre_p300_3blocks_n200_36 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_36
norm_f_community_bsppre_p300_3blocks_n200_36 <- norm(diff_community_bsppre_p300_3blocks_n200_36, type="f")
norm_1_community_bsppre_p300_3blocks_n200_36 <- norm(diff_community_bsppre_p300_3blocks_n200_36, type="1")
norm_2_community_bsppre_p300_3blocks_n200_36 <- norm(diff_community_bsppre_p300_3blocks_n200_36, type="2")
norm_m_community_bsppre_p300_3blocks_n200_36 <- norm(diff_community_bsppre_p300_3blocks_n200_36, type="m")
diff_community_bsppre_p300_3blocks_n200_37 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_37
norm_f_community_bsppre_p300_3blocks_n200_37 <- norm(diff_community_bsppre_p300_3blocks_n200_37, type="f")
norm_1_community_bsppre_p300_3blocks_n200_37 <- norm(diff_community_bsppre_p300_3blocks_n200_37, type="1")
norm_2_community_bsppre_p300_3blocks_n200_37 <- norm(diff_community_bsppre_p300_3blocks_n200_37, type="2")
norm_m_community_bsppre_p300_3blocks_n200_37 <- norm(diff_community_bsppre_p300_3blocks_n200_37, type="m")
diff_community_bsppre_p300_3blocks_n200_38 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_38
norm_f_community_bsppre_p300_3blocks_n200_38 <- norm(diff_community_bsppre_p300_3blocks_n200_38, type="f")
norm_1_community_bsppre_p300_3blocks_n200_38 <- norm(diff_community_bsppre_p300_3blocks_n200_38, type="1")
norm_2_community_bsppre_p300_3blocks_n200_38 <- norm(diff_community_bsppre_p300_3blocks_n200_38, type="2")
norm_m_community_bsppre_p300_3blocks_n200_38 <- norm(diff_community_bsppre_p300_3blocks_n200_38, type="m")
diff_community_bsppre_p300_3blocks_n200_39 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_39
norm_f_community_bsppre_p300_3blocks_n200_39 <- norm(diff_community_bsppre_p300_3blocks_n200_39, type="f")
norm_1_community_bsppre_p300_3blocks_n200_39 <- norm(diff_community_bsppre_p300_3blocks_n200_39, type="1")
norm_2_community_bsppre_p300_3blocks_n200_39 <- norm(diff_community_bsppre_p300_3blocks_n200_39, type="2")
norm_m_community_bsppre_p300_3blocks_n200_39 <- norm(diff_community_bsppre_p300_3blocks_n200_39, type="m")
diff_community_bsppre_p300_3blocks_n200_40 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_40
norm_f_community_bsppre_p300_3blocks_n200_40 <- norm(diff_community_bsppre_p300_3blocks_n200_40, type="f")
norm_1_community_bsppre_p300_3blocks_n200_40 <- norm(diff_community_bsppre_p300_3blocks_n200_40, type="1")
norm_2_community_bsppre_p300_3blocks_n200_40 <- norm(diff_community_bsppre_p300_3blocks_n200_40, type="2")
norm_m_community_bsppre_p300_3blocks_n200_40 <- norm(diff_community_bsppre_p300_3blocks_n200_40, type="m")
diff_community_bsppre_p300_3blocks_n200_41 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_41
norm_f_community_bsppre_p300_3blocks_n200_41 <- norm(diff_community_bsppre_p300_3blocks_n200_41, type="f")
norm_1_community_bsppre_p300_3blocks_n200_41 <- norm(diff_community_bsppre_p300_3blocks_n200_41, type="1")
norm_2_community_bsppre_p300_3blocks_n200_41 <- norm(diff_community_bsppre_p300_3blocks_n200_41, type="2")
norm_m_community_bsppre_p300_3blocks_n200_41 <- norm(diff_community_bsppre_p300_3blocks_n200_41, type="m")
diff_community_bsppre_p300_3blocks_n200_42 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_42
norm_f_community_bsppre_p300_3blocks_n200_42 <- norm(diff_community_bsppre_p300_3blocks_n200_42, type="f")
norm_1_community_bsppre_p300_3blocks_n200_42 <- norm(diff_community_bsppre_p300_3blocks_n200_42, type="1")
norm_2_community_bsppre_p300_3blocks_n200_42 <- norm(diff_community_bsppre_p300_3blocks_n200_42, type="2")
norm_m_community_bsppre_p300_3blocks_n200_42 <- norm(diff_community_bsppre_p300_3blocks_n200_42, type="m")
diff_community_bsppre_p300_3blocks_n200_43 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_43
norm_f_community_bsppre_p300_3blocks_n200_43 <- norm(diff_community_bsppre_p300_3blocks_n200_43, type="f")
norm_1_community_bsppre_p300_3blocks_n200_43 <- norm(diff_community_bsppre_p300_3blocks_n200_43, type="1")
norm_2_community_bsppre_p300_3blocks_n200_43 <- norm(diff_community_bsppre_p300_3blocks_n200_43, type="2")
norm_m_community_bsppre_p300_3blocks_n200_43 <- norm(diff_community_bsppre_p300_3blocks_n200_43, type="m")
diff_community_bsppre_p300_3blocks_n200_44 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_44
norm_f_community_bsppre_p300_3blocks_n200_44 <- norm(diff_community_bsppre_p300_3blocks_n200_44, type="f")
norm_1_community_bsppre_p300_3blocks_n200_44 <- norm(diff_community_bsppre_p300_3blocks_n200_44, type="1")
norm_2_community_bsppre_p300_3blocks_n200_44 <- norm(diff_community_bsppre_p300_3blocks_n200_44, type="2")
norm_m_community_bsppre_p300_3blocks_n200_44 <- norm(diff_community_bsppre_p300_3blocks_n200_44, type="m")
diff_community_bsppre_p300_3blocks_n200_45 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_45
norm_f_community_bsppre_p300_3blocks_n200_45 <- norm(diff_community_bsppre_p300_3blocks_n200_45, type="f")
norm_1_community_bsppre_p300_3blocks_n200_45 <- norm(diff_community_bsppre_p300_3blocks_n200_45, type="1")
norm_2_community_bsppre_p300_3blocks_n200_45 <- norm(diff_community_bsppre_p300_3blocks_n200_45, type="2")
norm_m_community_bsppre_p300_3blocks_n200_45 <- norm(diff_community_bsppre_p300_3blocks_n200_45, type="m")
diff_community_bsppre_p300_3blocks_n200_46 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_46
norm_f_community_bsppre_p300_3blocks_n200_46 <- norm(diff_community_bsppre_p300_3blocks_n200_46, type="f")
norm_1_community_bsppre_p300_3blocks_n200_46 <- norm(diff_community_bsppre_p300_3blocks_n200_46, type="1")
norm_2_community_bsppre_p300_3blocks_n200_46 <- norm(diff_community_bsppre_p300_3blocks_n200_46, type="2")
norm_m_community_bsppre_p300_3blocks_n200_46 <- norm(diff_community_bsppre_p300_3blocks_n200_46, type="m")
diff_community_bsppre_p300_3blocks_n200_47 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_47
norm_f_community_bsppre_p300_3blocks_n200_47 <- norm(diff_community_bsppre_p300_3blocks_n200_47, type="f")
norm_1_community_bsppre_p300_3blocks_n200_47 <- norm(diff_community_bsppre_p300_3blocks_n200_47, type="1")
norm_2_community_bsppre_p300_3blocks_n200_47 <- norm(diff_community_bsppre_p300_3blocks_n200_47, type="2")
norm_m_community_bsppre_p300_3blocks_n200_47 <- norm(diff_community_bsppre_p300_3blocks_n200_47, type="m")
diff_community_bsppre_p300_3blocks_n200_48 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_48
norm_f_community_bsppre_p300_3blocks_n200_48 <- norm(diff_community_bsppre_p300_3blocks_n200_48, type="f")
norm_1_community_bsppre_p300_3blocks_n200_48 <- norm(diff_community_bsppre_p300_3blocks_n200_48, type="1")
norm_2_community_bsppre_p300_3blocks_n200_48 <- norm(diff_community_bsppre_p300_3blocks_n200_48, type="2")
norm_m_community_bsppre_p300_3blocks_n200_48 <- norm(diff_community_bsppre_p300_3blocks_n200_48, type="m")
diff_community_bsppre_p300_3blocks_n200_49 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_49
norm_f_community_bsppre_p300_3blocks_n200_49 <- norm(diff_community_bsppre_p300_3blocks_n200_49, type="f")
norm_1_community_bsppre_p300_3blocks_n200_49 <- norm(diff_community_bsppre_p300_3blocks_n200_49, type="1")
norm_2_community_bsppre_p300_3blocks_n200_49 <- norm(diff_community_bsppre_p300_3blocks_n200_49, type="2")
norm_m_community_bsppre_p300_3blocks_n200_49 <- norm(diff_community_bsppre_p300_3blocks_n200_49, type="m")
diff_community_bsppre_p300_3blocks_n200_50 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_50
norm_f_community_bsppre_p300_3blocks_n200_50 <- norm(diff_community_bsppre_p300_3blocks_n200_50, type="f")
norm_1_community_bsppre_p300_3blocks_n200_50 <- norm(diff_community_bsppre_p300_3blocks_n200_50, type="1")
norm_2_community_bsppre_p300_3blocks_n200_50 <- norm(diff_community_bsppre_p300_3blocks_n200_50, type="2")
norm_m_community_bsppre_p300_3blocks_n200_50 <- norm(diff_community_bsppre_p300_3blocks_n200_50, type="m")
diff_community_bsppre_p300_3blocks_n200_51 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_51
norm_f_community_bsppre_p300_3blocks_n200_51 <- norm(diff_community_bsppre_p300_3blocks_n200_51, type="f")
norm_1_community_bsppre_p300_3blocks_n200_51 <- norm(diff_community_bsppre_p300_3blocks_n200_51, type="1")
norm_2_community_bsppre_p300_3blocks_n200_51 <- norm(diff_community_bsppre_p300_3blocks_n200_51, type="2")
norm_m_community_bsppre_p300_3blocks_n200_51 <- norm(diff_community_bsppre_p300_3blocks_n200_51, type="m")
diff_community_bsppre_p300_3blocks_n200_52 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_52
norm_f_community_bsppre_p300_3blocks_n200_52 <- norm(diff_community_bsppre_p300_3blocks_n200_52, type="f")
norm_1_community_bsppre_p300_3blocks_n200_52 <- norm(diff_community_bsppre_p300_3blocks_n200_52, type="1")
norm_2_community_bsppre_p300_3blocks_n200_52 <- norm(diff_community_bsppre_p300_3blocks_n200_52, type="2")
norm_m_community_bsppre_p300_3blocks_n200_52 <- norm(diff_community_bsppre_p300_3blocks_n200_52, type="m")
diff_community_bsppre_p300_3blocks_n200_53 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_53
norm_f_community_bsppre_p300_3blocks_n200_53 <- norm(diff_community_bsppre_p300_3blocks_n200_53, type="f")
norm_1_community_bsppre_p300_3blocks_n200_53 <- norm(diff_community_bsppre_p300_3blocks_n200_53, type="1")
norm_2_community_bsppre_p300_3blocks_n200_53 <- norm(diff_community_bsppre_p300_3blocks_n200_53, type="2")
norm_m_community_bsppre_p300_3blocks_n200_53 <- norm(diff_community_bsppre_p300_3blocks_n200_53, type="m")
diff_community_bsppre_p300_3blocks_n200_54 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_54
norm_f_community_bsppre_p300_3blocks_n200_54 <- norm(diff_community_bsppre_p300_3blocks_n200_54, type="f")
norm_1_community_bsppre_p300_3blocks_n200_54 <- norm(diff_community_bsppre_p300_3blocks_n200_54, type="1")
norm_2_community_bsppre_p300_3blocks_n200_54 <- norm(diff_community_bsppre_p300_3blocks_n200_54, type="2")
norm_m_community_bsppre_p300_3blocks_n200_54 <- norm(diff_community_bsppre_p300_3blocks_n200_54, type="m")
diff_community_bsppre_p300_3blocks_n200_55 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_55
norm_f_community_bsppre_p300_3blocks_n200_55 <- norm(diff_community_bsppre_p300_3blocks_n200_55, type="f")
norm_1_community_bsppre_p300_3blocks_n200_55 <- norm(diff_community_bsppre_p300_3blocks_n200_55, type="1")
norm_2_community_bsppre_p300_3blocks_n200_55 <- norm(diff_community_bsppre_p300_3blocks_n200_55, type="2")
norm_m_community_bsppre_p300_3blocks_n200_55 <- norm(diff_community_bsppre_p300_3blocks_n200_55, type="m")
diff_community_bsppre_p300_3blocks_n200_56 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_56
norm_f_community_bsppre_p300_3blocks_n200_56 <- norm(diff_community_bsppre_p300_3blocks_n200_56, type="f")
norm_1_community_bsppre_p300_3blocks_n200_56 <- norm(diff_community_bsppre_p300_3blocks_n200_56, type="1")
norm_2_community_bsppre_p300_3blocks_n200_56 <- norm(diff_community_bsppre_p300_3blocks_n200_56, type="2")
norm_m_community_bsppre_p300_3blocks_n200_56 <- norm(diff_community_bsppre_p300_3blocks_n200_56, type="m")
diff_community_bsppre_p300_3blocks_n200_57 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_57
norm_f_community_bsppre_p300_3blocks_n200_57 <- norm(diff_community_bsppre_p300_3blocks_n200_57, type="f")
norm_1_community_bsppre_p300_3blocks_n200_57 <- norm(diff_community_bsppre_p300_3blocks_n200_57, type="1")
norm_2_community_bsppre_p300_3blocks_n200_57 <- norm(diff_community_bsppre_p300_3blocks_n200_57, type="2")
norm_m_community_bsppre_p300_3blocks_n200_57 <- norm(diff_community_bsppre_p300_3blocks_n200_57, type="m")
diff_community_bsppre_p300_3blocks_n200_58 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_58
norm_f_community_bsppre_p300_3blocks_n200_58 <- norm(diff_community_bsppre_p300_3blocks_n200_58, type="f")
norm_1_community_bsppre_p300_3blocks_n200_58 <- norm(diff_community_bsppre_p300_3blocks_n200_58, type="1")
norm_2_community_bsppre_p300_3blocks_n200_58 <- norm(diff_community_bsppre_p300_3blocks_n200_58, type="2")
norm_m_community_bsppre_p300_3blocks_n200_58 <- norm(diff_community_bsppre_p300_3blocks_n200_58, type="m")
diff_community_bsppre_p300_3blocks_n200_59 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_59
norm_f_community_bsppre_p300_3blocks_n200_59 <- norm(diff_community_bsppre_p300_3blocks_n200_59, type="f")
norm_1_community_bsppre_p300_3blocks_n200_59 <- norm(diff_community_bsppre_p300_3blocks_n200_59, type="1")
norm_2_community_bsppre_p300_3blocks_n200_59 <- norm(diff_community_bsppre_p300_3blocks_n200_59, type="2")
norm_m_community_bsppre_p300_3blocks_n200_59 <- norm(diff_community_bsppre_p300_3blocks_n200_59, type="m")
diff_community_bsppre_p300_3blocks_n200_60 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_60
norm_f_community_bsppre_p300_3blocks_n200_60 <- norm(diff_community_bsppre_p300_3blocks_n200_60, type="f")
norm_1_community_bsppre_p300_3blocks_n200_60 <- norm(diff_community_bsppre_p300_3blocks_n200_60, type="1")
norm_2_community_bsppre_p300_3blocks_n200_60 <- norm(diff_community_bsppre_p300_3blocks_n200_60, type="2")
norm_m_community_bsppre_p300_3blocks_n200_60 <- norm(diff_community_bsppre_p300_3blocks_n200_60, type="m")
diff_community_bsppre_p300_3blocks_n200_61 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_61
norm_f_community_bsppre_p300_3blocks_n200_61 <- norm(diff_community_bsppre_p300_3blocks_n200_61, type="f")
norm_1_community_bsppre_p300_3blocks_n200_61 <- norm(diff_community_bsppre_p300_3blocks_n200_61, type="1")
norm_2_community_bsppre_p300_3blocks_n200_61 <- norm(diff_community_bsppre_p300_3blocks_n200_61, type="2")
norm_m_community_bsppre_p300_3blocks_n200_61 <- norm(diff_community_bsppre_p300_3blocks_n200_61, type="m")
diff_community_bsppre_p300_3blocks_n200_62 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_62
norm_f_community_bsppre_p300_3blocks_n200_62 <- norm(diff_community_bsppre_p300_3blocks_n200_62, type="f")
norm_1_community_bsppre_p300_3blocks_n200_62 <- norm(diff_community_bsppre_p300_3blocks_n200_62, type="1")
norm_2_community_bsppre_p300_3blocks_n200_62 <- norm(diff_community_bsppre_p300_3blocks_n200_62, type="2")
norm_m_community_bsppre_p300_3blocks_n200_62 <- norm(diff_community_bsppre_p300_3blocks_n200_62, type="m")
diff_community_bsppre_p300_3blocks_n200_63 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_63
norm_f_community_bsppre_p300_3blocks_n200_63 <- norm(diff_community_bsppre_p300_3blocks_n200_63, type="f")
norm_1_community_bsppre_p300_3blocks_n200_63 <- norm(diff_community_bsppre_p300_3blocks_n200_63, type="1")
norm_2_community_bsppre_p300_3blocks_n200_63 <- norm(diff_community_bsppre_p300_3blocks_n200_63, type="2")
norm_m_community_bsppre_p300_3blocks_n200_63 <- norm(diff_community_bsppre_p300_3blocks_n200_63, type="m")
diff_community_bsppre_p300_3blocks_n200_64 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_64
norm_f_community_bsppre_p300_3blocks_n200_64 <- norm(diff_community_bsppre_p300_3blocks_n200_64, type="f")
norm_1_community_bsppre_p300_3blocks_n200_64 <- norm(diff_community_bsppre_p300_3blocks_n200_64, type="1")
norm_2_community_bsppre_p300_3blocks_n200_64 <- norm(diff_community_bsppre_p300_3blocks_n200_64, type="2")
norm_m_community_bsppre_p300_3blocks_n200_64 <- norm(diff_community_bsppre_p300_3blocks_n200_64, type="m")
diff_community_bsppre_p300_3blocks_n200_65 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_65
norm_f_community_bsppre_p300_3blocks_n200_65 <- norm(diff_community_bsppre_p300_3blocks_n200_65, type="f")
norm_1_community_bsppre_p300_3blocks_n200_65 <- norm(diff_community_bsppre_p300_3blocks_n200_65, type="1")
norm_2_community_bsppre_p300_3blocks_n200_65 <- norm(diff_community_bsppre_p300_3blocks_n200_65, type="2")
norm_m_community_bsppre_p300_3blocks_n200_65 <- norm(diff_community_bsppre_p300_3blocks_n200_65, type="m")
diff_community_bsppre_p300_3blocks_n200_66 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_66
norm_f_community_bsppre_p300_3blocks_n200_66 <- norm(diff_community_bsppre_p300_3blocks_n200_66, type="f")
norm_1_community_bsppre_p300_3blocks_n200_66 <- norm(diff_community_bsppre_p300_3blocks_n200_66, type="1")
norm_2_community_bsppre_p300_3blocks_n200_66 <- norm(diff_community_bsppre_p300_3blocks_n200_66, type="2")
norm_m_community_bsppre_p300_3blocks_n200_66 <- norm(diff_community_bsppre_p300_3blocks_n200_66, type="m")
diff_community_bsppre_p300_3blocks_n200_67 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_67
norm_f_community_bsppre_p300_3blocks_n200_67 <- norm(diff_community_bsppre_p300_3blocks_n200_67, type="f")
norm_1_community_bsppre_p300_3blocks_n200_67 <- norm(diff_community_bsppre_p300_3blocks_n200_67, type="1")
norm_2_community_bsppre_p300_3blocks_n200_67 <- norm(diff_community_bsppre_p300_3blocks_n200_67, type="2")
norm_m_community_bsppre_p300_3blocks_n200_67 <- norm(diff_community_bsppre_p300_3blocks_n200_67, type="m")
diff_community_bsppre_p300_3blocks_n200_68 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_68
norm_f_community_bsppre_p300_3blocks_n200_68 <- norm(diff_community_bsppre_p300_3blocks_n200_68, type="f")
norm_1_community_bsppre_p300_3blocks_n200_68 <- norm(diff_community_bsppre_p300_3blocks_n200_68, type="1")
norm_2_community_bsppre_p300_3blocks_n200_68 <- norm(diff_community_bsppre_p300_3blocks_n200_68, type="2")
norm_m_community_bsppre_p300_3blocks_n200_68 <- norm(diff_community_bsppre_p300_3blocks_n200_68, type="m")
diff_community_bsppre_p300_3blocks_n200_69 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_69
norm_f_community_bsppre_p300_3blocks_n200_69 <- norm(diff_community_bsppre_p300_3blocks_n200_69, type="f")
norm_1_community_bsppre_p300_3blocks_n200_69 <- norm(diff_community_bsppre_p300_3blocks_n200_69, type="1")
norm_2_community_bsppre_p300_3blocks_n200_69 <- norm(diff_community_bsppre_p300_3blocks_n200_69, type="2")
norm_m_community_bsppre_p300_3blocks_n200_69 <- norm(diff_community_bsppre_p300_3blocks_n200_69, type="m")
diff_community_bsppre_p300_3blocks_n200_70 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_70
norm_f_community_bsppre_p300_3blocks_n200_70 <- norm(diff_community_bsppre_p300_3blocks_n200_70, type="f")
norm_1_community_bsppre_p300_3blocks_n200_70 <- norm(diff_community_bsppre_p300_3blocks_n200_70, type="1")
norm_2_community_bsppre_p300_3blocks_n200_70 <- norm(diff_community_bsppre_p300_3blocks_n200_70, type="2")
norm_m_community_bsppre_p300_3blocks_n200_70 <- norm(diff_community_bsppre_p300_3blocks_n200_70, type="m")
diff_community_bsppre_p300_3blocks_n200_71 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_71
norm_f_community_bsppre_p300_3blocks_n200_71 <- norm(diff_community_bsppre_p300_3blocks_n200_71, type="f")
norm_1_community_bsppre_p300_3blocks_n200_71 <- norm(diff_community_bsppre_p300_3blocks_n200_71, type="1")
norm_2_community_bsppre_p300_3blocks_n200_71 <- norm(diff_community_bsppre_p300_3blocks_n200_71, type="2")
norm_m_community_bsppre_p300_3blocks_n200_71 <- norm(diff_community_bsppre_p300_3blocks_n200_71, type="m")
diff_community_bsppre_p300_3blocks_n200_72 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_72
norm_f_community_bsppre_p300_3blocks_n200_72 <- norm(diff_community_bsppre_p300_3blocks_n200_72, type="f")
norm_1_community_bsppre_p300_3blocks_n200_72 <- norm(diff_community_bsppre_p300_3blocks_n200_72, type="1")
norm_2_community_bsppre_p300_3blocks_n200_72 <- norm(diff_community_bsppre_p300_3blocks_n200_72, type="2")
norm_m_community_bsppre_p300_3blocks_n200_72 <- norm(diff_community_bsppre_p300_3blocks_n200_72, type="m")
diff_community_bsppre_p300_3blocks_n200_73 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_73
norm_f_community_bsppre_p300_3blocks_n200_73 <- norm(diff_community_bsppre_p300_3blocks_n200_73, type="f")
norm_1_community_bsppre_p300_3blocks_n200_73 <- norm(diff_community_bsppre_p300_3blocks_n200_73, type="1")
norm_2_community_bsppre_p300_3blocks_n200_73 <- norm(diff_community_bsppre_p300_3blocks_n200_73, type="2")
norm_m_community_bsppre_p300_3blocks_n200_73 <- norm(diff_community_bsppre_p300_3blocks_n200_73, type="m")
diff_community_bsppre_p300_3blocks_n200_74 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_74
norm_f_community_bsppre_p300_3blocks_n200_74 <- norm(diff_community_bsppre_p300_3blocks_n200_74, type="f")
norm_1_community_bsppre_p300_3blocks_n200_74 <- norm(diff_community_bsppre_p300_3blocks_n200_74, type="1")
norm_2_community_bsppre_p300_3blocks_n200_74 <- norm(diff_community_bsppre_p300_3blocks_n200_74, type="2")
norm_m_community_bsppre_p300_3blocks_n200_74 <- norm(diff_community_bsppre_p300_3blocks_n200_74, type="m")
diff_community_bsppre_p300_3blocks_n200_75 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_75
norm_f_community_bsppre_p300_3blocks_n200_75 <- norm(diff_community_bsppre_p300_3blocks_n200_75, type="f")
norm_1_community_bsppre_p300_3blocks_n200_75 <- norm(diff_community_bsppre_p300_3blocks_n200_75, type="1")
norm_2_community_bsppre_p300_3blocks_n200_75 <- norm(diff_community_bsppre_p300_3blocks_n200_75, type="2")
norm_m_community_bsppre_p300_3blocks_n200_75 <- norm(diff_community_bsppre_p300_3blocks_n200_75, type="m")
diff_community_bsppre_p300_3blocks_n200_76 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_76
norm_f_community_bsppre_p300_3blocks_n200_76 <- norm(diff_community_bsppre_p300_3blocks_n200_76, type="f")
norm_1_community_bsppre_p300_3blocks_n200_76 <- norm(diff_community_bsppre_p300_3blocks_n200_76, type="1")
norm_2_community_bsppre_p300_3blocks_n200_76 <- norm(diff_community_bsppre_p300_3blocks_n200_76, type="2")
norm_m_community_bsppre_p300_3blocks_n200_76 <- norm(diff_community_bsppre_p300_3blocks_n200_76, type="m")
diff_community_bsppre_p300_3blocks_n200_77 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_77
norm_f_community_bsppre_p300_3blocks_n200_77 <- norm(diff_community_bsppre_p300_3blocks_n200_77, type="f")
norm_1_community_bsppre_p300_3blocks_n200_77 <- norm(diff_community_bsppre_p300_3blocks_n200_77, type="1")
norm_2_community_bsppre_p300_3blocks_n200_77 <- norm(diff_community_bsppre_p300_3blocks_n200_77, type="2")
norm_m_community_bsppre_p300_3blocks_n200_77 <- norm(diff_community_bsppre_p300_3blocks_n200_77, type="m")
diff_community_bsppre_p300_3blocks_n200_78 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_78
norm_f_community_bsppre_p300_3blocks_n200_78 <- norm(diff_community_bsppre_p300_3blocks_n200_78, type="f")
norm_1_community_bsppre_p300_3blocks_n200_78 <- norm(diff_community_bsppre_p300_3blocks_n200_78, type="1")
norm_2_community_bsppre_p300_3blocks_n200_78 <- norm(diff_community_bsppre_p300_3blocks_n200_78, type="2")
norm_m_community_bsppre_p300_3blocks_n200_78 <- norm(diff_community_bsppre_p300_3blocks_n200_78, type="m")
diff_community_bsppre_p300_3blocks_n200_79 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_79
norm_f_community_bsppre_p300_3blocks_n200_79 <- norm(diff_community_bsppre_p300_3blocks_n200_79, type="f")
norm_1_community_bsppre_p300_3blocks_n200_79 <- norm(diff_community_bsppre_p300_3blocks_n200_79, type="1")
norm_2_community_bsppre_p300_3blocks_n200_79 <- norm(diff_community_bsppre_p300_3blocks_n200_79, type="2")
norm_m_community_bsppre_p300_3blocks_n200_79 <- norm(diff_community_bsppre_p300_3blocks_n200_79, type="m")
diff_community_bsppre_p300_3blocks_n200_80 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_80
norm_f_community_bsppre_p300_3blocks_n200_80 <- norm(diff_community_bsppre_p300_3blocks_n200_80, type="f")
norm_1_community_bsppre_p300_3blocks_n200_80 <- norm(diff_community_bsppre_p300_3blocks_n200_80, type="1")
norm_2_community_bsppre_p300_3blocks_n200_80 <- norm(diff_community_bsppre_p300_3blocks_n200_80, type="2")
norm_m_community_bsppre_p300_3blocks_n200_80 <- norm(diff_community_bsppre_p300_3blocks_n200_80, type="m")
diff_community_bsppre_p300_3blocks_n200_81 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_81
norm_f_community_bsppre_p300_3blocks_n200_81 <- norm(diff_community_bsppre_p300_3blocks_n200_81, type="f")
norm_1_community_bsppre_p300_3blocks_n200_81 <- norm(diff_community_bsppre_p300_3blocks_n200_81, type="1")
norm_2_community_bsppre_p300_3blocks_n200_81 <- norm(diff_community_bsppre_p300_3blocks_n200_81, type="2")
norm_m_community_bsppre_p300_3blocks_n200_81 <- norm(diff_community_bsppre_p300_3blocks_n200_81, type="m")
diff_community_bsppre_p300_3blocks_n200_82 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_82
norm_f_community_bsppre_p300_3blocks_n200_82 <- norm(diff_community_bsppre_p300_3blocks_n200_82, type="f")
norm_1_community_bsppre_p300_3blocks_n200_82 <- norm(diff_community_bsppre_p300_3blocks_n200_82, type="1")
norm_2_community_bsppre_p300_3blocks_n200_82 <- norm(diff_community_bsppre_p300_3blocks_n200_82, type="2")
norm_m_community_bsppre_p300_3blocks_n200_82 <- norm(diff_community_bsppre_p300_3blocks_n200_82, type="m")
diff_community_bsppre_p300_3blocks_n200_83 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_83
norm_f_community_bsppre_p300_3blocks_n200_83 <- norm(diff_community_bsppre_p300_3blocks_n200_83, type="f")
norm_1_community_bsppre_p300_3blocks_n200_83 <- norm(diff_community_bsppre_p300_3blocks_n200_83, type="1")
norm_2_community_bsppre_p300_3blocks_n200_83 <- norm(diff_community_bsppre_p300_3blocks_n200_83, type="2")
norm_m_community_bsppre_p300_3blocks_n200_83 <- norm(diff_community_bsppre_p300_3blocks_n200_83, type="m")
diff_community_bsppre_p300_3blocks_n200_84 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_84
norm_f_community_bsppre_p300_3blocks_n200_84 <- norm(diff_community_bsppre_p300_3blocks_n200_84, type="f")
norm_1_community_bsppre_p300_3blocks_n200_84 <- norm(diff_community_bsppre_p300_3blocks_n200_84, type="1")
norm_2_community_bsppre_p300_3blocks_n200_84 <- norm(diff_community_bsppre_p300_3blocks_n200_84, type="2")
norm_m_community_bsppre_p300_3blocks_n200_84 <- norm(diff_community_bsppre_p300_3blocks_n200_84, type="m")
diff_community_bsppre_p300_3blocks_n200_85 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_85
norm_f_community_bsppre_p300_3blocks_n200_85 <- norm(diff_community_bsppre_p300_3blocks_n200_85, type="f")
norm_1_community_bsppre_p300_3blocks_n200_85 <- norm(diff_community_bsppre_p300_3blocks_n200_85, type="1")
norm_2_community_bsppre_p300_3blocks_n200_85 <- norm(diff_community_bsppre_p300_3blocks_n200_85, type="2")
norm_m_community_bsppre_p300_3blocks_n200_85 <- norm(diff_community_bsppre_p300_3blocks_n200_85, type="m")
diff_community_bsppre_p300_3blocks_n200_86 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_86
norm_f_community_bsppre_p300_3blocks_n200_86 <- norm(diff_community_bsppre_p300_3blocks_n200_86, type="f")
norm_1_community_bsppre_p300_3blocks_n200_86 <- norm(diff_community_bsppre_p300_3blocks_n200_86, type="1")
norm_2_community_bsppre_p300_3blocks_n200_86 <- norm(diff_community_bsppre_p300_3blocks_n200_86, type="2")
norm_m_community_bsppre_p300_3blocks_n200_86 <- norm(diff_community_bsppre_p300_3blocks_n200_86, type="m")
diff_community_bsppre_p300_3blocks_n200_87 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_87
norm_f_community_bsppre_p300_3blocks_n200_87 <- norm(diff_community_bsppre_p300_3blocks_n200_87, type="f")
norm_1_community_bsppre_p300_3blocks_n200_87 <- norm(diff_community_bsppre_p300_3blocks_n200_87, type="1")
norm_2_community_bsppre_p300_3blocks_n200_87 <- norm(diff_community_bsppre_p300_3blocks_n200_87, type="2")
norm_m_community_bsppre_p300_3blocks_n200_87 <- norm(diff_community_bsppre_p300_3blocks_n200_87, type="m")
diff_community_bsppre_p300_3blocks_n200_88 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_88
norm_f_community_bsppre_p300_3blocks_n200_88 <- norm(diff_community_bsppre_p300_3blocks_n200_88, type="f")
norm_1_community_bsppre_p300_3blocks_n200_88 <- norm(diff_community_bsppre_p300_3blocks_n200_88, type="1")
norm_2_community_bsppre_p300_3blocks_n200_88 <- norm(diff_community_bsppre_p300_3blocks_n200_88, type="2")
norm_m_community_bsppre_p300_3blocks_n200_88 <- norm(diff_community_bsppre_p300_3blocks_n200_88, type="m")
diff_community_bsppre_p300_3blocks_n200_89 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_89
norm_f_community_bsppre_p300_3blocks_n200_89 <- norm(diff_community_bsppre_p300_3blocks_n200_89, type="f")
norm_1_community_bsppre_p300_3blocks_n200_89 <- norm(diff_community_bsppre_p300_3blocks_n200_89, type="1")
norm_2_community_bsppre_p300_3blocks_n200_89 <- norm(diff_community_bsppre_p300_3blocks_n200_89, type="2")
norm_m_community_bsppre_p300_3blocks_n200_89 <- norm(diff_community_bsppre_p300_3blocks_n200_89, type="m")
diff_community_bsppre_p300_3blocks_n200_90 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_90
norm_f_community_bsppre_p300_3blocks_n200_90 <- norm(diff_community_bsppre_p300_3blocks_n200_90, type="f")
norm_1_community_bsppre_p300_3blocks_n200_90 <- norm(diff_community_bsppre_p300_3blocks_n200_90, type="1")
norm_2_community_bsppre_p300_3blocks_n200_90 <- norm(diff_community_bsppre_p300_3blocks_n200_90, type="2")
norm_m_community_bsppre_p300_3blocks_n200_90 <- norm(diff_community_bsppre_p300_3blocks_n200_90, type="m")
diff_community_bsppre_p300_3blocks_n200_91 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_91
norm_f_community_bsppre_p300_3blocks_n200_91 <- norm(diff_community_bsppre_p300_3blocks_n200_91, type="f")
norm_1_community_bsppre_p300_3blocks_n200_91 <- norm(diff_community_bsppre_p300_3blocks_n200_91, type="1")
norm_2_community_bsppre_p300_3blocks_n200_91 <- norm(diff_community_bsppre_p300_3blocks_n200_91, type="2")
norm_m_community_bsppre_p300_3blocks_n200_91 <- norm(diff_community_bsppre_p300_3blocks_n200_91, type="m")
diff_community_bsppre_p300_3blocks_n200_92 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_92
norm_f_community_bsppre_p300_3blocks_n200_92 <- norm(diff_community_bsppre_p300_3blocks_n200_92, type="f")
norm_1_community_bsppre_p300_3blocks_n200_92 <- norm(diff_community_bsppre_p300_3blocks_n200_92, type="1")
norm_2_community_bsppre_p300_3blocks_n200_92 <- norm(diff_community_bsppre_p300_3blocks_n200_92, type="2")
norm_m_community_bsppre_p300_3blocks_n200_92 <- norm(diff_community_bsppre_p300_3blocks_n200_92, type="m")
diff_community_bsppre_p300_3blocks_n200_93 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_93
norm_f_community_bsppre_p300_3blocks_n200_93 <- norm(diff_community_bsppre_p300_3blocks_n200_93, type="f")
norm_1_community_bsppre_p300_3blocks_n200_93 <- norm(diff_community_bsppre_p300_3blocks_n200_93, type="1")
norm_2_community_bsppre_p300_3blocks_n200_93 <- norm(diff_community_bsppre_p300_3blocks_n200_93, type="2")
norm_m_community_bsppre_p300_3blocks_n200_93 <- norm(diff_community_bsppre_p300_3blocks_n200_93, type="m")
diff_community_bsppre_p300_3blocks_n200_94 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_94
norm_f_community_bsppre_p300_3blocks_n200_94 <- norm(diff_community_bsppre_p300_3blocks_n200_94, type="f")
norm_1_community_bsppre_p300_3blocks_n200_94 <- norm(diff_community_bsppre_p300_3blocks_n200_94, type="1")
norm_2_community_bsppre_p300_3blocks_n200_94 <- norm(diff_community_bsppre_p300_3blocks_n200_94, type="2")
norm_m_community_bsppre_p300_3blocks_n200_94 <- norm(diff_community_bsppre_p300_3blocks_n200_94, type="m")
diff_community_bsppre_p300_3blocks_n200_95 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_95
norm_f_community_bsppre_p300_3blocks_n200_95 <- norm(diff_community_bsppre_p300_3blocks_n200_95, type="f")
norm_1_community_bsppre_p300_3blocks_n200_95 <- norm(diff_community_bsppre_p300_3blocks_n200_95, type="1")
norm_2_community_bsppre_p300_3blocks_n200_95 <- norm(diff_community_bsppre_p300_3blocks_n200_95, type="2")
norm_m_community_bsppre_p300_3blocks_n200_95 <- norm(diff_community_bsppre_p300_3blocks_n200_95, type="m")
diff_community_bsppre_p300_3blocks_n200_96 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_96
norm_f_community_bsppre_p300_3blocks_n200_96 <- norm(diff_community_bsppre_p300_3blocks_n200_96, type="f")
norm_1_community_bsppre_p300_3blocks_n200_96 <- norm(diff_community_bsppre_p300_3blocks_n200_96, type="1")
norm_2_community_bsppre_p300_3blocks_n200_96 <- norm(diff_community_bsppre_p300_3blocks_n200_96, type="2")
norm_m_community_bsppre_p300_3blocks_n200_96 <- norm(diff_community_bsppre_p300_3blocks_n200_96, type="m")
diff_community_bsppre_p300_3blocks_n200_97 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_97
norm_f_community_bsppre_p300_3blocks_n200_97 <- norm(diff_community_bsppre_p300_3blocks_n200_97, type="f")
norm_1_community_bsppre_p300_3blocks_n200_97 <- norm(diff_community_bsppre_p300_3blocks_n200_97, type="1")
norm_2_community_bsppre_p300_3blocks_n200_97 <- norm(diff_community_bsppre_p300_3blocks_n200_97, type="2")
norm_m_community_bsppre_p300_3blocks_n200_97 <- norm(diff_community_bsppre_p300_3blocks_n200_97, type="m")
diff_community_bsppre_p300_3blocks_n200_98 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_98
norm_f_community_bsppre_p300_3blocks_n200_98 <- norm(diff_community_bsppre_p300_3blocks_n200_98, type="f")
norm_1_community_bsppre_p300_3blocks_n200_98 <- norm(diff_community_bsppre_p300_3blocks_n200_98, type="1")
norm_2_community_bsppre_p300_3blocks_n200_98 <- norm(diff_community_bsppre_p300_3blocks_n200_98, type="2")
norm_m_community_bsppre_p300_3blocks_n200_98 <- norm(diff_community_bsppre_p300_3blocks_n200_98, type="m")
diff_community_bsppre_p300_3blocks_n200_99 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_99
norm_f_community_bsppre_p300_3blocks_n200_99 <- norm(diff_community_bsppre_p300_3blocks_n200_99, type="f")
norm_1_community_bsppre_p300_3blocks_n200_99 <- norm(diff_community_bsppre_p300_3blocks_n200_99, type="1")
norm_2_community_bsppre_p300_3blocks_n200_99 <- norm(diff_community_bsppre_p300_3blocks_n200_99, type="2")
norm_m_community_bsppre_p300_3blocks_n200_99 <- norm(diff_community_bsppre_p300_3blocks_n200_99, type="m")
diff_community_bsppre_p300_3blocks_n200_100 <- true_precision_p300_3blocks - estimated_p300_3blocks_n200_100
norm_f_community_bsppre_p300_3blocks_n200_100 <- norm(diff_community_bsppre_p300_3blocks_n200_100, type="f")
norm_1_community_bsppre_p300_3blocks_n200_100 <- norm(diff_community_bsppre_p300_3blocks_n200_100, type="1")
norm_2_community_bsppre_p300_3blocks_n200_100 <- norm(diff_community_bsppre_p300_3blocks_n200_100, type="2")
norm_m_community_bsppre_p300_3blocks_n200_100 <- norm(diff_community_bsppre_p300_3blocks_n200_100, type="m")


############################# f norm ################################
norm_f_community_bsppre_p300_3blocks_n200 <- c(
  norm_f_community_bsppre_p300_3blocks_n200_1,
  norm_f_community_bsppre_p300_3blocks_n200_2,
  norm_f_community_bsppre_p300_3blocks_n200_3,
  norm_f_community_bsppre_p300_3blocks_n200_4,
  norm_f_community_bsppre_p300_3blocks_n200_5,
  norm_f_community_bsppre_p300_3blocks_n200_6,
  norm_f_community_bsppre_p300_3blocks_n200_7,
  norm_f_community_bsppre_p300_3blocks_n200_8,
  norm_f_community_bsppre_p300_3blocks_n200_9,
  norm_f_community_bsppre_p300_3blocks_n200_10,
  norm_f_community_bsppre_p300_3blocks_n200_11,
  norm_f_community_bsppre_p300_3blocks_n200_12,
  norm_f_community_bsppre_p300_3blocks_n200_13,
  norm_f_community_bsppre_p300_3blocks_n200_14,
  norm_f_community_bsppre_p300_3blocks_n200_15,
  norm_f_community_bsppre_p300_3blocks_n200_16,
  norm_f_community_bsppre_p300_3blocks_n200_17,
  norm_f_community_bsppre_p300_3blocks_n200_18,
  norm_f_community_bsppre_p300_3blocks_n200_19,
  norm_f_community_bsppre_p300_3blocks_n200_20,
  norm_f_community_bsppre_p300_3blocks_n200_21,
  norm_f_community_bsppre_p300_3blocks_n200_22,
  norm_f_community_bsppre_p300_3blocks_n200_23,
  norm_f_community_bsppre_p300_3blocks_n200_24,
  norm_f_community_bsppre_p300_3blocks_n200_25,
  norm_f_community_bsppre_p300_3blocks_n200_26,
  norm_f_community_bsppre_p300_3blocks_n200_27,
  norm_f_community_bsppre_p300_3blocks_n200_28,
  norm_f_community_bsppre_p300_3blocks_n200_29,
  norm_f_community_bsppre_p300_3blocks_n200_30,
  norm_f_community_bsppre_p300_3blocks_n200_31,
  norm_f_community_bsppre_p300_3blocks_n200_32,
  norm_f_community_bsppre_p300_3blocks_n200_33,
  norm_f_community_bsppre_p300_3blocks_n200_34,
  norm_f_community_bsppre_p300_3blocks_n200_35,
  norm_f_community_bsppre_p300_3blocks_n200_36,
  norm_f_community_bsppre_p300_3blocks_n200_37,
  norm_f_community_bsppre_p300_3blocks_n200_38,
  norm_f_community_bsppre_p300_3blocks_n200_39,
  norm_f_community_bsppre_p300_3blocks_n200_40,
  norm_f_community_bsppre_p300_3blocks_n200_41,
  norm_f_community_bsppre_p300_3blocks_n200_42,
  norm_f_community_bsppre_p300_3blocks_n200_43,
  norm_f_community_bsppre_p300_3blocks_n200_44,
  norm_f_community_bsppre_p300_3blocks_n200_45,
  norm_f_community_bsppre_p300_3blocks_n200_46,
  norm_f_community_bsppre_p300_3blocks_n200_47,
  norm_f_community_bsppre_p300_3blocks_n200_48,
  norm_f_community_bsppre_p300_3blocks_n200_49,
  norm_f_community_bsppre_p300_3blocks_n200_50,
  norm_f_community_bsppre_p300_3blocks_n200_51,
  norm_f_community_bsppre_p300_3blocks_n200_52,
  norm_f_community_bsppre_p300_3blocks_n200_53,
  norm_f_community_bsppre_p300_3blocks_n200_54,
  norm_f_community_bsppre_p300_3blocks_n200_55,
  norm_f_community_bsppre_p300_3blocks_n200_56,
  norm_f_community_bsppre_p300_3blocks_n200_57,
  norm_f_community_bsppre_p300_3blocks_n200_58,
  norm_f_community_bsppre_p300_3blocks_n200_59,
  norm_f_community_bsppre_p300_3blocks_n200_60,
  norm_f_community_bsppre_p300_3blocks_n200_61,
  norm_f_community_bsppre_p300_3blocks_n200_62,
  norm_f_community_bsppre_p300_3blocks_n200_63,
  norm_f_community_bsppre_p300_3blocks_n200_64,
  norm_f_community_bsppre_p300_3blocks_n200_65,
  norm_f_community_bsppre_p300_3blocks_n200_66,
  norm_f_community_bsppre_p300_3blocks_n200_67,
  norm_f_community_bsppre_p300_3blocks_n200_68,
  norm_f_community_bsppre_p300_3blocks_n200_69,
  norm_f_community_bsppre_p300_3blocks_n200_70,
  norm_f_community_bsppre_p300_3blocks_n200_71,
  norm_f_community_bsppre_p300_3blocks_n200_72,
  norm_f_community_bsppre_p300_3blocks_n200_73,
  norm_f_community_bsppre_p300_3blocks_n200_74,
  norm_f_community_bsppre_p300_3blocks_n200_75,
  norm_f_community_bsppre_p300_3blocks_n200_76,
  norm_f_community_bsppre_p300_3blocks_n200_77,
  norm_f_community_bsppre_p300_3blocks_n200_78,
  norm_f_community_bsppre_p300_3blocks_n200_79,
  norm_f_community_bsppre_p300_3blocks_n200_80,
  norm_f_community_bsppre_p300_3blocks_n200_81,
  norm_f_community_bsppre_p300_3blocks_n200_82,
  norm_f_community_bsppre_p300_3blocks_n200_83,
  norm_f_community_bsppre_p300_3blocks_n200_84,
  norm_f_community_bsppre_p300_3blocks_n200_85,
  norm_f_community_bsppre_p300_3blocks_n200_86,
  norm_f_community_bsppre_p300_3blocks_n200_87,
  norm_f_community_bsppre_p300_3blocks_n200_88,
  norm_f_community_bsppre_p300_3blocks_n200_89,
  norm_f_community_bsppre_p300_3blocks_n200_90,
  norm_f_community_bsppre_p300_3blocks_n200_91,
  norm_f_community_bsppre_p300_3blocks_n200_92,
  norm_f_community_bsppre_p300_3blocks_n200_93,
  norm_f_community_bsppre_p300_3blocks_n200_94,
  norm_f_community_bsppre_p300_3blocks_n200_95,
  norm_f_community_bsppre_p300_3blocks_n200_96,
  norm_f_community_bsppre_p300_3blocks_n200_97,
  norm_f_community_bsppre_p300_3blocks_n200_98,
  norm_f_community_bsppre_p300_3blocks_n200_99,
  norm_f_community_bsppre_p300_3blocks_n200_100
)


mean_norm_f_community_bsppre_p300_3blocks_n200 <- mean(norm_f_community_bsppre_p300_3blocks_n200)
sd_norm_f_community_bsppre_p300_3blocks_n200 <- sd(norm_f_community_bsppre_p300_3blocks_n200)


################## 1 norm ##########################
norm_1_community_bsppre_p300_3blocks_n200 <- c(
  norm_1_community_bsppre_p300_3blocks_n200_1,
  norm_1_community_bsppre_p300_3blocks_n200_2,
  norm_1_community_bsppre_p300_3blocks_n200_3,
  norm_1_community_bsppre_p300_3blocks_n200_4,
  norm_1_community_bsppre_p300_3blocks_n200_5,
  norm_1_community_bsppre_p300_3blocks_n200_6,
  norm_1_community_bsppre_p300_3blocks_n200_7,
  norm_1_community_bsppre_p300_3blocks_n200_8,
  norm_1_community_bsppre_p300_3blocks_n200_9,
  norm_1_community_bsppre_p300_3blocks_n200_10,
  norm_1_community_bsppre_p300_3blocks_n200_11,
  norm_1_community_bsppre_p300_3blocks_n200_12,
  norm_1_community_bsppre_p300_3blocks_n200_13,
  norm_1_community_bsppre_p300_3blocks_n200_14,
  norm_1_community_bsppre_p300_3blocks_n200_15,
  norm_1_community_bsppre_p300_3blocks_n200_16,
  norm_1_community_bsppre_p300_3blocks_n200_17,
  norm_1_community_bsppre_p300_3blocks_n200_18,
  norm_1_community_bsppre_p300_3blocks_n200_19,
  norm_1_community_bsppre_p300_3blocks_n200_20,
  norm_1_community_bsppre_p300_3blocks_n200_21,
  norm_1_community_bsppre_p300_3blocks_n200_22,
  norm_1_community_bsppre_p300_3blocks_n200_23,
  norm_1_community_bsppre_p300_3blocks_n200_24,
  norm_1_community_bsppre_p300_3blocks_n200_25,
  norm_1_community_bsppre_p300_3blocks_n200_26,
  norm_1_community_bsppre_p300_3blocks_n200_27,
  norm_1_community_bsppre_p300_3blocks_n200_28,
  norm_1_community_bsppre_p300_3blocks_n200_29,
  norm_1_community_bsppre_p300_3blocks_n200_30,
  norm_1_community_bsppre_p300_3blocks_n200_31,
  norm_1_community_bsppre_p300_3blocks_n200_32,
  norm_1_community_bsppre_p300_3blocks_n200_33,
  norm_1_community_bsppre_p300_3blocks_n200_34,
  norm_1_community_bsppre_p300_3blocks_n200_35,
  norm_1_community_bsppre_p300_3blocks_n200_36,
  norm_1_community_bsppre_p300_3blocks_n200_37,
  norm_1_community_bsppre_p300_3blocks_n200_38,
  norm_1_community_bsppre_p300_3blocks_n200_39,
  norm_1_community_bsppre_p300_3blocks_n200_40,
  norm_1_community_bsppre_p300_3blocks_n200_41,
  norm_1_community_bsppre_p300_3blocks_n200_42,
  norm_1_community_bsppre_p300_3blocks_n200_43,
  norm_1_community_bsppre_p300_3blocks_n200_44,
  norm_1_community_bsppre_p300_3blocks_n200_45,
  norm_1_community_bsppre_p300_3blocks_n200_46,
  norm_1_community_bsppre_p300_3blocks_n200_47,
  norm_1_community_bsppre_p300_3blocks_n200_48,
  norm_1_community_bsppre_p300_3blocks_n200_49,
  norm_1_community_bsppre_p300_3blocks_n200_50,
  norm_1_community_bsppre_p300_3blocks_n200_51,
  norm_1_community_bsppre_p300_3blocks_n200_52,
  norm_1_community_bsppre_p300_3blocks_n200_53,
  norm_1_community_bsppre_p300_3blocks_n200_54,
  norm_1_community_bsppre_p300_3blocks_n200_55,
  norm_1_community_bsppre_p300_3blocks_n200_56,
  norm_1_community_bsppre_p300_3blocks_n200_57,
  norm_1_community_bsppre_p300_3blocks_n200_58,
  norm_1_community_bsppre_p300_3blocks_n200_59,
  norm_1_community_bsppre_p300_3blocks_n200_60,
  norm_1_community_bsppre_p300_3blocks_n200_61,
  norm_1_community_bsppre_p300_3blocks_n200_62,
  norm_1_community_bsppre_p300_3blocks_n200_63,
  norm_1_community_bsppre_p300_3blocks_n200_64,
  norm_1_community_bsppre_p300_3blocks_n200_65,
  norm_1_community_bsppre_p300_3blocks_n200_66,
  norm_1_community_bsppre_p300_3blocks_n200_67,
  norm_1_community_bsppre_p300_3blocks_n200_68,
  norm_1_community_bsppre_p300_3blocks_n200_69,
  norm_1_community_bsppre_p300_3blocks_n200_70,
  norm_1_community_bsppre_p300_3blocks_n200_71,
  norm_1_community_bsppre_p300_3blocks_n200_72,
  norm_1_community_bsppre_p300_3blocks_n200_73,
  norm_1_community_bsppre_p300_3blocks_n200_74,
  norm_1_community_bsppre_p300_3blocks_n200_75,
  norm_1_community_bsppre_p300_3blocks_n200_76,
  norm_1_community_bsppre_p300_3blocks_n200_77,
  norm_1_community_bsppre_p300_3blocks_n200_78,
  norm_1_community_bsppre_p300_3blocks_n200_79,
  norm_1_community_bsppre_p300_3blocks_n200_80,
  norm_1_community_bsppre_p300_3blocks_n200_81,
  norm_1_community_bsppre_p300_3blocks_n200_82,
  norm_1_community_bsppre_p300_3blocks_n200_83,
  norm_1_community_bsppre_p300_3blocks_n200_84,
  norm_1_community_bsppre_p300_3blocks_n200_85,
  norm_1_community_bsppre_p300_3blocks_n200_86,
  norm_1_community_bsppre_p300_3blocks_n200_87,
  norm_1_community_bsppre_p300_3blocks_n200_88,
  norm_1_community_bsppre_p300_3blocks_n200_89,
  norm_1_community_bsppre_p300_3blocks_n200_90,
  norm_1_community_bsppre_p300_3blocks_n200_91,
  norm_1_community_bsppre_p300_3blocks_n200_92,
  norm_1_community_bsppre_p300_3blocks_n200_93,
  norm_1_community_bsppre_p300_3blocks_n200_94,
  norm_1_community_bsppre_p300_3blocks_n200_95,
  norm_1_community_bsppre_p300_3blocks_n200_96,
  norm_1_community_bsppre_p300_3blocks_n200_97,
  norm_1_community_bsppre_p300_3blocks_n200_98,
  norm_1_community_bsppre_p300_3blocks_n200_99,
  norm_1_community_bsppre_p300_3blocks_n200_100
)

mean_norm_1_community_bsppre_p300_3blocks_n200 <- mean(norm_1_community_bsppre_p300_3blocks_n200)
sd_norm_1_community_bsppre_p300_3blocks_n200 <- sd(norm_1_community_bsppre_p300_3blocks_n200)


###################### 2 norm #########################
norm_2_community_bsppre_p300_3blocks_n200 <- c(
  norm_2_community_bsppre_p300_3blocks_n200_1,
  norm_2_community_bsppre_p300_3blocks_n200_2,
  norm_2_community_bsppre_p300_3blocks_n200_3,
  norm_2_community_bsppre_p300_3blocks_n200_4,
  norm_2_community_bsppre_p300_3blocks_n200_5,
  norm_2_community_bsppre_p300_3blocks_n200_6,
  norm_2_community_bsppre_p300_3blocks_n200_7,
  norm_2_community_bsppre_p300_3blocks_n200_8,
  norm_2_community_bsppre_p300_3blocks_n200_9,
  norm_2_community_bsppre_p300_3blocks_n200_10,
  norm_2_community_bsppre_p300_3blocks_n200_11,
  norm_2_community_bsppre_p300_3blocks_n200_12,
  norm_2_community_bsppre_p300_3blocks_n200_13,
  norm_2_community_bsppre_p300_3blocks_n200_14,
  norm_2_community_bsppre_p300_3blocks_n200_15,
  norm_2_community_bsppre_p300_3blocks_n200_16,
  norm_2_community_bsppre_p300_3blocks_n200_17,
  norm_2_community_bsppre_p300_3blocks_n200_18,
  norm_2_community_bsppre_p300_3blocks_n200_19,
  norm_2_community_bsppre_p300_3blocks_n200_20,
  norm_2_community_bsppre_p300_3blocks_n200_21,
  norm_2_community_bsppre_p300_3blocks_n200_22,
  norm_2_community_bsppre_p300_3blocks_n200_23,
  norm_2_community_bsppre_p300_3blocks_n200_24,
  norm_2_community_bsppre_p300_3blocks_n200_25,
  norm_2_community_bsppre_p300_3blocks_n200_26,
  norm_2_community_bsppre_p300_3blocks_n200_27,
  norm_2_community_bsppre_p300_3blocks_n200_28,
  norm_2_community_bsppre_p300_3blocks_n200_29,
  norm_2_community_bsppre_p300_3blocks_n200_30,
  norm_2_community_bsppre_p300_3blocks_n200_31,
  norm_2_community_bsppre_p300_3blocks_n200_32,
  norm_2_community_bsppre_p300_3blocks_n200_33,
  norm_2_community_bsppre_p300_3blocks_n200_34,
  norm_2_community_bsppre_p300_3blocks_n200_35,
  norm_2_community_bsppre_p300_3blocks_n200_36,
  norm_2_community_bsppre_p300_3blocks_n200_37,
  norm_2_community_bsppre_p300_3blocks_n200_38,
  norm_2_community_bsppre_p300_3blocks_n200_39,
  norm_2_community_bsppre_p300_3blocks_n200_40,
  norm_2_community_bsppre_p300_3blocks_n200_41,
  norm_2_community_bsppre_p300_3blocks_n200_42,
  norm_2_community_bsppre_p300_3blocks_n200_43,
  norm_2_community_bsppre_p300_3blocks_n200_44,
  norm_2_community_bsppre_p300_3blocks_n200_45,
  norm_2_community_bsppre_p300_3blocks_n200_46,
  norm_2_community_bsppre_p300_3blocks_n200_47,
  norm_2_community_bsppre_p300_3blocks_n200_48,
  norm_2_community_bsppre_p300_3blocks_n200_49,
  norm_2_community_bsppre_p300_3blocks_n200_50,
  norm_2_community_bsppre_p300_3blocks_n200_51,
  norm_2_community_bsppre_p300_3blocks_n200_52,
  norm_2_community_bsppre_p300_3blocks_n200_53,
  norm_2_community_bsppre_p300_3blocks_n200_54,
  norm_2_community_bsppre_p300_3blocks_n200_55,
  norm_2_community_bsppre_p300_3blocks_n200_56,
  norm_2_community_bsppre_p300_3blocks_n200_57,
  norm_2_community_bsppre_p300_3blocks_n200_58,
  norm_2_community_bsppre_p300_3blocks_n200_59,
  norm_2_community_bsppre_p300_3blocks_n200_60,
  norm_2_community_bsppre_p300_3blocks_n200_61,
  norm_2_community_bsppre_p300_3blocks_n200_62,
  norm_2_community_bsppre_p300_3blocks_n200_63,
  norm_2_community_bsppre_p300_3blocks_n200_64,
  norm_2_community_bsppre_p300_3blocks_n200_65,
  norm_2_community_bsppre_p300_3blocks_n200_66,
  norm_2_community_bsppre_p300_3blocks_n200_67,
  norm_2_community_bsppre_p300_3blocks_n200_68,
  norm_2_community_bsppre_p300_3blocks_n200_69,
  norm_2_community_bsppre_p300_3blocks_n200_70,
  norm_2_community_bsppre_p300_3blocks_n200_71,
  norm_2_community_bsppre_p300_3blocks_n200_72,
  norm_2_community_bsppre_p300_3blocks_n200_73,
  norm_2_community_bsppre_p300_3blocks_n200_74,
  norm_2_community_bsppre_p300_3blocks_n200_75,
  norm_2_community_bsppre_p300_3blocks_n200_76,
  norm_2_community_bsppre_p300_3blocks_n200_77,
  norm_2_community_bsppre_p300_3blocks_n200_78,
  norm_2_community_bsppre_p300_3blocks_n200_79,
  norm_2_community_bsppre_p300_3blocks_n200_80,
  norm_2_community_bsppre_p300_3blocks_n200_81,
  norm_2_community_bsppre_p300_3blocks_n200_82,
  norm_2_community_bsppre_p300_3blocks_n200_83,
  norm_2_community_bsppre_p300_3blocks_n200_84,
  norm_2_community_bsppre_p300_3blocks_n200_85,
  norm_2_community_bsppre_p300_3blocks_n200_86,
  norm_2_community_bsppre_p300_3blocks_n200_87,
  norm_2_community_bsppre_p300_3blocks_n200_88,
  norm_2_community_bsppre_p300_3blocks_n200_89,
  norm_2_community_bsppre_p300_3blocks_n200_90,
  norm_2_community_bsppre_p300_3blocks_n200_91,
  norm_2_community_bsppre_p300_3blocks_n200_92,
  norm_2_community_bsppre_p300_3blocks_n200_93,
  norm_2_community_bsppre_p300_3blocks_n200_94,
  norm_2_community_bsppre_p300_3blocks_n200_95,
  norm_2_community_bsppre_p300_3blocks_n200_96,
  norm_2_community_bsppre_p300_3blocks_n200_97,
  norm_2_community_bsppre_p300_3blocks_n200_98,
  norm_2_community_bsppre_p300_3blocks_n200_99,
  norm_2_community_bsppre_p300_3blocks_n200_100
)

mean_norm_2_community_bsppre_p300_3blocks_n200 <- mean(norm_2_community_bsppre_p300_3blocks_n200)
sd_norm_2_community_bsppre_p300_3blocks_n200 <- sd(norm_2_community_bsppre_p300_3blocks_n200)


################### m norm #######################
norm_m_community_bsppre_p300_3blocks_n200 <- c(
  norm_m_community_bsppre_p300_3blocks_n200_1,
  norm_m_community_bsppre_p300_3blocks_n200_2,
  norm_m_community_bsppre_p300_3blocks_n200_3,
  norm_m_community_bsppre_p300_3blocks_n200_4,
  norm_m_community_bsppre_p300_3blocks_n200_5,
  norm_m_community_bsppre_p300_3blocks_n200_6,
  norm_m_community_bsppre_p300_3blocks_n200_7,
  norm_m_community_bsppre_p300_3blocks_n200_8,
  norm_m_community_bsppre_p300_3blocks_n200_9,
  norm_m_community_bsppre_p300_3blocks_n200_10,
  norm_m_community_bsppre_p300_3blocks_n200_11,
  norm_m_community_bsppre_p300_3blocks_n200_12,
  norm_m_community_bsppre_p300_3blocks_n200_13,
  norm_m_community_bsppre_p300_3blocks_n200_14,
  norm_m_community_bsppre_p300_3blocks_n200_15,
  norm_m_community_bsppre_p300_3blocks_n200_16,
  norm_m_community_bsppre_p300_3blocks_n200_17,
  norm_m_community_bsppre_p300_3blocks_n200_18,
  norm_m_community_bsppre_p300_3blocks_n200_19,
  norm_m_community_bsppre_p300_3blocks_n200_20,
  norm_m_community_bsppre_p300_3blocks_n200_21,
  norm_m_community_bsppre_p300_3blocks_n200_22,
  norm_m_community_bsppre_p300_3blocks_n200_23,
  norm_m_community_bsppre_p300_3blocks_n200_24,
  norm_m_community_bsppre_p300_3blocks_n200_25,
  norm_m_community_bsppre_p300_3blocks_n200_26,
  norm_m_community_bsppre_p300_3blocks_n200_27,
  norm_m_community_bsppre_p300_3blocks_n200_28,
  norm_m_community_bsppre_p300_3blocks_n200_29,
  norm_m_community_bsppre_p300_3blocks_n200_30,
  norm_m_community_bsppre_p300_3blocks_n200_31,
  norm_m_community_bsppre_p300_3blocks_n200_32,
  norm_m_community_bsppre_p300_3blocks_n200_33,
  norm_m_community_bsppre_p300_3blocks_n200_34,
  norm_m_community_bsppre_p300_3blocks_n200_35,
  norm_m_community_bsppre_p300_3blocks_n200_36,
  norm_m_community_bsppre_p300_3blocks_n200_37,
  norm_m_community_bsppre_p300_3blocks_n200_38,
  norm_m_community_bsppre_p300_3blocks_n200_39,
  norm_m_community_bsppre_p300_3blocks_n200_40,
  norm_m_community_bsppre_p300_3blocks_n200_41,
  norm_m_community_bsppre_p300_3blocks_n200_42,
  norm_m_community_bsppre_p300_3blocks_n200_43,
  norm_m_community_bsppre_p300_3blocks_n200_44,
  norm_m_community_bsppre_p300_3blocks_n200_45,
  norm_m_community_bsppre_p300_3blocks_n200_46,
  norm_m_community_bsppre_p300_3blocks_n200_47,
  norm_m_community_bsppre_p300_3blocks_n200_48,
  norm_m_community_bsppre_p300_3blocks_n200_49,
  norm_m_community_bsppre_p300_3blocks_n200_50,
  norm_m_community_bsppre_p300_3blocks_n200_51,
  norm_m_community_bsppre_p300_3blocks_n200_52,
  norm_m_community_bsppre_p300_3blocks_n200_53,
  norm_m_community_bsppre_p300_3blocks_n200_54,
  norm_m_community_bsppre_p300_3blocks_n200_55,
  norm_m_community_bsppre_p300_3blocks_n200_56,
  norm_m_community_bsppre_p300_3blocks_n200_57,
  norm_m_community_bsppre_p300_3blocks_n200_58,
  norm_m_community_bsppre_p300_3blocks_n200_59,
  norm_m_community_bsppre_p300_3blocks_n200_60,
  norm_m_community_bsppre_p300_3blocks_n200_61,
  norm_m_community_bsppre_p300_3blocks_n200_62,
  norm_m_community_bsppre_p300_3blocks_n200_63,
  norm_m_community_bsppre_p300_3blocks_n200_64,
  norm_m_community_bsppre_p300_3blocks_n200_65,
  norm_m_community_bsppre_p300_3blocks_n200_66,
  norm_m_community_bsppre_p300_3blocks_n200_67,
  norm_m_community_bsppre_p300_3blocks_n200_68,
  norm_m_community_bsppre_p300_3blocks_n200_69,
  norm_m_community_bsppre_p300_3blocks_n200_70,
  norm_m_community_bsppre_p300_3blocks_n200_71,
  norm_m_community_bsppre_p300_3blocks_n200_72,
  norm_m_community_bsppre_p300_3blocks_n200_73,
  norm_m_community_bsppre_p300_3blocks_n200_74,
  norm_m_community_bsppre_p300_3blocks_n200_75,
  norm_m_community_bsppre_p300_3blocks_n200_76,
  norm_m_community_bsppre_p300_3blocks_n200_77,
  norm_m_community_bsppre_p300_3blocks_n200_78,
  norm_m_community_bsppre_p300_3blocks_n200_79,
  norm_m_community_bsppre_p300_3blocks_n200_80,
  norm_m_community_bsppre_p300_3blocks_n200_81,
  norm_m_community_bsppre_p300_3blocks_n200_82,
  norm_m_community_bsppre_p300_3blocks_n200_83,
  norm_m_community_bsppre_p300_3blocks_n200_84,
  norm_m_community_bsppre_p300_3blocks_n200_85,
  norm_m_community_bsppre_p300_3blocks_n200_86,
  norm_m_community_bsppre_p300_3blocks_n200_87,
  norm_m_community_bsppre_p300_3blocks_n200_88,
  norm_m_community_bsppre_p300_3blocks_n200_89,
  norm_m_community_bsppre_p300_3blocks_n200_90,
  norm_m_community_bsppre_p300_3blocks_n200_91,
  norm_m_community_bsppre_p300_3blocks_n200_92,
  norm_m_community_bsppre_p300_3blocks_n200_93,
  norm_m_community_bsppre_p300_3blocks_n200_94,
  norm_m_community_bsppre_p300_3blocks_n200_95,
  norm_m_community_bsppre_p300_3blocks_n200_96,
  norm_m_community_bsppre_p300_3blocks_n200_97,
  norm_m_community_bsppre_p300_3blocks_n200_98,
  norm_m_community_bsppre_p300_3blocks_n200_99,
  norm_m_community_bsppre_p300_3blocks_n200_100
)

mean_norm_m_community_bsppre_p300_3blocks_n200 <- mean(norm_m_community_bsppre_p300_3blocks_n200)
sd_norm_m_community_bsppre_p300_3blocks_n200 <- sd(norm_m_community_bsppre_p300_3blocks_n200)


##################### time ######################
time_community_bsppre_p300_3blocks_n200 <- c(
  result_p300_3blocks_n200_1$time["elapsed"],
  result_p300_3blocks_n200_2$time["elapsed"],
  result_p300_3blocks_n200_3$time["elapsed"],
  result_p300_3blocks_n200_4$time["elapsed"],
  result_p300_3blocks_n200_5$time["elapsed"],
  result_p300_3blocks_n200_6$time["elapsed"],
  result_p300_3blocks_n200_7$time["elapsed"],
  result_p300_3blocks_n200_8$time["elapsed"],
  result_p300_3blocks_n200_9$time["elapsed"],
  result_p300_3blocks_n200_10$time["elapsed"],
  result_p300_3blocks_n200_11$time["elapsed"],
  result_p300_3blocks_n200_12$time["elapsed"],
  result_p300_3blocks_n200_13$time["elapsed"],
  result_p300_3blocks_n200_14$time["elapsed"],
  result_p300_3blocks_n200_15$time["elapsed"],
  result_p300_3blocks_n200_16$time["elapsed"],
  result_p300_3blocks_n200_17$time["elapsed"],
  result_p300_3blocks_n200_18$time["elapsed"],
  result_p300_3blocks_n200_19$time["elapsed"],
  result_p300_3blocks_n200_20$time["elapsed"],
  result_p300_3blocks_n200_21$time["elapsed"],
  result_p300_3blocks_n200_22$time["elapsed"],
  result_p300_3blocks_n200_23$time["elapsed"],
  result_p300_3blocks_n200_24$time["elapsed"],
  result_p300_3blocks_n200_25$time["elapsed"],
  result_p300_3blocks_n200_26$time["elapsed"],
  result_p300_3blocks_n200_27$time["elapsed"],
  result_p300_3blocks_n200_28$time["elapsed"],
  result_p300_3blocks_n200_29$time["elapsed"],
  result_p300_3blocks_n200_30$time["elapsed"],
  result_p300_3blocks_n200_31$time["elapsed"],
  result_p300_3blocks_n200_32$time["elapsed"],
  result_p300_3blocks_n200_33$time["elapsed"],
  result_p300_3blocks_n200_34$time["elapsed"],
  result_p300_3blocks_n200_35$time["elapsed"],
  result_p300_3blocks_n200_36$time["elapsed"],
  result_p300_3blocks_n200_37$time["elapsed"],
  result_p300_3blocks_n200_38$time["elapsed"],
  result_p300_3blocks_n200_39$time["elapsed"],
  result_p300_3blocks_n200_40$time["elapsed"],
  result_p300_3blocks_n200_41$time["elapsed"],
  result_p300_3blocks_n200_42$time["elapsed"],
  result_p300_3blocks_n200_43$time["elapsed"],
  result_p300_3blocks_n200_44$time["elapsed"],
  result_p300_3blocks_n200_45$time["elapsed"],
  result_p300_3blocks_n200_46$time["elapsed"],
  result_p300_3blocks_n200_47$time["elapsed"],
  result_p300_3blocks_n200_48$time["elapsed"],
  result_p300_3blocks_n200_49$time["elapsed"],
  result_p300_3blocks_n200_50$time["elapsed"],
  result_p300_3blocks_n200_51$time["elapsed"],
  result_p300_3blocks_n200_52$time["elapsed"],
  result_p300_3blocks_n200_53$time["elapsed"],
  result_p300_3blocks_n200_54$time["elapsed"],
  result_p300_3blocks_n200_55$time["elapsed"],
  result_p300_3blocks_n200_56$time["elapsed"],
  result_p300_3blocks_n200_57$time["elapsed"],
  result_p300_3blocks_n200_58$time["elapsed"],
  result_p300_3blocks_n200_59$time["elapsed"],
  result_p300_3blocks_n200_60$time["elapsed"],
  result_p300_3blocks_n200_61$time["elapsed"],
  result_p300_3blocks_n200_62$time["elapsed"],
  result_p300_3blocks_n200_63$time["elapsed"],
  result_p300_3blocks_n200_64$time["elapsed"],
  result_p300_3blocks_n200_65$time["elapsed"],
  result_p300_3blocks_n200_66$time["elapsed"],
  result_p300_3blocks_n200_67$time["elapsed"],
  result_p300_3blocks_n200_68$time["elapsed"],
  result_p300_3blocks_n200_69$time["elapsed"],
  result_p300_3blocks_n200_70$time["elapsed"],
  result_p300_3blocks_n200_71$time["elapsed"],
  result_p300_3blocks_n200_72$time["elapsed"],
  result_p300_3blocks_n200_73$time["elapsed"],
  result_p300_3blocks_n200_74$time["elapsed"],
  result_p300_3blocks_n200_75$time["elapsed"],
  result_p300_3blocks_n200_76$time["elapsed"],
  result_p300_3blocks_n200_77$time["elapsed"],
  result_p300_3blocks_n200_78$time["elapsed"],
  result_p300_3blocks_n200_79$time["elapsed"],
  result_p300_3blocks_n200_80$time["elapsed"],
  result_p300_3blocks_n200_81$time["elapsed"],
  result_p300_3blocks_n200_82$time["elapsed"],
  result_p300_3blocks_n200_83$time["elapsed"],
  result_p300_3blocks_n200_84$time["elapsed"],
  result_p300_3blocks_n200_85$time["elapsed"],
  result_p300_3blocks_n200_86$time["elapsed"],
  result_p300_3blocks_n200_87$time["elapsed"],
  result_p300_3blocks_n200_88$time["elapsed"],
  result_p300_3blocks_n200_89$time["elapsed"],
  result_p300_3blocks_n200_90$time["elapsed"],
  result_p300_3blocks_n200_91$time["elapsed"],
  result_p300_3blocks_n200_92$time["elapsed"],
  result_p300_3blocks_n200_93$time["elapsed"],
  result_p300_3blocks_n200_94$time["elapsed"],
  result_p300_3blocks_n200_95$time["elapsed"],
  result_p300_3blocks_n200_96$time["elapsed"],
  result_p300_3blocks_n200_97$time["elapsed"],
  result_p300_3blocks_n200_98$time["elapsed"],
  result_p300_3blocks_n200_99$time["elapsed"],
  result_p300_3blocks_n200_100$time["elapsed"]
)

mean_time_community_bsppre_p300_3blocks_n200 <- mean(time_community_bsppre_p300_3blocks_n200)






# g.lasso
diff_g.lasso_p300_3blocks_n200_1 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_1
norm_f_g.lasso_p300_3blocks_n200_1 <- norm(diff_g.lasso_p300_3blocks_n200_1, type="f")
norm_1_g.lasso_p300_3blocks_n200_1 <- norm(diff_g.lasso_p300_3blocks_n200_1, type="1")
norm_2_g.lasso_p300_3blocks_n200_1 <- norm(diff_g.lasso_p300_3blocks_n200_1, type="2")
norm_m_g.lasso_p300_3blocks_n200_1 <- norm(diff_g.lasso_p300_3blocks_n200_1, type="m")
diff_g.lasso_p300_3blocks_n200_2 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_2
norm_f_g.lasso_p300_3blocks_n200_2 <- norm(diff_g.lasso_p300_3blocks_n200_2, type="f")
norm_1_g.lasso_p300_3blocks_n200_2 <- norm(diff_g.lasso_p300_3blocks_n200_2, type="1")
norm_2_g.lasso_p300_3blocks_n200_2 <- norm(diff_g.lasso_p300_3blocks_n200_2, type="2")
norm_m_g.lasso_p300_3blocks_n200_2 <- norm(diff_g.lasso_p300_3blocks_n200_2, type="m")
diff_g.lasso_p300_3blocks_n200_3 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_3
norm_f_g.lasso_p300_3blocks_n200_3 <- norm(diff_g.lasso_p300_3blocks_n200_3, type="f")
norm_1_g.lasso_p300_3blocks_n200_3 <- norm(diff_g.lasso_p300_3blocks_n200_3, type="1")
norm_2_g.lasso_p300_3blocks_n200_3 <- norm(diff_g.lasso_p300_3blocks_n200_3, type="2")
norm_m_g.lasso_p300_3blocks_n200_3 <- norm(diff_g.lasso_p300_3blocks_n200_3, type="m")
diff_g.lasso_p300_3blocks_n200_4 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_4
norm_f_g.lasso_p300_3blocks_n200_4 <- norm(diff_g.lasso_p300_3blocks_n200_4, type="f")
norm_1_g.lasso_p300_3blocks_n200_4 <- norm(diff_g.lasso_p300_3blocks_n200_4, type="1")
norm_2_g.lasso_p300_3blocks_n200_4 <- norm(diff_g.lasso_p300_3blocks_n200_4, type="2")
norm_m_g.lasso_p300_3blocks_n200_4 <- norm(diff_g.lasso_p300_3blocks_n200_4, type="m")
diff_g.lasso_p300_3blocks_n200_5 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_5
norm_f_g.lasso_p300_3blocks_n200_5 <- norm(diff_g.lasso_p300_3blocks_n200_5, type="f")
norm_1_g.lasso_p300_3blocks_n200_5 <- norm(diff_g.lasso_p300_3blocks_n200_5, type="1")
norm_2_g.lasso_p300_3blocks_n200_5 <- norm(diff_g.lasso_p300_3blocks_n200_5, type="2")
norm_m_g.lasso_p300_3blocks_n200_5 <- norm(diff_g.lasso_p300_3blocks_n200_5, type="m")
diff_g.lasso_p300_3blocks_n200_6 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_6
norm_f_g.lasso_p300_3blocks_n200_6 <- norm(diff_g.lasso_p300_3blocks_n200_6, type="f")
norm_1_g.lasso_p300_3blocks_n200_6 <- norm(diff_g.lasso_p300_3blocks_n200_6, type="1")
norm_2_g.lasso_p300_3blocks_n200_6 <- norm(diff_g.lasso_p300_3blocks_n200_6, type="2")
norm_m_g.lasso_p300_3blocks_n200_6 <- norm(diff_g.lasso_p300_3blocks_n200_6, type="m")
diff_g.lasso_p300_3blocks_n200_7 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_7
norm_f_g.lasso_p300_3blocks_n200_7 <- norm(diff_g.lasso_p300_3blocks_n200_7, type="f")
norm_1_g.lasso_p300_3blocks_n200_7 <- norm(diff_g.lasso_p300_3blocks_n200_7, type="1")
norm_2_g.lasso_p300_3blocks_n200_7 <- norm(diff_g.lasso_p300_3blocks_n200_7, type="2")
norm_m_g.lasso_p300_3blocks_n200_7 <- norm(diff_g.lasso_p300_3blocks_n200_7, type="m")
diff_g.lasso_p300_3blocks_n200_8 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_8
norm_f_g.lasso_p300_3blocks_n200_8 <- norm(diff_g.lasso_p300_3blocks_n200_8, type="f")
norm_1_g.lasso_p300_3blocks_n200_8 <- norm(diff_g.lasso_p300_3blocks_n200_8, type="1")
norm_2_g.lasso_p300_3blocks_n200_8 <- norm(diff_g.lasso_p300_3blocks_n200_8, type="2")
norm_m_g.lasso_p300_3blocks_n200_8 <- norm(diff_g.lasso_p300_3blocks_n200_8, type="m")
diff_g.lasso_p300_3blocks_n200_9 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_9
norm_f_g.lasso_p300_3blocks_n200_9 <- norm(diff_g.lasso_p300_3blocks_n200_9, type="f")
norm_1_g.lasso_p300_3blocks_n200_9 <- norm(diff_g.lasso_p300_3blocks_n200_9, type="1")
norm_2_g.lasso_p300_3blocks_n200_9 <- norm(diff_g.lasso_p300_3blocks_n200_9, type="2")
norm_m_g.lasso_p300_3blocks_n200_9 <- norm(diff_g.lasso_p300_3blocks_n200_9, type="m")
diff_g.lasso_p300_3blocks_n200_10 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_10
norm_f_g.lasso_p300_3blocks_n200_10 <- norm(diff_g.lasso_p300_3blocks_n200_10, type="f")
norm_1_g.lasso_p300_3blocks_n200_10 <- norm(diff_g.lasso_p300_3blocks_n200_10, type="1")
norm_2_g.lasso_p300_3blocks_n200_10 <- norm(diff_g.lasso_p300_3blocks_n200_10, type="2")
norm_m_g.lasso_p300_3blocks_n200_10 <- norm(diff_g.lasso_p300_3blocks_n200_10, type="m")
diff_g.lasso_p300_3blocks_n200_11 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_11
norm_f_g.lasso_p300_3blocks_n200_11 <- norm(diff_g.lasso_p300_3blocks_n200_11, type="f")
norm_1_g.lasso_p300_3blocks_n200_11 <- norm(diff_g.lasso_p300_3blocks_n200_11, type="1")
norm_2_g.lasso_p300_3blocks_n200_11 <- norm(diff_g.lasso_p300_3blocks_n200_11, type="2")
norm_m_g.lasso_p300_3blocks_n200_11 <- norm(diff_g.lasso_p300_3blocks_n200_11, type="m")
diff_g.lasso_p300_3blocks_n200_12 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_12
norm_f_g.lasso_p300_3blocks_n200_12 <- norm(diff_g.lasso_p300_3blocks_n200_12, type="f")
norm_1_g.lasso_p300_3blocks_n200_12 <- norm(diff_g.lasso_p300_3blocks_n200_12, type="1")
norm_2_g.lasso_p300_3blocks_n200_12 <- norm(diff_g.lasso_p300_3blocks_n200_12, type="2")
norm_m_g.lasso_p300_3blocks_n200_12 <- norm(diff_g.lasso_p300_3blocks_n200_12, type="m")
diff_g.lasso_p300_3blocks_n200_13 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_13
norm_f_g.lasso_p300_3blocks_n200_13 <- norm(diff_g.lasso_p300_3blocks_n200_13, type="f")
norm_1_g.lasso_p300_3blocks_n200_13 <- norm(diff_g.lasso_p300_3blocks_n200_13, type="1")
norm_2_g.lasso_p300_3blocks_n200_13 <- norm(diff_g.lasso_p300_3blocks_n200_13, type="2")
norm_m_g.lasso_p300_3blocks_n200_13 <- norm(diff_g.lasso_p300_3blocks_n200_13, type="m")
diff_g.lasso_p300_3blocks_n200_14 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_14
norm_f_g.lasso_p300_3blocks_n200_14 <- norm(diff_g.lasso_p300_3blocks_n200_14, type="f")
norm_1_g.lasso_p300_3blocks_n200_14 <- norm(diff_g.lasso_p300_3blocks_n200_14, type="1")
norm_2_g.lasso_p300_3blocks_n200_14 <- norm(diff_g.lasso_p300_3blocks_n200_14, type="2")
norm_m_g.lasso_p300_3blocks_n200_14 <- norm(diff_g.lasso_p300_3blocks_n200_14, type="m")
diff_g.lasso_p300_3blocks_n200_15 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_15
norm_f_g.lasso_p300_3blocks_n200_15 <- norm(diff_g.lasso_p300_3blocks_n200_15, type="f")
norm_1_g.lasso_p300_3blocks_n200_15 <- norm(diff_g.lasso_p300_3blocks_n200_15, type="1")
norm_2_g.lasso_p300_3blocks_n200_15 <- norm(diff_g.lasso_p300_3blocks_n200_15, type="2")
norm_m_g.lasso_p300_3blocks_n200_15 <- norm(diff_g.lasso_p300_3blocks_n200_15, type="m")
diff_g.lasso_p300_3blocks_n200_16 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_16
norm_f_g.lasso_p300_3blocks_n200_16 <- norm(diff_g.lasso_p300_3blocks_n200_16, type="f")
norm_1_g.lasso_p300_3blocks_n200_16 <- norm(diff_g.lasso_p300_3blocks_n200_16, type="1")
norm_2_g.lasso_p300_3blocks_n200_16 <- norm(diff_g.lasso_p300_3blocks_n200_16, type="2")
norm_m_g.lasso_p300_3blocks_n200_16 <- norm(diff_g.lasso_p300_3blocks_n200_16, type="m")
diff_g.lasso_p300_3blocks_n200_17 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_17
norm_f_g.lasso_p300_3blocks_n200_17 <- norm(diff_g.lasso_p300_3blocks_n200_17, type="f")
norm_1_g.lasso_p300_3blocks_n200_17 <- norm(diff_g.lasso_p300_3blocks_n200_17, type="1")
norm_2_g.lasso_p300_3blocks_n200_17 <- norm(diff_g.lasso_p300_3blocks_n200_17, type="2")
norm_m_g.lasso_p300_3blocks_n200_17 <- norm(diff_g.lasso_p300_3blocks_n200_17, type="m")
diff_g.lasso_p300_3blocks_n200_18 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_18
norm_f_g.lasso_p300_3blocks_n200_18 <- norm(diff_g.lasso_p300_3blocks_n200_18, type="f")
norm_1_g.lasso_p300_3blocks_n200_18 <- norm(diff_g.lasso_p300_3blocks_n200_18, type="1")
norm_2_g.lasso_p300_3blocks_n200_18 <- norm(diff_g.lasso_p300_3blocks_n200_18, type="2")
norm_m_g.lasso_p300_3blocks_n200_18 <- norm(diff_g.lasso_p300_3blocks_n200_18, type="m")
diff_g.lasso_p300_3blocks_n200_19 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_19
norm_f_g.lasso_p300_3blocks_n200_19 <- norm(diff_g.lasso_p300_3blocks_n200_19, type="f")
norm_1_g.lasso_p300_3blocks_n200_19 <- norm(diff_g.lasso_p300_3blocks_n200_19, type="1")
norm_2_g.lasso_p300_3blocks_n200_19 <- norm(diff_g.lasso_p300_3blocks_n200_19, type="2")
norm_m_g.lasso_p300_3blocks_n200_19 <- norm(diff_g.lasso_p300_3blocks_n200_19, type="m")
diff_g.lasso_p300_3blocks_n200_20 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_20
norm_f_g.lasso_p300_3blocks_n200_20 <- norm(diff_g.lasso_p300_3blocks_n200_20, type="f")
norm_1_g.lasso_p300_3blocks_n200_20 <- norm(diff_g.lasso_p300_3blocks_n200_20, type="1")
norm_2_g.lasso_p300_3blocks_n200_20 <- norm(diff_g.lasso_p300_3blocks_n200_20, type="2")
norm_m_g.lasso_p300_3blocks_n200_20 <- norm(diff_g.lasso_p300_3blocks_n200_20, type="m")
diff_g.lasso_p300_3blocks_n200_21 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_21
norm_f_g.lasso_p300_3blocks_n200_21 <- norm(diff_g.lasso_p300_3blocks_n200_21, type="f")
norm_1_g.lasso_p300_3blocks_n200_21 <- norm(diff_g.lasso_p300_3blocks_n200_21, type="1")
norm_2_g.lasso_p300_3blocks_n200_21 <- norm(diff_g.lasso_p300_3blocks_n200_21, type="2")
norm_m_g.lasso_p300_3blocks_n200_21 <- norm(diff_g.lasso_p300_3blocks_n200_21, type="m")
diff_g.lasso_p300_3blocks_n200_22 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_22
norm_f_g.lasso_p300_3blocks_n200_22 <- norm(diff_g.lasso_p300_3blocks_n200_22, type="f")
norm_1_g.lasso_p300_3blocks_n200_22 <- norm(diff_g.lasso_p300_3blocks_n200_22, type="1")
norm_2_g.lasso_p300_3blocks_n200_22 <- norm(diff_g.lasso_p300_3blocks_n200_22, type="2")
norm_m_g.lasso_p300_3blocks_n200_22 <- norm(diff_g.lasso_p300_3blocks_n200_22, type="m")
diff_g.lasso_p300_3blocks_n200_23 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_23
norm_f_g.lasso_p300_3blocks_n200_23 <- norm(diff_g.lasso_p300_3blocks_n200_23, type="f")
norm_1_g.lasso_p300_3blocks_n200_23 <- norm(diff_g.lasso_p300_3blocks_n200_23, type="1")
norm_2_g.lasso_p300_3blocks_n200_23 <- norm(diff_g.lasso_p300_3blocks_n200_23, type="2")
norm_m_g.lasso_p300_3blocks_n200_23 <- norm(diff_g.lasso_p300_3blocks_n200_23, type="m")
diff_g.lasso_p300_3blocks_n200_24 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_24
norm_f_g.lasso_p300_3blocks_n200_24 <- norm(diff_g.lasso_p300_3blocks_n200_24, type="f")
norm_1_g.lasso_p300_3blocks_n200_24 <- norm(diff_g.lasso_p300_3blocks_n200_24, type="1")
norm_2_g.lasso_p300_3blocks_n200_24 <- norm(diff_g.lasso_p300_3blocks_n200_24, type="2")
norm_m_g.lasso_p300_3blocks_n200_24 <- norm(diff_g.lasso_p300_3blocks_n200_24, type="m")
diff_g.lasso_p300_3blocks_n200_25 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_25
norm_f_g.lasso_p300_3blocks_n200_25 <- norm(diff_g.lasso_p300_3blocks_n200_25, type="f")
norm_1_g.lasso_p300_3blocks_n200_25 <- norm(diff_g.lasso_p300_3blocks_n200_25, type="1")
norm_2_g.lasso_p300_3blocks_n200_25 <- norm(diff_g.lasso_p300_3blocks_n200_25, type="2")
norm_m_g.lasso_p300_3blocks_n200_25 <- norm(diff_g.lasso_p300_3blocks_n200_25, type="m")
diff_g.lasso_p300_3blocks_n200_26 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_26
norm_f_g.lasso_p300_3blocks_n200_26 <- norm(diff_g.lasso_p300_3blocks_n200_26, type="f")
norm_1_g.lasso_p300_3blocks_n200_26 <- norm(diff_g.lasso_p300_3blocks_n200_26, type="1")
norm_2_g.lasso_p300_3blocks_n200_26 <- norm(diff_g.lasso_p300_3blocks_n200_26, type="2")
norm_m_g.lasso_p300_3blocks_n200_26 <- norm(diff_g.lasso_p300_3blocks_n200_26, type="m")
diff_g.lasso_p300_3blocks_n200_27 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_27
norm_f_g.lasso_p300_3blocks_n200_27 <- norm(diff_g.lasso_p300_3blocks_n200_27, type="f")
norm_1_g.lasso_p300_3blocks_n200_27 <- norm(diff_g.lasso_p300_3blocks_n200_27, type="1")
norm_2_g.lasso_p300_3blocks_n200_27 <- norm(diff_g.lasso_p300_3blocks_n200_27, type="2")
norm_m_g.lasso_p300_3blocks_n200_27 <- norm(diff_g.lasso_p300_3blocks_n200_27, type="m")
diff_g.lasso_p300_3blocks_n200_28 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_28
norm_f_g.lasso_p300_3blocks_n200_28 <- norm(diff_g.lasso_p300_3blocks_n200_28, type="f")
norm_1_g.lasso_p300_3blocks_n200_28 <- norm(diff_g.lasso_p300_3blocks_n200_28, type="1")
norm_2_g.lasso_p300_3blocks_n200_28 <- norm(diff_g.lasso_p300_3blocks_n200_28, type="2")
norm_m_g.lasso_p300_3blocks_n200_28 <- norm(diff_g.lasso_p300_3blocks_n200_28, type="m")
diff_g.lasso_p300_3blocks_n200_29 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_29
norm_f_g.lasso_p300_3blocks_n200_29 <- norm(diff_g.lasso_p300_3blocks_n200_29, type="f")
norm_1_g.lasso_p300_3blocks_n200_29 <- norm(diff_g.lasso_p300_3blocks_n200_29, type="1")
norm_2_g.lasso_p300_3blocks_n200_29 <- norm(diff_g.lasso_p300_3blocks_n200_29, type="2")
norm_m_g.lasso_p300_3blocks_n200_29 <- norm(diff_g.lasso_p300_3blocks_n200_29, type="m")
diff_g.lasso_p300_3blocks_n200_30 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_30
norm_f_g.lasso_p300_3blocks_n200_30 <- norm(diff_g.lasso_p300_3blocks_n200_30, type="f")
norm_1_g.lasso_p300_3blocks_n200_30 <- norm(diff_g.lasso_p300_3blocks_n200_30, type="1")
norm_2_g.lasso_p300_3blocks_n200_30 <- norm(diff_g.lasso_p300_3blocks_n200_30, type="2")
norm_m_g.lasso_p300_3blocks_n200_30 <- norm(diff_g.lasso_p300_3blocks_n200_30, type="m")
diff_g.lasso_p300_3blocks_n200_31 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_31
norm_f_g.lasso_p300_3blocks_n200_31 <- norm(diff_g.lasso_p300_3blocks_n200_31, type="f")
norm_1_g.lasso_p300_3blocks_n200_31 <- norm(diff_g.lasso_p300_3blocks_n200_31, type="1")
norm_2_g.lasso_p300_3blocks_n200_31 <- norm(diff_g.lasso_p300_3blocks_n200_31, type="2")
norm_m_g.lasso_p300_3blocks_n200_31 <- norm(diff_g.lasso_p300_3blocks_n200_31, type="m")
diff_g.lasso_p300_3blocks_n200_32 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_32
norm_f_g.lasso_p300_3blocks_n200_32 <- norm(diff_g.lasso_p300_3blocks_n200_32, type="f")
norm_1_g.lasso_p300_3blocks_n200_32 <- norm(diff_g.lasso_p300_3blocks_n200_32, type="1")
norm_2_g.lasso_p300_3blocks_n200_32 <- norm(diff_g.lasso_p300_3blocks_n200_32, type="2")
norm_m_g.lasso_p300_3blocks_n200_32 <- norm(diff_g.lasso_p300_3blocks_n200_32, type="m")
diff_g.lasso_p300_3blocks_n200_33 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_33
norm_f_g.lasso_p300_3blocks_n200_33 <- norm(diff_g.lasso_p300_3blocks_n200_33, type="f")
norm_1_g.lasso_p300_3blocks_n200_33 <- norm(diff_g.lasso_p300_3blocks_n200_33, type="1")
norm_2_g.lasso_p300_3blocks_n200_33 <- norm(diff_g.lasso_p300_3blocks_n200_33, type="2")
norm_m_g.lasso_p300_3blocks_n200_33 <- norm(diff_g.lasso_p300_3blocks_n200_33, type="m")
diff_g.lasso_p300_3blocks_n200_34 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_34
norm_f_g.lasso_p300_3blocks_n200_34 <- norm(diff_g.lasso_p300_3blocks_n200_34, type="f")
norm_1_g.lasso_p300_3blocks_n200_34 <- norm(diff_g.lasso_p300_3blocks_n200_34, type="1")
norm_2_g.lasso_p300_3blocks_n200_34 <- norm(diff_g.lasso_p300_3blocks_n200_34, type="2")
norm_m_g.lasso_p300_3blocks_n200_34 <- norm(diff_g.lasso_p300_3blocks_n200_34, type="m")
diff_g.lasso_p300_3blocks_n200_35 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_35
norm_f_g.lasso_p300_3blocks_n200_35 <- norm(diff_g.lasso_p300_3blocks_n200_35, type="f")
norm_1_g.lasso_p300_3blocks_n200_35 <- norm(diff_g.lasso_p300_3blocks_n200_35, type="1")
norm_2_g.lasso_p300_3blocks_n200_35 <- norm(diff_g.lasso_p300_3blocks_n200_35, type="2")
norm_m_g.lasso_p300_3blocks_n200_35 <- norm(diff_g.lasso_p300_3blocks_n200_35, type="m")
diff_g.lasso_p300_3blocks_n200_36 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_36
norm_f_g.lasso_p300_3blocks_n200_36 <- norm(diff_g.lasso_p300_3blocks_n200_36, type="f")
norm_1_g.lasso_p300_3blocks_n200_36 <- norm(diff_g.lasso_p300_3blocks_n200_36, type="1")
norm_2_g.lasso_p300_3blocks_n200_36 <- norm(diff_g.lasso_p300_3blocks_n200_36, type="2")
norm_m_g.lasso_p300_3blocks_n200_36 <- norm(diff_g.lasso_p300_3blocks_n200_36, type="m")
diff_g.lasso_p300_3blocks_n200_37 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_37
norm_f_g.lasso_p300_3blocks_n200_37 <- norm(diff_g.lasso_p300_3blocks_n200_37, type="f")
norm_1_g.lasso_p300_3blocks_n200_37 <- norm(diff_g.lasso_p300_3blocks_n200_37, type="1")
norm_2_g.lasso_p300_3blocks_n200_37 <- norm(diff_g.lasso_p300_3blocks_n200_37, type="2")
norm_m_g.lasso_p300_3blocks_n200_37 <- norm(diff_g.lasso_p300_3blocks_n200_37, type="m")
diff_g.lasso_p300_3blocks_n200_38 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_38
norm_f_g.lasso_p300_3blocks_n200_38 <- norm(diff_g.lasso_p300_3blocks_n200_38, type="f")
norm_1_g.lasso_p300_3blocks_n200_38 <- norm(diff_g.lasso_p300_3blocks_n200_38, type="1")
norm_2_g.lasso_p300_3blocks_n200_38 <- norm(diff_g.lasso_p300_3blocks_n200_38, type="2")
norm_m_g.lasso_p300_3blocks_n200_38 <- norm(diff_g.lasso_p300_3blocks_n200_38, type="m")
diff_g.lasso_p300_3blocks_n200_39 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_39
norm_f_g.lasso_p300_3blocks_n200_39 <- norm(diff_g.lasso_p300_3blocks_n200_39, type="f")
norm_1_g.lasso_p300_3blocks_n200_39 <- norm(diff_g.lasso_p300_3blocks_n200_39, type="1")
norm_2_g.lasso_p300_3blocks_n200_39 <- norm(diff_g.lasso_p300_3blocks_n200_39, type="2")
norm_m_g.lasso_p300_3blocks_n200_39 <- norm(diff_g.lasso_p300_3blocks_n200_39, type="m")
diff_g.lasso_p300_3blocks_n200_40 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_40
norm_f_g.lasso_p300_3blocks_n200_40 <- norm(diff_g.lasso_p300_3blocks_n200_40, type="f")
norm_1_g.lasso_p300_3blocks_n200_40 <- norm(diff_g.lasso_p300_3blocks_n200_40, type="1")
norm_2_g.lasso_p300_3blocks_n200_40 <- norm(diff_g.lasso_p300_3blocks_n200_40, type="2")
norm_m_g.lasso_p300_3blocks_n200_40 <- norm(diff_g.lasso_p300_3blocks_n200_40, type="m")
diff_g.lasso_p300_3blocks_n200_41 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_41
norm_f_g.lasso_p300_3blocks_n200_41 <- norm(diff_g.lasso_p300_3blocks_n200_41, type="f")
norm_1_g.lasso_p300_3blocks_n200_41 <- norm(diff_g.lasso_p300_3blocks_n200_41, type="1")
norm_2_g.lasso_p300_3blocks_n200_41 <- norm(diff_g.lasso_p300_3blocks_n200_41, type="2")
norm_m_g.lasso_p300_3blocks_n200_41 <- norm(diff_g.lasso_p300_3blocks_n200_41, type="m")
diff_g.lasso_p300_3blocks_n200_42 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_42
norm_f_g.lasso_p300_3blocks_n200_42 <- norm(diff_g.lasso_p300_3blocks_n200_42, type="f")
norm_1_g.lasso_p300_3blocks_n200_42 <- norm(diff_g.lasso_p300_3blocks_n200_42, type="1")
norm_2_g.lasso_p300_3blocks_n200_42 <- norm(diff_g.lasso_p300_3blocks_n200_42, type="2")
norm_m_g.lasso_p300_3blocks_n200_42 <- norm(diff_g.lasso_p300_3blocks_n200_42, type="m")
diff_g.lasso_p300_3blocks_n200_43 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_43
norm_f_g.lasso_p300_3blocks_n200_43 <- norm(diff_g.lasso_p300_3blocks_n200_43, type="f")
norm_1_g.lasso_p300_3blocks_n200_43 <- norm(diff_g.lasso_p300_3blocks_n200_43, type="1")
norm_2_g.lasso_p300_3blocks_n200_43 <- norm(diff_g.lasso_p300_3blocks_n200_43, type="2")
norm_m_g.lasso_p300_3blocks_n200_43 <- norm(diff_g.lasso_p300_3blocks_n200_43, type="m")
diff_g.lasso_p300_3blocks_n200_44 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_44
norm_f_g.lasso_p300_3blocks_n200_44 <- norm(diff_g.lasso_p300_3blocks_n200_44, type="f")
norm_1_g.lasso_p300_3blocks_n200_44 <- norm(diff_g.lasso_p300_3blocks_n200_44, type="1")
norm_2_g.lasso_p300_3blocks_n200_44 <- norm(diff_g.lasso_p300_3blocks_n200_44, type="2")
norm_m_g.lasso_p300_3blocks_n200_44 <- norm(diff_g.lasso_p300_3blocks_n200_44, type="m")
diff_g.lasso_p300_3blocks_n200_45 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_45
norm_f_g.lasso_p300_3blocks_n200_45 <- norm(diff_g.lasso_p300_3blocks_n200_45, type="f")
norm_1_g.lasso_p300_3blocks_n200_45 <- norm(diff_g.lasso_p300_3blocks_n200_45, type="1")
norm_2_g.lasso_p300_3blocks_n200_45 <- norm(diff_g.lasso_p300_3blocks_n200_45, type="2")
norm_m_g.lasso_p300_3blocks_n200_45 <- norm(diff_g.lasso_p300_3blocks_n200_45, type="m")
diff_g.lasso_p300_3blocks_n200_46 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_46
norm_f_g.lasso_p300_3blocks_n200_46 <- norm(diff_g.lasso_p300_3blocks_n200_46, type="f")
norm_1_g.lasso_p300_3blocks_n200_46 <- norm(diff_g.lasso_p300_3blocks_n200_46, type="1")
norm_2_g.lasso_p300_3blocks_n200_46 <- norm(diff_g.lasso_p300_3blocks_n200_46, type="2")
norm_m_g.lasso_p300_3blocks_n200_46 <- norm(diff_g.lasso_p300_3blocks_n200_46, type="m")
diff_g.lasso_p300_3blocks_n200_47 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_47
norm_f_g.lasso_p300_3blocks_n200_47 <- norm(diff_g.lasso_p300_3blocks_n200_47, type="f")
norm_1_g.lasso_p300_3blocks_n200_47 <- norm(diff_g.lasso_p300_3blocks_n200_47, type="1")
norm_2_g.lasso_p300_3blocks_n200_47 <- norm(diff_g.lasso_p300_3blocks_n200_47, type="2")
norm_m_g.lasso_p300_3blocks_n200_47 <- norm(diff_g.lasso_p300_3blocks_n200_47, type="m")
diff_g.lasso_p300_3blocks_n200_48 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_48
norm_f_g.lasso_p300_3blocks_n200_48 <- norm(diff_g.lasso_p300_3blocks_n200_48, type="f")
norm_1_g.lasso_p300_3blocks_n200_48 <- norm(diff_g.lasso_p300_3blocks_n200_48, type="1")
norm_2_g.lasso_p300_3blocks_n200_48 <- norm(diff_g.lasso_p300_3blocks_n200_48, type="2")
norm_m_g.lasso_p300_3blocks_n200_48 <- norm(diff_g.lasso_p300_3blocks_n200_48, type="m")
diff_g.lasso_p300_3blocks_n200_49 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_49
norm_f_g.lasso_p300_3blocks_n200_49 <- norm(diff_g.lasso_p300_3blocks_n200_49, type="f")
norm_1_g.lasso_p300_3blocks_n200_49 <- norm(diff_g.lasso_p300_3blocks_n200_49, type="1")
norm_2_g.lasso_p300_3blocks_n200_49 <- norm(diff_g.lasso_p300_3blocks_n200_49, type="2")
norm_m_g.lasso_p300_3blocks_n200_49 <- norm(diff_g.lasso_p300_3blocks_n200_49, type="m")
diff_g.lasso_p300_3blocks_n200_50 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_50
norm_f_g.lasso_p300_3blocks_n200_50 <- norm(diff_g.lasso_p300_3blocks_n200_50, type="f")
norm_1_g.lasso_p300_3blocks_n200_50 <- norm(diff_g.lasso_p300_3blocks_n200_50, type="1")
norm_2_g.lasso_p300_3blocks_n200_50 <- norm(diff_g.lasso_p300_3blocks_n200_50, type="2")
norm_m_g.lasso_p300_3blocks_n200_50 <- norm(diff_g.lasso_p300_3blocks_n200_50, type="m")
diff_g.lasso_p300_3blocks_n200_51 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_51
norm_f_g.lasso_p300_3blocks_n200_51 <- norm(diff_g.lasso_p300_3blocks_n200_51, type="f")
norm_1_g.lasso_p300_3blocks_n200_51 <- norm(diff_g.lasso_p300_3blocks_n200_51, type="1")
norm_2_g.lasso_p300_3blocks_n200_51 <- norm(diff_g.lasso_p300_3blocks_n200_51, type="2")
norm_m_g.lasso_p300_3blocks_n200_51 <- norm(diff_g.lasso_p300_3blocks_n200_51, type="m")
diff_g.lasso_p300_3blocks_n200_52 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_52
norm_f_g.lasso_p300_3blocks_n200_52 <- norm(diff_g.lasso_p300_3blocks_n200_52, type="f")
norm_1_g.lasso_p300_3blocks_n200_52 <- norm(diff_g.lasso_p300_3blocks_n200_52, type="1")
norm_2_g.lasso_p300_3blocks_n200_52 <- norm(diff_g.lasso_p300_3blocks_n200_52, type="2")
norm_m_g.lasso_p300_3blocks_n200_52 <- norm(diff_g.lasso_p300_3blocks_n200_52, type="m")
diff_g.lasso_p300_3blocks_n200_53 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_53
norm_f_g.lasso_p300_3blocks_n200_53 <- norm(diff_g.lasso_p300_3blocks_n200_53, type="f")
norm_1_g.lasso_p300_3blocks_n200_53 <- norm(diff_g.lasso_p300_3blocks_n200_53, type="1")
norm_2_g.lasso_p300_3blocks_n200_53 <- norm(diff_g.lasso_p300_3blocks_n200_53, type="2")
norm_m_g.lasso_p300_3blocks_n200_53 <- norm(diff_g.lasso_p300_3blocks_n200_53, type="m")
diff_g.lasso_p300_3blocks_n200_54 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_54
norm_f_g.lasso_p300_3blocks_n200_54 <- norm(diff_g.lasso_p300_3blocks_n200_54, type="f")
norm_1_g.lasso_p300_3blocks_n200_54 <- norm(diff_g.lasso_p300_3blocks_n200_54, type="1")
norm_2_g.lasso_p300_3blocks_n200_54 <- norm(diff_g.lasso_p300_3blocks_n200_54, type="2")
norm_m_g.lasso_p300_3blocks_n200_54 <- norm(diff_g.lasso_p300_3blocks_n200_54, type="m")
diff_g.lasso_p300_3blocks_n200_55 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_55
norm_f_g.lasso_p300_3blocks_n200_55 <- norm(diff_g.lasso_p300_3blocks_n200_55, type="f")
norm_1_g.lasso_p300_3blocks_n200_55 <- norm(diff_g.lasso_p300_3blocks_n200_55, type="1")
norm_2_g.lasso_p300_3blocks_n200_55 <- norm(diff_g.lasso_p300_3blocks_n200_55, type="2")
norm_m_g.lasso_p300_3blocks_n200_55 <- norm(diff_g.lasso_p300_3blocks_n200_55, type="m")
diff_g.lasso_p300_3blocks_n200_56 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_56
norm_f_g.lasso_p300_3blocks_n200_56 <- norm(diff_g.lasso_p300_3blocks_n200_56, type="f")
norm_1_g.lasso_p300_3blocks_n200_56 <- norm(diff_g.lasso_p300_3blocks_n200_56, type="1")
norm_2_g.lasso_p300_3blocks_n200_56 <- norm(diff_g.lasso_p300_3blocks_n200_56, type="2")
norm_m_g.lasso_p300_3blocks_n200_56 <- norm(diff_g.lasso_p300_3blocks_n200_56, type="m")
diff_g.lasso_p300_3blocks_n200_57 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_57
norm_f_g.lasso_p300_3blocks_n200_57 <- norm(diff_g.lasso_p300_3blocks_n200_57, type="f")
norm_1_g.lasso_p300_3blocks_n200_57 <- norm(diff_g.lasso_p300_3blocks_n200_57, type="1")
norm_2_g.lasso_p300_3blocks_n200_57 <- norm(diff_g.lasso_p300_3blocks_n200_57, type="2")
norm_m_g.lasso_p300_3blocks_n200_57 <- norm(diff_g.lasso_p300_3blocks_n200_57, type="m")
diff_g.lasso_p300_3blocks_n200_58 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_58
norm_f_g.lasso_p300_3blocks_n200_58 <- norm(diff_g.lasso_p300_3blocks_n200_58, type="f")
norm_1_g.lasso_p300_3blocks_n200_58 <- norm(diff_g.lasso_p300_3blocks_n200_58, type="1")
norm_2_g.lasso_p300_3blocks_n200_58 <- norm(diff_g.lasso_p300_3blocks_n200_58, type="2")
norm_m_g.lasso_p300_3blocks_n200_58 <- norm(diff_g.lasso_p300_3blocks_n200_58, type="m")
diff_g.lasso_p300_3blocks_n200_59 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_59
norm_f_g.lasso_p300_3blocks_n200_59 <- norm(diff_g.lasso_p300_3blocks_n200_59, type="f")
norm_1_g.lasso_p300_3blocks_n200_59 <- norm(diff_g.lasso_p300_3blocks_n200_59, type="1")
norm_2_g.lasso_p300_3blocks_n200_59 <- norm(diff_g.lasso_p300_3blocks_n200_59, type="2")
norm_m_g.lasso_p300_3blocks_n200_59 <- norm(diff_g.lasso_p300_3blocks_n200_59, type="m")
diff_g.lasso_p300_3blocks_n200_60 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_60
norm_f_g.lasso_p300_3blocks_n200_60 <- norm(diff_g.lasso_p300_3blocks_n200_60, type="f")
norm_1_g.lasso_p300_3blocks_n200_60 <- norm(diff_g.lasso_p300_3blocks_n200_60, type="1")
norm_2_g.lasso_p300_3blocks_n200_60 <- norm(diff_g.lasso_p300_3blocks_n200_60, type="2")
norm_m_g.lasso_p300_3blocks_n200_60 <- norm(diff_g.lasso_p300_3blocks_n200_60, type="m")
diff_g.lasso_p300_3blocks_n200_61 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_61
norm_f_g.lasso_p300_3blocks_n200_61 <- norm(diff_g.lasso_p300_3blocks_n200_61, type="f")
norm_1_g.lasso_p300_3blocks_n200_61 <- norm(diff_g.lasso_p300_3blocks_n200_61, type="1")
norm_2_g.lasso_p300_3blocks_n200_61 <- norm(diff_g.lasso_p300_3blocks_n200_61, type="2")
norm_m_g.lasso_p300_3blocks_n200_61 <- norm(diff_g.lasso_p300_3blocks_n200_61, type="m")
diff_g.lasso_p300_3blocks_n200_62 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_62
norm_f_g.lasso_p300_3blocks_n200_62 <- norm(diff_g.lasso_p300_3blocks_n200_62, type="f")
norm_1_g.lasso_p300_3blocks_n200_62 <- norm(diff_g.lasso_p300_3blocks_n200_62, type="1")
norm_2_g.lasso_p300_3blocks_n200_62 <- norm(diff_g.lasso_p300_3blocks_n200_62, type="2")
norm_m_g.lasso_p300_3blocks_n200_62 <- norm(diff_g.lasso_p300_3blocks_n200_62, type="m")
diff_g.lasso_p300_3blocks_n200_63 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_63
norm_f_g.lasso_p300_3blocks_n200_63 <- norm(diff_g.lasso_p300_3blocks_n200_63, type="f")
norm_1_g.lasso_p300_3blocks_n200_63 <- norm(diff_g.lasso_p300_3blocks_n200_63, type="1")
norm_2_g.lasso_p300_3blocks_n200_63 <- norm(diff_g.lasso_p300_3blocks_n200_63, type="2")
norm_m_g.lasso_p300_3blocks_n200_63 <- norm(diff_g.lasso_p300_3blocks_n200_63, type="m")
diff_g.lasso_p300_3blocks_n200_64 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_64
norm_f_g.lasso_p300_3blocks_n200_64 <- norm(diff_g.lasso_p300_3blocks_n200_64, type="f")
norm_1_g.lasso_p300_3blocks_n200_64 <- norm(diff_g.lasso_p300_3blocks_n200_64, type="1")
norm_2_g.lasso_p300_3blocks_n200_64 <- norm(diff_g.lasso_p300_3blocks_n200_64, type="2")
norm_m_g.lasso_p300_3blocks_n200_64 <- norm(diff_g.lasso_p300_3blocks_n200_64, type="m")
diff_g.lasso_p300_3blocks_n200_65 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_65
norm_f_g.lasso_p300_3blocks_n200_65 <- norm(diff_g.lasso_p300_3blocks_n200_65, type="f")
norm_1_g.lasso_p300_3blocks_n200_65 <- norm(diff_g.lasso_p300_3blocks_n200_65, type="1")
norm_2_g.lasso_p300_3blocks_n200_65 <- norm(diff_g.lasso_p300_3blocks_n200_65, type="2")
norm_m_g.lasso_p300_3blocks_n200_65 <- norm(diff_g.lasso_p300_3blocks_n200_65, type="m")
diff_g.lasso_p300_3blocks_n200_66 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_66
norm_f_g.lasso_p300_3blocks_n200_66 <- norm(diff_g.lasso_p300_3blocks_n200_66, type="f")
norm_1_g.lasso_p300_3blocks_n200_66 <- norm(diff_g.lasso_p300_3blocks_n200_66, type="1")
norm_2_g.lasso_p300_3blocks_n200_66 <- norm(diff_g.lasso_p300_3blocks_n200_66, type="2")
norm_m_g.lasso_p300_3blocks_n200_66 <- norm(diff_g.lasso_p300_3blocks_n200_66, type="m")
diff_g.lasso_p300_3blocks_n200_67 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_67
norm_f_g.lasso_p300_3blocks_n200_67 <- norm(diff_g.lasso_p300_3blocks_n200_67, type="f")
norm_1_g.lasso_p300_3blocks_n200_67 <- norm(diff_g.lasso_p300_3blocks_n200_67, type="1")
norm_2_g.lasso_p300_3blocks_n200_67 <- norm(diff_g.lasso_p300_3blocks_n200_67, type="2")
norm_m_g.lasso_p300_3blocks_n200_67 <- norm(diff_g.lasso_p300_3blocks_n200_67, type="m")
diff_g.lasso_p300_3blocks_n200_68 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_68
norm_f_g.lasso_p300_3blocks_n200_68 <- norm(diff_g.lasso_p300_3blocks_n200_68, type="f")
norm_1_g.lasso_p300_3blocks_n200_68 <- norm(diff_g.lasso_p300_3blocks_n200_68, type="1")
norm_2_g.lasso_p300_3blocks_n200_68 <- norm(diff_g.lasso_p300_3blocks_n200_68, type="2")
norm_m_g.lasso_p300_3blocks_n200_68 <- norm(diff_g.lasso_p300_3blocks_n200_68, type="m")
diff_g.lasso_p300_3blocks_n200_69 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_69
norm_f_g.lasso_p300_3blocks_n200_69 <- norm(diff_g.lasso_p300_3blocks_n200_69, type="f")
norm_1_g.lasso_p300_3blocks_n200_69 <- norm(diff_g.lasso_p300_3blocks_n200_69, type="1")
norm_2_g.lasso_p300_3blocks_n200_69 <- norm(diff_g.lasso_p300_3blocks_n200_69, type="2")
norm_m_g.lasso_p300_3blocks_n200_69 <- norm(diff_g.lasso_p300_3blocks_n200_69, type="m")
diff_g.lasso_p300_3blocks_n200_70 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_70
norm_f_g.lasso_p300_3blocks_n200_70 <- norm(diff_g.lasso_p300_3blocks_n200_70, type="f")
norm_1_g.lasso_p300_3blocks_n200_70 <- norm(diff_g.lasso_p300_3blocks_n200_70, type="1")
norm_2_g.lasso_p300_3blocks_n200_70 <- norm(diff_g.lasso_p300_3blocks_n200_70, type="2")
norm_m_g.lasso_p300_3blocks_n200_70 <- norm(diff_g.lasso_p300_3blocks_n200_70, type="m")
diff_g.lasso_p300_3blocks_n200_71 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_71
norm_f_g.lasso_p300_3blocks_n200_71 <- norm(diff_g.lasso_p300_3blocks_n200_71, type="f")
norm_1_g.lasso_p300_3blocks_n200_71 <- norm(diff_g.lasso_p300_3blocks_n200_71, type="1")
norm_2_g.lasso_p300_3blocks_n200_71 <- norm(diff_g.lasso_p300_3blocks_n200_71, type="2")
norm_m_g.lasso_p300_3blocks_n200_71 <- norm(diff_g.lasso_p300_3blocks_n200_71, type="m")
diff_g.lasso_p300_3blocks_n200_72 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_72
norm_f_g.lasso_p300_3blocks_n200_72 <- norm(diff_g.lasso_p300_3blocks_n200_72, type="f")
norm_1_g.lasso_p300_3blocks_n200_72 <- norm(diff_g.lasso_p300_3blocks_n200_72, type="1")
norm_2_g.lasso_p300_3blocks_n200_72 <- norm(diff_g.lasso_p300_3blocks_n200_72, type="2")
norm_m_g.lasso_p300_3blocks_n200_72 <- norm(diff_g.lasso_p300_3blocks_n200_72, type="m")
diff_g.lasso_p300_3blocks_n200_73 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_73
norm_f_g.lasso_p300_3blocks_n200_73 <- norm(diff_g.lasso_p300_3blocks_n200_73, type="f")
norm_1_g.lasso_p300_3blocks_n200_73 <- norm(diff_g.lasso_p300_3blocks_n200_73, type="1")
norm_2_g.lasso_p300_3blocks_n200_73 <- norm(diff_g.lasso_p300_3blocks_n200_73, type="2")
norm_m_g.lasso_p300_3blocks_n200_73 <- norm(diff_g.lasso_p300_3blocks_n200_73, type="m")
diff_g.lasso_p300_3blocks_n200_74 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_74
norm_f_g.lasso_p300_3blocks_n200_74 <- norm(diff_g.lasso_p300_3blocks_n200_74, type="f")
norm_1_g.lasso_p300_3blocks_n200_74 <- norm(diff_g.lasso_p300_3blocks_n200_74, type="1")
norm_2_g.lasso_p300_3blocks_n200_74 <- norm(diff_g.lasso_p300_3blocks_n200_74, type="2")
norm_m_g.lasso_p300_3blocks_n200_74 <- norm(diff_g.lasso_p300_3blocks_n200_74, type="m")
diff_g.lasso_p300_3blocks_n200_75 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_75
norm_f_g.lasso_p300_3blocks_n200_75 <- norm(diff_g.lasso_p300_3blocks_n200_75, type="f")
norm_1_g.lasso_p300_3blocks_n200_75 <- norm(diff_g.lasso_p300_3blocks_n200_75, type="1")
norm_2_g.lasso_p300_3blocks_n200_75 <- norm(diff_g.lasso_p300_3blocks_n200_75, type="2")
norm_m_g.lasso_p300_3blocks_n200_75 <- norm(diff_g.lasso_p300_3blocks_n200_75, type="m")
diff_g.lasso_p300_3blocks_n200_76 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_76
norm_f_g.lasso_p300_3blocks_n200_76 <- norm(diff_g.lasso_p300_3blocks_n200_76, type="f")
norm_1_g.lasso_p300_3blocks_n200_76 <- norm(diff_g.lasso_p300_3blocks_n200_76, type="1")
norm_2_g.lasso_p300_3blocks_n200_76 <- norm(diff_g.lasso_p300_3blocks_n200_76, type="2")
norm_m_g.lasso_p300_3blocks_n200_76 <- norm(diff_g.lasso_p300_3blocks_n200_76, type="m")
diff_g.lasso_p300_3blocks_n200_77 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_77
norm_f_g.lasso_p300_3blocks_n200_77 <- norm(diff_g.lasso_p300_3blocks_n200_77, type="f")
norm_1_g.lasso_p300_3blocks_n200_77 <- norm(diff_g.lasso_p300_3blocks_n200_77, type="1")
norm_2_g.lasso_p300_3blocks_n200_77 <- norm(diff_g.lasso_p300_3blocks_n200_77, type="2")
norm_m_g.lasso_p300_3blocks_n200_77 <- norm(diff_g.lasso_p300_3blocks_n200_77, type="m")
diff_g.lasso_p300_3blocks_n200_78 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_78
norm_f_g.lasso_p300_3blocks_n200_78 <- norm(diff_g.lasso_p300_3blocks_n200_78, type="f")
norm_1_g.lasso_p300_3blocks_n200_78 <- norm(diff_g.lasso_p300_3blocks_n200_78, type="1")
norm_2_g.lasso_p300_3blocks_n200_78 <- norm(diff_g.lasso_p300_3blocks_n200_78, type="2")
norm_m_g.lasso_p300_3blocks_n200_78 <- norm(diff_g.lasso_p300_3blocks_n200_78, type="m")
diff_g.lasso_p300_3blocks_n200_79 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_79
norm_f_g.lasso_p300_3blocks_n200_79 <- norm(diff_g.lasso_p300_3blocks_n200_79, type="f")
norm_1_g.lasso_p300_3blocks_n200_79 <- norm(diff_g.lasso_p300_3blocks_n200_79, type="1")
norm_2_g.lasso_p300_3blocks_n200_79 <- norm(diff_g.lasso_p300_3blocks_n200_79, type="2")
norm_m_g.lasso_p300_3blocks_n200_79 <- norm(diff_g.lasso_p300_3blocks_n200_79, type="m")
diff_g.lasso_p300_3blocks_n200_80 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_80
norm_f_g.lasso_p300_3blocks_n200_80 <- norm(diff_g.lasso_p300_3blocks_n200_80, type="f")
norm_1_g.lasso_p300_3blocks_n200_80 <- norm(diff_g.lasso_p300_3blocks_n200_80, type="1")
norm_2_g.lasso_p300_3blocks_n200_80 <- norm(diff_g.lasso_p300_3blocks_n200_80, type="2")
norm_m_g.lasso_p300_3blocks_n200_80 <- norm(diff_g.lasso_p300_3blocks_n200_80, type="m")
diff_g.lasso_p300_3blocks_n200_81 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_81
norm_f_g.lasso_p300_3blocks_n200_81 <- norm(diff_g.lasso_p300_3blocks_n200_81, type="f")
norm_1_g.lasso_p300_3blocks_n200_81 <- norm(diff_g.lasso_p300_3blocks_n200_81, type="1")
norm_2_g.lasso_p300_3blocks_n200_81 <- norm(diff_g.lasso_p300_3blocks_n200_81, type="2")
norm_m_g.lasso_p300_3blocks_n200_81 <- norm(diff_g.lasso_p300_3blocks_n200_81, type="m")
diff_g.lasso_p300_3blocks_n200_82 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_82
norm_f_g.lasso_p300_3blocks_n200_82 <- norm(diff_g.lasso_p300_3blocks_n200_82, type="f")
norm_1_g.lasso_p300_3blocks_n200_82 <- norm(diff_g.lasso_p300_3blocks_n200_82, type="1")
norm_2_g.lasso_p300_3blocks_n200_82 <- norm(diff_g.lasso_p300_3blocks_n200_82, type="2")
norm_m_g.lasso_p300_3blocks_n200_82 <- norm(diff_g.lasso_p300_3blocks_n200_82, type="m")
diff_g.lasso_p300_3blocks_n200_83 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_83
norm_f_g.lasso_p300_3blocks_n200_83 <- norm(diff_g.lasso_p300_3blocks_n200_83, type="f")
norm_1_g.lasso_p300_3blocks_n200_83 <- norm(diff_g.lasso_p300_3blocks_n200_83, type="1")
norm_2_g.lasso_p300_3blocks_n200_83 <- norm(diff_g.lasso_p300_3blocks_n200_83, type="2")
norm_m_g.lasso_p300_3blocks_n200_83 <- norm(diff_g.lasso_p300_3blocks_n200_83, type="m")
diff_g.lasso_p300_3blocks_n200_84 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_84
norm_f_g.lasso_p300_3blocks_n200_84 <- norm(diff_g.lasso_p300_3blocks_n200_84, type="f")
norm_1_g.lasso_p300_3blocks_n200_84 <- norm(diff_g.lasso_p300_3blocks_n200_84, type="1")
norm_2_g.lasso_p300_3blocks_n200_84 <- norm(diff_g.lasso_p300_3blocks_n200_84, type="2")
norm_m_g.lasso_p300_3blocks_n200_84 <- norm(diff_g.lasso_p300_3blocks_n200_84, type="m")
diff_g.lasso_p300_3blocks_n200_85 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_85
norm_f_g.lasso_p300_3blocks_n200_85 <- norm(diff_g.lasso_p300_3blocks_n200_85, type="f")
norm_1_g.lasso_p300_3blocks_n200_85 <- norm(diff_g.lasso_p300_3blocks_n200_85, type="1")
norm_2_g.lasso_p300_3blocks_n200_85 <- norm(diff_g.lasso_p300_3blocks_n200_85, type="2")
norm_m_g.lasso_p300_3blocks_n200_85 <- norm(diff_g.lasso_p300_3blocks_n200_85, type="m")
diff_g.lasso_p300_3blocks_n200_86 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_86
norm_f_g.lasso_p300_3blocks_n200_86 <- norm(diff_g.lasso_p300_3blocks_n200_86, type="f")
norm_1_g.lasso_p300_3blocks_n200_86 <- norm(diff_g.lasso_p300_3blocks_n200_86, type="1")
norm_2_g.lasso_p300_3blocks_n200_86 <- norm(diff_g.lasso_p300_3blocks_n200_86, type="2")
norm_m_g.lasso_p300_3blocks_n200_86 <- norm(diff_g.lasso_p300_3blocks_n200_86, type="m")
diff_g.lasso_p300_3blocks_n200_87 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_87
norm_f_g.lasso_p300_3blocks_n200_87 <- norm(diff_g.lasso_p300_3blocks_n200_87, type="f")
norm_1_g.lasso_p300_3blocks_n200_87 <- norm(diff_g.lasso_p300_3blocks_n200_87, type="1")
norm_2_g.lasso_p300_3blocks_n200_87 <- norm(diff_g.lasso_p300_3blocks_n200_87, type="2")
norm_m_g.lasso_p300_3blocks_n200_87 <- norm(diff_g.lasso_p300_3blocks_n200_87, type="m")
diff_g.lasso_p300_3blocks_n200_88 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_88
norm_f_g.lasso_p300_3blocks_n200_88 <- norm(diff_g.lasso_p300_3blocks_n200_88, type="f")
norm_1_g.lasso_p300_3blocks_n200_88 <- norm(diff_g.lasso_p300_3blocks_n200_88, type="1")
norm_2_g.lasso_p300_3blocks_n200_88 <- norm(diff_g.lasso_p300_3blocks_n200_88, type="2")
norm_m_g.lasso_p300_3blocks_n200_88 <- norm(diff_g.lasso_p300_3blocks_n200_88, type="m")
diff_g.lasso_p300_3blocks_n200_89 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_89
norm_f_g.lasso_p300_3blocks_n200_89 <- norm(diff_g.lasso_p300_3blocks_n200_89, type="f")
norm_1_g.lasso_p300_3blocks_n200_89 <- norm(diff_g.lasso_p300_3blocks_n200_89, type="1")
norm_2_g.lasso_p300_3blocks_n200_89 <- norm(diff_g.lasso_p300_3blocks_n200_89, type="2")
norm_m_g.lasso_p300_3blocks_n200_89 <- norm(diff_g.lasso_p300_3blocks_n200_89, type="m")
diff_g.lasso_p300_3blocks_n200_90 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_90
norm_f_g.lasso_p300_3blocks_n200_90 <- norm(diff_g.lasso_p300_3blocks_n200_90, type="f")
norm_1_g.lasso_p300_3blocks_n200_90 <- norm(diff_g.lasso_p300_3blocks_n200_90, type="1")
norm_2_g.lasso_p300_3blocks_n200_90 <- norm(diff_g.lasso_p300_3blocks_n200_90, type="2")
norm_m_g.lasso_p300_3blocks_n200_90 <- norm(diff_g.lasso_p300_3blocks_n200_90, type="m")
diff_g.lasso_p300_3blocks_n200_91 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_91
norm_f_g.lasso_p300_3blocks_n200_91 <- norm(diff_g.lasso_p300_3blocks_n200_91, type="f")
norm_1_g.lasso_p300_3blocks_n200_91 <- norm(diff_g.lasso_p300_3blocks_n200_91, type="1")
norm_2_g.lasso_p300_3blocks_n200_91 <- norm(diff_g.lasso_p300_3blocks_n200_91, type="2")
norm_m_g.lasso_p300_3blocks_n200_91 <- norm(diff_g.lasso_p300_3blocks_n200_91, type="m")
diff_g.lasso_p300_3blocks_n200_92 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_92
norm_f_g.lasso_p300_3blocks_n200_92 <- norm(diff_g.lasso_p300_3blocks_n200_92, type="f")
norm_1_g.lasso_p300_3blocks_n200_92 <- norm(diff_g.lasso_p300_3blocks_n200_92, type="1")
norm_2_g.lasso_p300_3blocks_n200_92 <- norm(diff_g.lasso_p300_3blocks_n200_92, type="2")
norm_m_g.lasso_p300_3blocks_n200_92 <- norm(diff_g.lasso_p300_3blocks_n200_92, type="m")
diff_g.lasso_p300_3blocks_n200_93 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_93
norm_f_g.lasso_p300_3blocks_n200_93 <- norm(diff_g.lasso_p300_3blocks_n200_93, type="f")
norm_1_g.lasso_p300_3blocks_n200_93 <- norm(diff_g.lasso_p300_3blocks_n200_93, type="1")
norm_2_g.lasso_p300_3blocks_n200_93 <- norm(diff_g.lasso_p300_3blocks_n200_93, type="2")
norm_m_g.lasso_p300_3blocks_n200_93 <- norm(diff_g.lasso_p300_3blocks_n200_93, type="m")
diff_g.lasso_p300_3blocks_n200_94 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_94
norm_f_g.lasso_p300_3blocks_n200_94 <- norm(diff_g.lasso_p300_3blocks_n200_94, type="f")
norm_1_g.lasso_p300_3blocks_n200_94 <- norm(diff_g.lasso_p300_3blocks_n200_94, type="1")
norm_2_g.lasso_p300_3blocks_n200_94 <- norm(diff_g.lasso_p300_3blocks_n200_94, type="2")
norm_m_g.lasso_p300_3blocks_n200_94 <- norm(diff_g.lasso_p300_3blocks_n200_94, type="m")
diff_g.lasso_p300_3blocks_n200_95 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_95
norm_f_g.lasso_p300_3blocks_n200_95 <- norm(diff_g.lasso_p300_3blocks_n200_95, type="f")
norm_1_g.lasso_p300_3blocks_n200_95 <- norm(diff_g.lasso_p300_3blocks_n200_95, type="1")
norm_2_g.lasso_p300_3blocks_n200_95 <- norm(diff_g.lasso_p300_3blocks_n200_95, type="2")
norm_m_g.lasso_p300_3blocks_n200_95 <- norm(diff_g.lasso_p300_3blocks_n200_95, type="m")
diff_g.lasso_p300_3blocks_n200_96 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_96
norm_f_g.lasso_p300_3blocks_n200_96 <- norm(diff_g.lasso_p300_3blocks_n200_96, type="f")
norm_1_g.lasso_p300_3blocks_n200_96 <- norm(diff_g.lasso_p300_3blocks_n200_96, type="1")
norm_2_g.lasso_p300_3blocks_n200_96 <- norm(diff_g.lasso_p300_3blocks_n200_96, type="2")
norm_m_g.lasso_p300_3blocks_n200_96 <- norm(diff_g.lasso_p300_3blocks_n200_96, type="m")
diff_g.lasso_p300_3blocks_n200_97 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_97
norm_f_g.lasso_p300_3blocks_n200_97 <- norm(diff_g.lasso_p300_3blocks_n200_97, type="f")
norm_1_g.lasso_p300_3blocks_n200_97 <- norm(diff_g.lasso_p300_3blocks_n200_97, type="1")
norm_2_g.lasso_p300_3blocks_n200_97 <- norm(diff_g.lasso_p300_3blocks_n200_97, type="2")
norm_m_g.lasso_p300_3blocks_n200_97 <- norm(diff_g.lasso_p300_3blocks_n200_97, type="m")
diff_g.lasso_p300_3blocks_n200_98 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_98
norm_f_g.lasso_p300_3blocks_n200_98 <- norm(diff_g.lasso_p300_3blocks_n200_98, type="f")
norm_1_g.lasso_p300_3blocks_n200_98 <- norm(diff_g.lasso_p300_3blocks_n200_98, type="1")
norm_2_g.lasso_p300_3blocks_n200_98 <- norm(diff_g.lasso_p300_3blocks_n200_98, type="2")
norm_m_g.lasso_p300_3blocks_n200_98 <- norm(diff_g.lasso_p300_3blocks_n200_98, type="m")
diff_g.lasso_p300_3blocks_n200_99 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_99
norm_f_g.lasso_p300_3blocks_n200_99 <- norm(diff_g.lasso_p300_3blocks_n200_99, type="f")
norm_1_g.lasso_p300_3blocks_n200_99 <- norm(diff_g.lasso_p300_3blocks_n200_99, type="1")
norm_2_g.lasso_p300_3blocks_n200_99 <- norm(diff_g.lasso_p300_3blocks_n200_99, type="2")
norm_m_g.lasso_p300_3blocks_n200_99 <- norm(diff_g.lasso_p300_3blocks_n200_99, type="m")
diff_g.lasso_p300_3blocks_n200_100 <- true_precision_p300_3blocks - g.lasso_p300_3blocks_n200_100
norm_f_g.lasso_p300_3blocks_n200_100 <- norm(diff_g.lasso_p300_3blocks_n200_100, type="f")
norm_1_g.lasso_p300_3blocks_n200_100 <- norm(diff_g.lasso_p300_3blocks_n200_100, type="1")
norm_2_g.lasso_p300_3blocks_n200_100 <- norm(diff_g.lasso_p300_3blocks_n200_100, type="2")
norm_m_g.lasso_p300_3blocks_n200_100 <- norm(diff_g.lasso_p300_3blocks_n200_100, type="m")

###################### f norm ################################
norm_f_g.lasso_p300_3blocks_n200 <- c(
  norm_f_g.lasso_p300_3blocks_n200_1,
  norm_f_g.lasso_p300_3blocks_n200_2,
  norm_f_g.lasso_p300_3blocks_n200_3,
  norm_f_g.lasso_p300_3blocks_n200_4,
  norm_f_g.lasso_p300_3blocks_n200_5,
  norm_f_g.lasso_p300_3blocks_n200_6,
  norm_f_g.lasso_p300_3blocks_n200_7,
  norm_f_g.lasso_p300_3blocks_n200_8,
  norm_f_g.lasso_p300_3blocks_n200_9,
  norm_f_g.lasso_p300_3blocks_n200_10,
  norm_f_g.lasso_p300_3blocks_n200_11,
  norm_f_g.lasso_p300_3blocks_n200_12,
  norm_f_g.lasso_p300_3blocks_n200_13,
  norm_f_g.lasso_p300_3blocks_n200_14,
  norm_f_g.lasso_p300_3blocks_n200_15,
  norm_f_g.lasso_p300_3blocks_n200_16,
  norm_f_g.lasso_p300_3blocks_n200_17,
  norm_f_g.lasso_p300_3blocks_n200_18,
  norm_f_g.lasso_p300_3blocks_n200_19,
  norm_f_g.lasso_p300_3blocks_n200_20,
  norm_f_g.lasso_p300_3blocks_n200_21,
  norm_f_g.lasso_p300_3blocks_n200_22,
  norm_f_g.lasso_p300_3blocks_n200_23,
  norm_f_g.lasso_p300_3blocks_n200_24,
  norm_f_g.lasso_p300_3blocks_n200_25,
  norm_f_g.lasso_p300_3blocks_n200_26,
  norm_f_g.lasso_p300_3blocks_n200_27,
  norm_f_g.lasso_p300_3blocks_n200_28,
  norm_f_g.lasso_p300_3blocks_n200_29,
  norm_f_g.lasso_p300_3blocks_n200_30,
  norm_f_g.lasso_p300_3blocks_n200_31,
  norm_f_g.lasso_p300_3blocks_n200_32,
  norm_f_g.lasso_p300_3blocks_n200_33,
  norm_f_g.lasso_p300_3blocks_n200_34,
  norm_f_g.lasso_p300_3blocks_n200_35,
  norm_f_g.lasso_p300_3blocks_n200_36,
  norm_f_g.lasso_p300_3blocks_n200_37,
  norm_f_g.lasso_p300_3blocks_n200_38,
  norm_f_g.lasso_p300_3blocks_n200_39,
  norm_f_g.lasso_p300_3blocks_n200_40,
  norm_f_g.lasso_p300_3blocks_n200_41,
  norm_f_g.lasso_p300_3blocks_n200_42,
  norm_f_g.lasso_p300_3blocks_n200_43,
  norm_f_g.lasso_p300_3blocks_n200_44,
  norm_f_g.lasso_p300_3blocks_n200_45,
  norm_f_g.lasso_p300_3blocks_n200_46,
  norm_f_g.lasso_p300_3blocks_n200_47,
  norm_f_g.lasso_p300_3blocks_n200_48,
  norm_f_g.lasso_p300_3blocks_n200_49,
  norm_f_g.lasso_p300_3blocks_n200_50,
  norm_f_g.lasso_p300_3blocks_n200_51,
  norm_f_g.lasso_p300_3blocks_n200_52,
  norm_f_g.lasso_p300_3blocks_n200_53,
  norm_f_g.lasso_p300_3blocks_n200_54,
  norm_f_g.lasso_p300_3blocks_n200_55,
  norm_f_g.lasso_p300_3blocks_n200_56,
  norm_f_g.lasso_p300_3blocks_n200_57,
  norm_f_g.lasso_p300_3blocks_n200_58,
  norm_f_g.lasso_p300_3blocks_n200_59,
  norm_f_g.lasso_p300_3blocks_n200_60,
  norm_f_g.lasso_p300_3blocks_n200_61,
  norm_f_g.lasso_p300_3blocks_n200_62,
  norm_f_g.lasso_p300_3blocks_n200_63,
  norm_f_g.lasso_p300_3blocks_n200_64,
  norm_f_g.lasso_p300_3blocks_n200_65,
  norm_f_g.lasso_p300_3blocks_n200_66,
  norm_f_g.lasso_p300_3blocks_n200_67,
  norm_f_g.lasso_p300_3blocks_n200_68,
  norm_f_g.lasso_p300_3blocks_n200_69,
  norm_f_g.lasso_p300_3blocks_n200_70,
  norm_f_g.lasso_p300_3blocks_n200_71,
  norm_f_g.lasso_p300_3blocks_n200_72,
  norm_f_g.lasso_p300_3blocks_n200_73,
  norm_f_g.lasso_p300_3blocks_n200_74,
  norm_f_g.lasso_p300_3blocks_n200_75,
  norm_f_g.lasso_p300_3blocks_n200_76,
  norm_f_g.lasso_p300_3blocks_n200_77,
  norm_f_g.lasso_p300_3blocks_n200_78,
  norm_f_g.lasso_p300_3blocks_n200_79,
  norm_f_g.lasso_p300_3blocks_n200_80,
  norm_f_g.lasso_p300_3blocks_n200_81,
  norm_f_g.lasso_p300_3blocks_n200_82,
  norm_f_g.lasso_p300_3blocks_n200_83,
  norm_f_g.lasso_p300_3blocks_n200_84,
  norm_f_g.lasso_p300_3blocks_n200_85,
  norm_f_g.lasso_p300_3blocks_n200_86,
  norm_f_g.lasso_p300_3blocks_n200_87,
  norm_f_g.lasso_p300_3blocks_n200_88,
  norm_f_g.lasso_p300_3blocks_n200_89,
  norm_f_g.lasso_p300_3blocks_n200_90,
  norm_f_g.lasso_p300_3blocks_n200_91,
  norm_f_g.lasso_p300_3blocks_n200_92,
  norm_f_g.lasso_p300_3blocks_n200_93,
  norm_f_g.lasso_p300_3blocks_n200_94,
  norm_f_g.lasso_p300_3blocks_n200_95,
  norm_f_g.lasso_p300_3blocks_n200_96,
  norm_f_g.lasso_p300_3blocks_n200_97,
  norm_f_g.lasso_p300_3blocks_n200_98,
  norm_f_g.lasso_p300_3blocks_n200_99,
  norm_f_g.lasso_p300_3blocks_n200_100
)

mean_norm_f_g.lasso_p300_3blocks_n200 <- mean(norm_f_g.lasso_p300_3blocks_n200)
sd_norm_f_g.lasso_p300_3blocks_n200 <- sd(norm_f_g.lasso_p300_3blocks_n200)


###################### 1 norm ################################
norm_1_g.lasso_p300_3blocks_n200 <- c(
  norm_1_g.lasso_p300_3blocks_n200_1,
  norm_1_g.lasso_p300_3blocks_n200_2,
  norm_1_g.lasso_p300_3blocks_n200_3,
  norm_1_g.lasso_p300_3blocks_n200_4,
  norm_1_g.lasso_p300_3blocks_n200_5,
  norm_1_g.lasso_p300_3blocks_n200_6,
  norm_1_g.lasso_p300_3blocks_n200_7,
  norm_1_g.lasso_p300_3blocks_n200_8,
  norm_1_g.lasso_p300_3blocks_n200_9,
  norm_1_g.lasso_p300_3blocks_n200_10,
  norm_1_g.lasso_p300_3blocks_n200_11,
  norm_1_g.lasso_p300_3blocks_n200_12,
  norm_1_g.lasso_p300_3blocks_n200_13,
  norm_1_g.lasso_p300_3blocks_n200_14,
  norm_1_g.lasso_p300_3blocks_n200_15,
  norm_1_g.lasso_p300_3blocks_n200_16,
  norm_1_g.lasso_p300_3blocks_n200_17,
  norm_1_g.lasso_p300_3blocks_n200_18,
  norm_1_g.lasso_p300_3blocks_n200_19,
  norm_1_g.lasso_p300_3blocks_n200_20,
  norm_1_g.lasso_p300_3blocks_n200_21,
  norm_1_g.lasso_p300_3blocks_n200_22,
  norm_1_g.lasso_p300_3blocks_n200_23,
  norm_1_g.lasso_p300_3blocks_n200_24,
  norm_1_g.lasso_p300_3blocks_n200_25,
  norm_1_g.lasso_p300_3blocks_n200_26,
  norm_1_g.lasso_p300_3blocks_n200_27,
  norm_1_g.lasso_p300_3blocks_n200_28,
  norm_1_g.lasso_p300_3blocks_n200_29,
  norm_1_g.lasso_p300_3blocks_n200_30,
  norm_1_g.lasso_p300_3blocks_n200_31,
  norm_1_g.lasso_p300_3blocks_n200_32,
  norm_1_g.lasso_p300_3blocks_n200_33,
  norm_1_g.lasso_p300_3blocks_n200_34,
  norm_1_g.lasso_p300_3blocks_n200_35,
  norm_1_g.lasso_p300_3blocks_n200_36,
  norm_1_g.lasso_p300_3blocks_n200_37,
  norm_1_g.lasso_p300_3blocks_n200_38,
  norm_1_g.lasso_p300_3blocks_n200_39,
  norm_1_g.lasso_p300_3blocks_n200_40,
  norm_1_g.lasso_p300_3blocks_n200_41,
  norm_1_g.lasso_p300_3blocks_n200_42,
  norm_1_g.lasso_p300_3blocks_n200_43,
  norm_1_g.lasso_p300_3blocks_n200_44,
  norm_1_g.lasso_p300_3blocks_n200_45,
  norm_1_g.lasso_p300_3blocks_n200_46,
  norm_1_g.lasso_p300_3blocks_n200_47,
  norm_1_g.lasso_p300_3blocks_n200_48,
  norm_1_g.lasso_p300_3blocks_n200_49,
  norm_1_g.lasso_p300_3blocks_n200_50,
  norm_1_g.lasso_p300_3blocks_n200_51,
  norm_1_g.lasso_p300_3blocks_n200_52,
  norm_1_g.lasso_p300_3blocks_n200_53,
  norm_1_g.lasso_p300_3blocks_n200_54,
  norm_1_g.lasso_p300_3blocks_n200_55,
  norm_1_g.lasso_p300_3blocks_n200_56,
  norm_1_g.lasso_p300_3blocks_n200_57,
  norm_1_g.lasso_p300_3blocks_n200_58,
  norm_1_g.lasso_p300_3blocks_n200_59,
  norm_1_g.lasso_p300_3blocks_n200_60,
  norm_1_g.lasso_p300_3blocks_n200_61,
  norm_1_g.lasso_p300_3blocks_n200_62,
  norm_1_g.lasso_p300_3blocks_n200_63,
  norm_1_g.lasso_p300_3blocks_n200_64,
  norm_1_g.lasso_p300_3blocks_n200_65,
  norm_1_g.lasso_p300_3blocks_n200_66,
  norm_1_g.lasso_p300_3blocks_n200_67,
  norm_1_g.lasso_p300_3blocks_n200_68,
  norm_1_g.lasso_p300_3blocks_n200_69,
  norm_1_g.lasso_p300_3blocks_n200_70,
  norm_1_g.lasso_p300_3blocks_n200_71,
  norm_1_g.lasso_p300_3blocks_n200_72,
  norm_1_g.lasso_p300_3blocks_n200_73,
  norm_1_g.lasso_p300_3blocks_n200_74,
  norm_1_g.lasso_p300_3blocks_n200_75,
  norm_1_g.lasso_p300_3blocks_n200_76,
  norm_1_g.lasso_p300_3blocks_n200_77,
  norm_1_g.lasso_p300_3blocks_n200_78,
  norm_1_g.lasso_p300_3blocks_n200_79,
  norm_1_g.lasso_p300_3blocks_n200_80,
  norm_1_g.lasso_p300_3blocks_n200_81,
  norm_1_g.lasso_p300_3blocks_n200_82,
  norm_1_g.lasso_p300_3blocks_n200_83,
  norm_1_g.lasso_p300_3blocks_n200_84,
  norm_1_g.lasso_p300_3blocks_n200_85,
  norm_1_g.lasso_p300_3blocks_n200_86,
  norm_1_g.lasso_p300_3blocks_n200_87,
  norm_1_g.lasso_p300_3blocks_n200_88,
  norm_1_g.lasso_p300_3blocks_n200_89,
  norm_1_g.lasso_p300_3blocks_n200_90,
  norm_1_g.lasso_p300_3blocks_n200_91,
  norm_1_g.lasso_p300_3blocks_n200_92,
  norm_1_g.lasso_p300_3blocks_n200_93,
  norm_1_g.lasso_p300_3blocks_n200_94,
  norm_1_g.lasso_p300_3blocks_n200_95,
  norm_1_g.lasso_p300_3blocks_n200_96,
  norm_1_g.lasso_p300_3blocks_n200_97,
  norm_1_g.lasso_p300_3blocks_n200_98,
  norm_1_g.lasso_p300_3blocks_n200_99,
  norm_1_g.lasso_p300_3blocks_n200_100
)

mean_norm_1_g.lasso_p300_3blocks_n200 <- mean(norm_1_g.lasso_p300_3blocks_n200)
sd_norm_1_g.lasso_p300_3blocks_n200 <- sd(norm_1_g.lasso_p300_3blocks_n200)


###################### 2 norm ################################
norm_2_g.lasso_p300_3blocks_n200 <- c(
  norm_2_g.lasso_p300_3blocks_n200_1,
  norm_2_g.lasso_p300_3blocks_n200_2,
  norm_2_g.lasso_p300_3blocks_n200_3,
  norm_2_g.lasso_p300_3blocks_n200_4,
  norm_2_g.lasso_p300_3blocks_n200_5,
  norm_2_g.lasso_p300_3blocks_n200_6,
  norm_2_g.lasso_p300_3blocks_n200_7,
  norm_2_g.lasso_p300_3blocks_n200_8,
  norm_2_g.lasso_p300_3blocks_n200_9,
  norm_2_g.lasso_p300_3blocks_n200_10,
  norm_2_g.lasso_p300_3blocks_n200_11,
  norm_2_g.lasso_p300_3blocks_n200_12,
  norm_2_g.lasso_p300_3blocks_n200_13,
  norm_2_g.lasso_p300_3blocks_n200_14,
  norm_2_g.lasso_p300_3blocks_n200_15,
  norm_2_g.lasso_p300_3blocks_n200_16,
  norm_2_g.lasso_p300_3blocks_n200_17,
  norm_2_g.lasso_p300_3blocks_n200_18,
  norm_2_g.lasso_p300_3blocks_n200_19,
  norm_2_g.lasso_p300_3blocks_n200_20,
  norm_2_g.lasso_p300_3blocks_n200_21,
  norm_2_g.lasso_p300_3blocks_n200_22,
  norm_2_g.lasso_p300_3blocks_n200_23,
  norm_2_g.lasso_p300_3blocks_n200_24,
  norm_2_g.lasso_p300_3blocks_n200_25,
  norm_2_g.lasso_p300_3blocks_n200_26,
  norm_2_g.lasso_p300_3blocks_n200_27,
  norm_2_g.lasso_p300_3blocks_n200_28,
  norm_2_g.lasso_p300_3blocks_n200_29,
  norm_2_g.lasso_p300_3blocks_n200_30,
  norm_2_g.lasso_p300_3blocks_n200_31,
  norm_2_g.lasso_p300_3blocks_n200_32,
  norm_2_g.lasso_p300_3blocks_n200_33,
  norm_2_g.lasso_p300_3blocks_n200_34,
  norm_2_g.lasso_p300_3blocks_n200_35,
  norm_2_g.lasso_p300_3blocks_n200_36,
  norm_2_g.lasso_p300_3blocks_n200_37,
  norm_2_g.lasso_p300_3blocks_n200_38,
  norm_2_g.lasso_p300_3blocks_n200_39,
  norm_2_g.lasso_p300_3blocks_n200_40,
  norm_2_g.lasso_p300_3blocks_n200_41,
  norm_2_g.lasso_p300_3blocks_n200_42,
  norm_2_g.lasso_p300_3blocks_n200_43,
  norm_2_g.lasso_p300_3blocks_n200_44,
  norm_2_g.lasso_p300_3blocks_n200_45,
  norm_2_g.lasso_p300_3blocks_n200_46,
  norm_2_g.lasso_p300_3blocks_n200_47,
  norm_2_g.lasso_p300_3blocks_n200_48,
  norm_2_g.lasso_p300_3blocks_n200_49,
  norm_2_g.lasso_p300_3blocks_n200_50,
  norm_2_g.lasso_p300_3blocks_n200_51,
  norm_2_g.lasso_p300_3blocks_n200_52,
  norm_2_g.lasso_p300_3blocks_n200_53,
  norm_2_g.lasso_p300_3blocks_n200_54,
  norm_2_g.lasso_p300_3blocks_n200_55,
  norm_2_g.lasso_p300_3blocks_n200_56,
  norm_2_g.lasso_p300_3blocks_n200_57,
  norm_2_g.lasso_p300_3blocks_n200_58,
  norm_2_g.lasso_p300_3blocks_n200_59,
  norm_2_g.lasso_p300_3blocks_n200_60,
  norm_2_g.lasso_p300_3blocks_n200_61,
  norm_2_g.lasso_p300_3blocks_n200_62,
  norm_2_g.lasso_p300_3blocks_n200_63,
  norm_2_g.lasso_p300_3blocks_n200_64,
  norm_2_g.lasso_p300_3blocks_n200_65,
  norm_2_g.lasso_p300_3blocks_n200_66,
  norm_2_g.lasso_p300_3blocks_n200_67,
  norm_2_g.lasso_p300_3blocks_n200_68,
  norm_2_g.lasso_p300_3blocks_n200_69,
  norm_2_g.lasso_p300_3blocks_n200_70,
  norm_2_g.lasso_p300_3blocks_n200_71,
  norm_2_g.lasso_p300_3blocks_n200_72,
  norm_2_g.lasso_p300_3blocks_n200_73,
  norm_2_g.lasso_p300_3blocks_n200_74,
  norm_2_g.lasso_p300_3blocks_n200_75,
  norm_2_g.lasso_p300_3blocks_n200_76,
  norm_2_g.lasso_p300_3blocks_n200_77,
  norm_2_g.lasso_p300_3blocks_n200_78,
  norm_2_g.lasso_p300_3blocks_n200_79,
  norm_2_g.lasso_p300_3blocks_n200_80,
  norm_2_g.lasso_p300_3blocks_n200_81,
  norm_2_g.lasso_p300_3blocks_n200_82,
  norm_2_g.lasso_p300_3blocks_n200_83,
  norm_2_g.lasso_p300_3blocks_n200_84,
  norm_2_g.lasso_p300_3blocks_n200_85,
  norm_2_g.lasso_p300_3blocks_n200_86,
  norm_2_g.lasso_p300_3blocks_n200_87,
  norm_2_g.lasso_p300_3blocks_n200_88,
  norm_2_g.lasso_p300_3blocks_n200_89,
  norm_2_g.lasso_p300_3blocks_n200_90,
  norm_2_g.lasso_p300_3blocks_n200_91,
  norm_2_g.lasso_p300_3blocks_n200_92,
  norm_2_g.lasso_p300_3blocks_n200_93,
  norm_2_g.lasso_p300_3blocks_n200_94,
  norm_2_g.lasso_p300_3blocks_n200_95,
  norm_2_g.lasso_p300_3blocks_n200_96,
  norm_2_g.lasso_p300_3blocks_n200_97,
  norm_2_g.lasso_p300_3blocks_n200_98,
  norm_2_g.lasso_p300_3blocks_n200_99,
  norm_2_g.lasso_p300_3blocks_n200_100
)

mean_norm_2_g.lasso_p300_3blocks_n200 <- mean(norm_2_g.lasso_p300_3blocks_n200)
sd_norm_2_g.lasso_p300_3blocks_n200 <- sd(norm_2_g.lasso_p300_3blocks_n200)

###################### m norm ################################
norm_m_g.lasso_p300_3blocks_n200 <- c(
  norm_m_g.lasso_p300_3blocks_n200_1,
  norm_m_g.lasso_p300_3blocks_n200_2,
  norm_m_g.lasso_p300_3blocks_n200_3,
  norm_m_g.lasso_p300_3blocks_n200_4,
  norm_m_g.lasso_p300_3blocks_n200_5,
  norm_m_g.lasso_p300_3blocks_n200_6,
  norm_m_g.lasso_p300_3blocks_n200_7,
  norm_m_g.lasso_p300_3blocks_n200_8,
  norm_m_g.lasso_p300_3blocks_n200_9,
  norm_m_g.lasso_p300_3blocks_n200_10,
  norm_m_g.lasso_p300_3blocks_n200_11,
  norm_m_g.lasso_p300_3blocks_n200_12,
  norm_m_g.lasso_p300_3blocks_n200_13,
  norm_m_g.lasso_p300_3blocks_n200_14,
  norm_m_g.lasso_p300_3blocks_n200_15,
  norm_m_g.lasso_p300_3blocks_n200_16,
  norm_m_g.lasso_p300_3blocks_n200_17,
  norm_m_g.lasso_p300_3blocks_n200_18,
  norm_m_g.lasso_p300_3blocks_n200_19,
  norm_m_g.lasso_p300_3blocks_n200_20,
  norm_m_g.lasso_p300_3blocks_n200_21,
  norm_m_g.lasso_p300_3blocks_n200_22,
  norm_m_g.lasso_p300_3blocks_n200_23,
  norm_m_g.lasso_p300_3blocks_n200_24,
  norm_m_g.lasso_p300_3blocks_n200_25,
  norm_m_g.lasso_p300_3blocks_n200_26,
  norm_m_g.lasso_p300_3blocks_n200_27,
  norm_m_g.lasso_p300_3blocks_n200_28,
  norm_m_g.lasso_p300_3blocks_n200_29,
  norm_m_g.lasso_p300_3blocks_n200_30,
  norm_m_g.lasso_p300_3blocks_n200_31,
  norm_m_g.lasso_p300_3blocks_n200_32,
  norm_m_g.lasso_p300_3blocks_n200_33,
  norm_m_g.lasso_p300_3blocks_n200_34,
  norm_m_g.lasso_p300_3blocks_n200_35,
  norm_m_g.lasso_p300_3blocks_n200_36,
  norm_m_g.lasso_p300_3blocks_n200_37,
  norm_m_g.lasso_p300_3blocks_n200_38,
  norm_m_g.lasso_p300_3blocks_n200_39,
  norm_m_g.lasso_p300_3blocks_n200_40,
  norm_m_g.lasso_p300_3blocks_n200_41,
  norm_m_g.lasso_p300_3blocks_n200_42,
  norm_m_g.lasso_p300_3blocks_n200_43,
  norm_m_g.lasso_p300_3blocks_n200_44,
  norm_m_g.lasso_p300_3blocks_n200_45,
  norm_m_g.lasso_p300_3blocks_n200_46,
  norm_m_g.lasso_p300_3blocks_n200_47,
  norm_m_g.lasso_p300_3blocks_n200_48,
  norm_m_g.lasso_p300_3blocks_n200_49,
  norm_m_g.lasso_p300_3blocks_n200_50,
  norm_m_g.lasso_p300_3blocks_n200_51,
  norm_m_g.lasso_p300_3blocks_n200_52,
  norm_m_g.lasso_p300_3blocks_n200_53,
  norm_m_g.lasso_p300_3blocks_n200_54,
  norm_m_g.lasso_p300_3blocks_n200_55,
  norm_m_g.lasso_p300_3blocks_n200_56,
  norm_m_g.lasso_p300_3blocks_n200_57,
  norm_m_g.lasso_p300_3blocks_n200_58,
  norm_m_g.lasso_p300_3blocks_n200_59,
  norm_m_g.lasso_p300_3blocks_n200_60,
  norm_m_g.lasso_p300_3blocks_n200_61,
  norm_m_g.lasso_p300_3blocks_n200_62,
  norm_m_g.lasso_p300_3blocks_n200_63,
  norm_m_g.lasso_p300_3blocks_n200_64,
  norm_m_g.lasso_p300_3blocks_n200_65,
  norm_m_g.lasso_p300_3blocks_n200_66,
  norm_m_g.lasso_p300_3blocks_n200_67,
  norm_m_g.lasso_p300_3blocks_n200_68,
  norm_m_g.lasso_p300_3blocks_n200_69,
  norm_m_g.lasso_p300_3blocks_n200_70,
  norm_m_g.lasso_p300_3blocks_n200_71,
  norm_m_g.lasso_p300_3blocks_n200_72,
  norm_m_g.lasso_p300_3blocks_n200_73,
  norm_m_g.lasso_p300_3blocks_n200_74,
  norm_m_g.lasso_p300_3blocks_n200_75,
  norm_m_g.lasso_p300_3blocks_n200_76,
  norm_m_g.lasso_p300_3blocks_n200_77,
  norm_m_g.lasso_p300_3blocks_n200_78,
  norm_m_g.lasso_p300_3blocks_n200_79,
  norm_m_g.lasso_p300_3blocks_n200_80,
  norm_m_g.lasso_p300_3blocks_n200_81,
  norm_m_g.lasso_p300_3blocks_n200_82,
  norm_m_g.lasso_p300_3blocks_n200_83,
  norm_m_g.lasso_p300_3blocks_n200_84,
  norm_m_g.lasso_p300_3blocks_n200_85,
  norm_m_g.lasso_p300_3blocks_n200_86,
  norm_m_g.lasso_p300_3blocks_n200_87,
  norm_m_g.lasso_p300_3blocks_n200_88,
  norm_m_g.lasso_p300_3blocks_n200_89,
  norm_m_g.lasso_p300_3blocks_n200_90,
  norm_m_g.lasso_p300_3blocks_n200_91,
  norm_m_g.lasso_p300_3blocks_n200_92,
  norm_m_g.lasso_p300_3blocks_n200_93,
  norm_m_g.lasso_p300_3blocks_n200_94,
  norm_m_g.lasso_p300_3blocks_n200_95,
  norm_m_g.lasso_p300_3blocks_n200_96,
  norm_m_g.lasso_p300_3blocks_n200_97,
  norm_m_g.lasso_p300_3blocks_n200_98,
  norm_m_g.lasso_p300_3blocks_n200_99,
  norm_m_g.lasso_p300_3blocks_n200_100
)

mean_norm_m_g.lasso_p300_3blocks_n200 <- mean(norm_m_g.lasso_p300_3blocks_n200)
sd_norm_m_g.lasso_p300_3blocks_n200 <- sd(norm_m_g.lasso_p300_3blocks_n200)

###################### time ################################
time_g.lasso_p300_3blocks_n200/100



# clime
diff_clime_p300_3blocks_n200_1 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_1
norm_f_clime_p300_3blocks_n200_1 <- norm(diff_clime_p300_3blocks_n200_1, type="f")
norm_1_clime_p300_3blocks_n200_1 <- norm(diff_clime_p300_3blocks_n200_1, type="1")
norm_2_clime_p300_3blocks_n200_1 <- norm(diff_clime_p300_3blocks_n200_1, type="2")
norm_m_clime_p300_3blocks_n200_1 <- norm(diff_clime_p300_3blocks_n200_1, type="m")
diff_clime_p300_3blocks_n200_2 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_2
norm_f_clime_p300_3blocks_n200_2 <- norm(diff_clime_p300_3blocks_n200_2, type="f")
norm_1_clime_p300_3blocks_n200_2 <- norm(diff_clime_p300_3blocks_n200_2, type="1")
norm_2_clime_p300_3blocks_n200_2 <- norm(diff_clime_p300_3blocks_n200_2, type="2")
norm_m_clime_p300_3blocks_n200_2 <- norm(diff_clime_p300_3blocks_n200_2, type="m")
diff_clime_p300_3blocks_n200_3 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_3
norm_f_clime_p300_3blocks_n200_3 <- norm(diff_clime_p300_3blocks_n200_3, type="f")
norm_1_clime_p300_3blocks_n200_3 <- norm(diff_clime_p300_3blocks_n200_3, type="1")
norm_2_clime_p300_3blocks_n200_3 <- norm(diff_clime_p300_3blocks_n200_3, type="2")
norm_m_clime_p300_3blocks_n200_3 <- norm(diff_clime_p300_3blocks_n200_3, type="m")
diff_clime_p300_3blocks_n200_4 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_4
norm_f_clime_p300_3blocks_n200_4 <- norm(diff_clime_p300_3blocks_n200_4, type="f")
norm_1_clime_p300_3blocks_n200_4 <- norm(diff_clime_p300_3blocks_n200_4, type="1")
norm_2_clime_p300_3blocks_n200_4 <- norm(diff_clime_p300_3blocks_n200_4, type="2")
norm_m_clime_p300_3blocks_n200_4 <- norm(diff_clime_p300_3blocks_n200_4, type="m")
diff_clime_p300_3blocks_n200_5 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_5
norm_f_clime_p300_3blocks_n200_5 <- norm(diff_clime_p300_3blocks_n200_5, type="f")
norm_1_clime_p300_3blocks_n200_5 <- norm(diff_clime_p300_3blocks_n200_5, type="1")
norm_2_clime_p300_3blocks_n200_5 <- norm(diff_clime_p300_3blocks_n200_5, type="2")
norm_m_clime_p300_3blocks_n200_5 <- norm(diff_clime_p300_3blocks_n200_5, type="m")
diff_clime_p300_3blocks_n200_6 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_6
norm_f_clime_p300_3blocks_n200_6 <- norm(diff_clime_p300_3blocks_n200_6, type="f")
norm_1_clime_p300_3blocks_n200_6 <- norm(diff_clime_p300_3blocks_n200_6, type="1")
norm_2_clime_p300_3blocks_n200_6 <- norm(diff_clime_p300_3blocks_n200_6, type="2")
norm_m_clime_p300_3blocks_n200_6 <- norm(diff_clime_p300_3blocks_n200_6, type="m")
diff_clime_p300_3blocks_n200_7 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_7
norm_f_clime_p300_3blocks_n200_7 <- norm(diff_clime_p300_3blocks_n200_7, type="f")
norm_1_clime_p300_3blocks_n200_7 <- norm(diff_clime_p300_3blocks_n200_7, type="1")
norm_2_clime_p300_3blocks_n200_7 <- norm(diff_clime_p300_3blocks_n200_7, type="2")
norm_m_clime_p300_3blocks_n200_7 <- norm(diff_clime_p300_3blocks_n200_7, type="m")
diff_clime_p300_3blocks_n200_8 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_8
norm_f_clime_p300_3blocks_n200_8 <- norm(diff_clime_p300_3blocks_n200_8, type="f")
norm_1_clime_p300_3blocks_n200_8 <- norm(diff_clime_p300_3blocks_n200_8, type="1")
norm_2_clime_p300_3blocks_n200_8 <- norm(diff_clime_p300_3blocks_n200_8, type="2")
norm_m_clime_p300_3blocks_n200_8 <- norm(diff_clime_p300_3blocks_n200_8, type="m")
diff_clime_p300_3blocks_n200_9 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_9
norm_f_clime_p300_3blocks_n200_9 <- norm(diff_clime_p300_3blocks_n200_9, type="f")
norm_1_clime_p300_3blocks_n200_9 <- norm(diff_clime_p300_3blocks_n200_9, type="1")
norm_2_clime_p300_3blocks_n200_9 <- norm(diff_clime_p300_3blocks_n200_9, type="2")
norm_m_clime_p300_3blocks_n200_9 <- norm(diff_clime_p300_3blocks_n200_9, type="m")
diff_clime_p300_3blocks_n200_10 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_10
norm_f_clime_p300_3blocks_n200_10 <- norm(diff_clime_p300_3blocks_n200_10, type="f")
norm_1_clime_p300_3blocks_n200_10 <- norm(diff_clime_p300_3blocks_n200_10, type="1")
norm_2_clime_p300_3blocks_n200_10 <- norm(diff_clime_p300_3blocks_n200_10, type="2")
norm_m_clime_p300_3blocks_n200_10 <- norm(diff_clime_p300_3blocks_n200_10, type="m")
diff_clime_p300_3blocks_n200_11 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_11
norm_f_clime_p300_3blocks_n200_11 <- norm(diff_clime_p300_3blocks_n200_11, type="f")
norm_1_clime_p300_3blocks_n200_11 <- norm(diff_clime_p300_3blocks_n200_11, type="1")
norm_2_clime_p300_3blocks_n200_11 <- norm(diff_clime_p300_3blocks_n200_11, type="2")
norm_m_clime_p300_3blocks_n200_11 <- norm(diff_clime_p300_3blocks_n200_11, type="m")
diff_clime_p300_3blocks_n200_12 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_12
norm_f_clime_p300_3blocks_n200_12 <- norm(diff_clime_p300_3blocks_n200_12, type="f")
norm_1_clime_p300_3blocks_n200_12 <- norm(diff_clime_p300_3blocks_n200_12, type="1")
norm_2_clime_p300_3blocks_n200_12 <- norm(diff_clime_p300_3blocks_n200_12, type="2")
norm_m_clime_p300_3blocks_n200_12 <- norm(diff_clime_p300_3blocks_n200_12, type="m")
diff_clime_p300_3blocks_n200_13 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_13
norm_f_clime_p300_3blocks_n200_13 <- norm(diff_clime_p300_3blocks_n200_13, type="f")
norm_1_clime_p300_3blocks_n200_13 <- norm(diff_clime_p300_3blocks_n200_13, type="1")
norm_2_clime_p300_3blocks_n200_13 <- norm(diff_clime_p300_3blocks_n200_13, type="2")
norm_m_clime_p300_3blocks_n200_13 <- norm(diff_clime_p300_3blocks_n200_13, type="m")
diff_clime_p300_3blocks_n200_14 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_14
norm_f_clime_p300_3blocks_n200_14 <- norm(diff_clime_p300_3blocks_n200_14, type="f")
norm_1_clime_p300_3blocks_n200_14 <- norm(diff_clime_p300_3blocks_n200_14, type="1")
norm_2_clime_p300_3blocks_n200_14 <- norm(diff_clime_p300_3blocks_n200_14, type="2")
norm_m_clime_p300_3blocks_n200_14 <- norm(diff_clime_p300_3blocks_n200_14, type="m")
diff_clime_p300_3blocks_n200_15 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_15
norm_f_clime_p300_3blocks_n200_15 <- norm(diff_clime_p300_3blocks_n200_15, type="f")
norm_1_clime_p300_3blocks_n200_15 <- norm(diff_clime_p300_3blocks_n200_15, type="1")
norm_2_clime_p300_3blocks_n200_15 <- norm(diff_clime_p300_3blocks_n200_15, type="2")
norm_m_clime_p300_3blocks_n200_15 <- norm(diff_clime_p300_3blocks_n200_15, type="m")
diff_clime_p300_3blocks_n200_16 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_16
norm_f_clime_p300_3blocks_n200_16 <- norm(diff_clime_p300_3blocks_n200_16, type="f")
norm_1_clime_p300_3blocks_n200_16 <- norm(diff_clime_p300_3blocks_n200_16, type="1")
norm_2_clime_p300_3blocks_n200_16 <- norm(diff_clime_p300_3blocks_n200_16, type="2")
norm_m_clime_p300_3blocks_n200_16 <- norm(diff_clime_p300_3blocks_n200_16, type="m")
diff_clime_p300_3blocks_n200_17 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_17
norm_f_clime_p300_3blocks_n200_17 <- norm(diff_clime_p300_3blocks_n200_17, type="f")
norm_1_clime_p300_3blocks_n200_17 <- norm(diff_clime_p300_3blocks_n200_17, type="1")
norm_2_clime_p300_3blocks_n200_17 <- norm(diff_clime_p300_3blocks_n200_17, type="2")
norm_m_clime_p300_3blocks_n200_17 <- norm(diff_clime_p300_3blocks_n200_17, type="m")
diff_clime_p300_3blocks_n200_18 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_18
norm_f_clime_p300_3blocks_n200_18 <- norm(diff_clime_p300_3blocks_n200_18, type="f")
norm_1_clime_p300_3blocks_n200_18 <- norm(diff_clime_p300_3blocks_n200_18, type="1")
norm_2_clime_p300_3blocks_n200_18 <- norm(diff_clime_p300_3blocks_n200_18, type="2")
norm_m_clime_p300_3blocks_n200_18 <- norm(diff_clime_p300_3blocks_n200_18, type="m")
diff_clime_p300_3blocks_n200_19 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_19
norm_f_clime_p300_3blocks_n200_19 <- norm(diff_clime_p300_3blocks_n200_19, type="f")
norm_1_clime_p300_3blocks_n200_19 <- norm(diff_clime_p300_3blocks_n200_19, type="1")
norm_2_clime_p300_3blocks_n200_19 <- norm(diff_clime_p300_3blocks_n200_19, type="2")
norm_m_clime_p300_3blocks_n200_19 <- norm(diff_clime_p300_3blocks_n200_19, type="m")
diff_clime_p300_3blocks_n200_20 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_20
norm_f_clime_p300_3blocks_n200_20 <- norm(diff_clime_p300_3blocks_n200_20, type="f")
norm_1_clime_p300_3blocks_n200_20 <- norm(diff_clime_p300_3blocks_n200_20, type="1")
norm_2_clime_p300_3blocks_n200_20 <- norm(diff_clime_p300_3blocks_n200_20, type="2")
norm_m_clime_p300_3blocks_n200_20 <- norm(diff_clime_p300_3blocks_n200_20, type="m")
diff_clime_p300_3blocks_n200_21 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_21
norm_f_clime_p300_3blocks_n200_21 <- norm(diff_clime_p300_3blocks_n200_21, type="f")
norm_1_clime_p300_3blocks_n200_21 <- norm(diff_clime_p300_3blocks_n200_21, type="1")
norm_2_clime_p300_3blocks_n200_21 <- norm(diff_clime_p300_3blocks_n200_21, type="2")
norm_m_clime_p300_3blocks_n200_21 <- norm(diff_clime_p300_3blocks_n200_21, type="m")
diff_clime_p300_3blocks_n200_22 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_22
norm_f_clime_p300_3blocks_n200_22 <- norm(diff_clime_p300_3blocks_n200_22, type="f")
norm_1_clime_p300_3blocks_n200_22 <- norm(diff_clime_p300_3blocks_n200_22, type="1")
norm_2_clime_p300_3blocks_n200_22 <- norm(diff_clime_p300_3blocks_n200_22, type="2")
norm_m_clime_p300_3blocks_n200_22 <- norm(diff_clime_p300_3blocks_n200_22, type="m")
diff_clime_p300_3blocks_n200_23 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_23
norm_f_clime_p300_3blocks_n200_23 <- norm(diff_clime_p300_3blocks_n200_23, type="f")
norm_1_clime_p300_3blocks_n200_23 <- norm(diff_clime_p300_3blocks_n200_23, type="1")
norm_2_clime_p300_3blocks_n200_23 <- norm(diff_clime_p300_3blocks_n200_23, type="2")
norm_m_clime_p300_3blocks_n200_23 <- norm(diff_clime_p300_3blocks_n200_23, type="m")
diff_clime_p300_3blocks_n200_24 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_24
norm_f_clime_p300_3blocks_n200_24 <- norm(diff_clime_p300_3blocks_n200_24, type="f")
norm_1_clime_p300_3blocks_n200_24 <- norm(diff_clime_p300_3blocks_n200_24, type="1")
norm_2_clime_p300_3blocks_n200_24 <- norm(diff_clime_p300_3blocks_n200_24, type="2")
norm_m_clime_p300_3blocks_n200_24 <- norm(diff_clime_p300_3blocks_n200_24, type="m")
diff_clime_p300_3blocks_n200_25 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_25
norm_f_clime_p300_3blocks_n200_25 <- norm(diff_clime_p300_3blocks_n200_25, type="f")
norm_1_clime_p300_3blocks_n200_25 <- norm(diff_clime_p300_3blocks_n200_25, type="1")
norm_2_clime_p300_3blocks_n200_25 <- norm(diff_clime_p300_3blocks_n200_25, type="2")
norm_m_clime_p300_3blocks_n200_25 <- norm(diff_clime_p300_3blocks_n200_25, type="m")
diff_clime_p300_3blocks_n200_26 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_26
norm_f_clime_p300_3blocks_n200_26 <- norm(diff_clime_p300_3blocks_n200_26, type="f")
norm_1_clime_p300_3blocks_n200_26 <- norm(diff_clime_p300_3blocks_n200_26, type="1")
norm_2_clime_p300_3blocks_n200_26 <- norm(diff_clime_p300_3blocks_n200_26, type="2")
norm_m_clime_p300_3blocks_n200_26 <- norm(diff_clime_p300_3blocks_n200_26, type="m")
diff_clime_p300_3blocks_n200_27 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_27
norm_f_clime_p300_3blocks_n200_27 <- norm(diff_clime_p300_3blocks_n200_27, type="f")
norm_1_clime_p300_3blocks_n200_27 <- norm(diff_clime_p300_3blocks_n200_27, type="1")
norm_2_clime_p300_3blocks_n200_27 <- norm(diff_clime_p300_3blocks_n200_27, type="2")
norm_m_clime_p300_3blocks_n200_27 <- norm(diff_clime_p300_3blocks_n200_27, type="m")
diff_clime_p300_3blocks_n200_28 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_28
norm_f_clime_p300_3blocks_n200_28 <- norm(diff_clime_p300_3blocks_n200_28, type="f")
norm_1_clime_p300_3blocks_n200_28 <- norm(diff_clime_p300_3blocks_n200_28, type="1")
norm_2_clime_p300_3blocks_n200_28 <- norm(diff_clime_p300_3blocks_n200_28, type="2")
norm_m_clime_p300_3blocks_n200_28 <- norm(diff_clime_p300_3blocks_n200_28, type="m")
diff_clime_p300_3blocks_n200_29 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_29
norm_f_clime_p300_3blocks_n200_29 <- norm(diff_clime_p300_3blocks_n200_29, type="f")
norm_1_clime_p300_3blocks_n200_29 <- norm(diff_clime_p300_3blocks_n200_29, type="1")
norm_2_clime_p300_3blocks_n200_29 <- norm(diff_clime_p300_3blocks_n200_29, type="2")
norm_m_clime_p300_3blocks_n200_29 <- norm(diff_clime_p300_3blocks_n200_29, type="m")
diff_clime_p300_3blocks_n200_30 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_30
norm_f_clime_p300_3blocks_n200_30 <- norm(diff_clime_p300_3blocks_n200_30, type="f")
norm_1_clime_p300_3blocks_n200_30 <- norm(diff_clime_p300_3blocks_n200_30, type="1")
norm_2_clime_p300_3blocks_n200_30 <- norm(diff_clime_p300_3blocks_n200_30, type="2")
norm_m_clime_p300_3blocks_n200_30 <- norm(diff_clime_p300_3blocks_n200_30, type="m")
diff_clime_p300_3blocks_n200_31 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_31
norm_f_clime_p300_3blocks_n200_31 <- norm(diff_clime_p300_3blocks_n200_31, type="f")
norm_1_clime_p300_3blocks_n200_31 <- norm(diff_clime_p300_3blocks_n200_31, type="1")
norm_2_clime_p300_3blocks_n200_31 <- norm(diff_clime_p300_3blocks_n200_31, type="2")
norm_m_clime_p300_3blocks_n200_31 <- norm(diff_clime_p300_3blocks_n200_31, type="m")
diff_clime_p300_3blocks_n200_32 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_32
norm_f_clime_p300_3blocks_n200_32 <- norm(diff_clime_p300_3blocks_n200_32, type="f")
norm_1_clime_p300_3blocks_n200_32 <- norm(diff_clime_p300_3blocks_n200_32, type="1")
norm_2_clime_p300_3blocks_n200_32 <- norm(diff_clime_p300_3blocks_n200_32, type="2")
norm_m_clime_p300_3blocks_n200_32 <- norm(diff_clime_p300_3blocks_n200_32, type="m")
diff_clime_p300_3blocks_n200_33 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_33
norm_f_clime_p300_3blocks_n200_33 <- norm(diff_clime_p300_3blocks_n200_33, type="f")
norm_1_clime_p300_3blocks_n200_33 <- norm(diff_clime_p300_3blocks_n200_33, type="1")
norm_2_clime_p300_3blocks_n200_33 <- norm(diff_clime_p300_3blocks_n200_33, type="2")
norm_m_clime_p300_3blocks_n200_33 <- norm(diff_clime_p300_3blocks_n200_33, type="m")
diff_clime_p300_3blocks_n200_34 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_34
norm_f_clime_p300_3blocks_n200_34 <- norm(diff_clime_p300_3blocks_n200_34, type="f")
norm_1_clime_p300_3blocks_n200_34 <- norm(diff_clime_p300_3blocks_n200_34, type="1")
norm_2_clime_p300_3blocks_n200_34 <- norm(diff_clime_p300_3blocks_n200_34, type="2")
norm_m_clime_p300_3blocks_n200_34 <- norm(diff_clime_p300_3blocks_n200_34, type="m")
diff_clime_p300_3blocks_n200_35 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_35
norm_f_clime_p300_3blocks_n200_35 <- norm(diff_clime_p300_3blocks_n200_35, type="f")
norm_1_clime_p300_3blocks_n200_35 <- norm(diff_clime_p300_3blocks_n200_35, type="1")
norm_2_clime_p300_3blocks_n200_35 <- norm(diff_clime_p300_3blocks_n200_35, type="2")
norm_m_clime_p300_3blocks_n200_35 <- norm(diff_clime_p300_3blocks_n200_35, type="m")
diff_clime_p300_3blocks_n200_36 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_36
norm_f_clime_p300_3blocks_n200_36 <- norm(diff_clime_p300_3blocks_n200_36, type="f")
norm_1_clime_p300_3blocks_n200_36 <- norm(diff_clime_p300_3blocks_n200_36, type="1")
norm_2_clime_p300_3blocks_n200_36 <- norm(diff_clime_p300_3blocks_n200_36, type="2")
norm_m_clime_p300_3blocks_n200_36 <- norm(diff_clime_p300_3blocks_n200_36, type="m")
diff_clime_p300_3blocks_n200_37 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_37
norm_f_clime_p300_3blocks_n200_37 <- norm(diff_clime_p300_3blocks_n200_37, type="f")
norm_1_clime_p300_3blocks_n200_37 <- norm(diff_clime_p300_3blocks_n200_37, type="1")
norm_2_clime_p300_3blocks_n200_37 <- norm(diff_clime_p300_3blocks_n200_37, type="2")
norm_m_clime_p300_3blocks_n200_37 <- norm(diff_clime_p300_3blocks_n200_37, type="m")
diff_clime_p300_3blocks_n200_38 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_38
norm_f_clime_p300_3blocks_n200_38 <- norm(diff_clime_p300_3blocks_n200_38, type="f")
norm_1_clime_p300_3blocks_n200_38 <- norm(diff_clime_p300_3blocks_n200_38, type="1")
norm_2_clime_p300_3blocks_n200_38 <- norm(diff_clime_p300_3blocks_n200_38, type="2")
norm_m_clime_p300_3blocks_n200_38 <- norm(diff_clime_p300_3blocks_n200_38, type="m")
diff_clime_p300_3blocks_n200_39 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_39
norm_f_clime_p300_3blocks_n200_39 <- norm(diff_clime_p300_3blocks_n200_39, type="f")
norm_1_clime_p300_3blocks_n200_39 <- norm(diff_clime_p300_3blocks_n200_39, type="1")
norm_2_clime_p300_3blocks_n200_39 <- norm(diff_clime_p300_3blocks_n200_39, type="2")
norm_m_clime_p300_3blocks_n200_39 <- norm(diff_clime_p300_3blocks_n200_39, type="m")
diff_clime_p300_3blocks_n200_40 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_40
norm_f_clime_p300_3blocks_n200_40 <- norm(diff_clime_p300_3blocks_n200_40, type="f")
norm_1_clime_p300_3blocks_n200_40 <- norm(diff_clime_p300_3blocks_n200_40, type="1")
norm_2_clime_p300_3blocks_n200_40 <- norm(diff_clime_p300_3blocks_n200_40, type="2")
norm_m_clime_p300_3blocks_n200_40 <- norm(diff_clime_p300_3blocks_n200_40, type="m")
diff_clime_p300_3blocks_n200_41 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_41
norm_f_clime_p300_3blocks_n200_41 <- norm(diff_clime_p300_3blocks_n200_41, type="f")
norm_1_clime_p300_3blocks_n200_41 <- norm(diff_clime_p300_3blocks_n200_41, type="1")
norm_2_clime_p300_3blocks_n200_41 <- norm(diff_clime_p300_3blocks_n200_41, type="2")
norm_m_clime_p300_3blocks_n200_41 <- norm(diff_clime_p300_3blocks_n200_41, type="m")
diff_clime_p300_3blocks_n200_42 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_42
norm_f_clime_p300_3blocks_n200_42 <- norm(diff_clime_p300_3blocks_n200_42, type="f")
norm_1_clime_p300_3blocks_n200_42 <- norm(diff_clime_p300_3blocks_n200_42, type="1")
norm_2_clime_p300_3blocks_n200_42 <- norm(diff_clime_p300_3blocks_n200_42, type="2")
norm_m_clime_p300_3blocks_n200_42 <- norm(diff_clime_p300_3blocks_n200_42, type="m")
diff_clime_p300_3blocks_n200_43 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_43
norm_f_clime_p300_3blocks_n200_43 <- norm(diff_clime_p300_3blocks_n200_43, type="f")
norm_1_clime_p300_3blocks_n200_43 <- norm(diff_clime_p300_3blocks_n200_43, type="1")
norm_2_clime_p300_3blocks_n200_43 <- norm(diff_clime_p300_3blocks_n200_43, type="2")
norm_m_clime_p300_3blocks_n200_43 <- norm(diff_clime_p300_3blocks_n200_43, type="m")
diff_clime_p300_3blocks_n200_44 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_44
norm_f_clime_p300_3blocks_n200_44 <- norm(diff_clime_p300_3blocks_n200_44, type="f")
norm_1_clime_p300_3blocks_n200_44 <- norm(diff_clime_p300_3blocks_n200_44, type="1")
norm_2_clime_p300_3blocks_n200_44 <- norm(diff_clime_p300_3blocks_n200_44, type="2")
norm_m_clime_p300_3blocks_n200_44 <- norm(diff_clime_p300_3blocks_n200_44, type="m")
diff_clime_p300_3blocks_n200_45 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_45
norm_f_clime_p300_3blocks_n200_45 <- norm(diff_clime_p300_3blocks_n200_45, type="f")
norm_1_clime_p300_3blocks_n200_45 <- norm(diff_clime_p300_3blocks_n200_45, type="1")
norm_2_clime_p300_3blocks_n200_45 <- norm(diff_clime_p300_3blocks_n200_45, type="2")
norm_m_clime_p300_3blocks_n200_45 <- norm(diff_clime_p300_3blocks_n200_45, type="m")
diff_clime_p300_3blocks_n200_46 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_46
norm_f_clime_p300_3blocks_n200_46 <- norm(diff_clime_p300_3blocks_n200_46, type="f")
norm_1_clime_p300_3blocks_n200_46 <- norm(diff_clime_p300_3blocks_n200_46, type="1")
norm_2_clime_p300_3blocks_n200_46 <- norm(diff_clime_p300_3blocks_n200_46, type="2")
norm_m_clime_p300_3blocks_n200_46 <- norm(diff_clime_p300_3blocks_n200_46, type="m")
diff_clime_p300_3blocks_n200_47 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_47
norm_f_clime_p300_3blocks_n200_47 <- norm(diff_clime_p300_3blocks_n200_47, type="f")
norm_1_clime_p300_3blocks_n200_47 <- norm(diff_clime_p300_3blocks_n200_47, type="1")
norm_2_clime_p300_3blocks_n200_47 <- norm(diff_clime_p300_3blocks_n200_47, type="2")
norm_m_clime_p300_3blocks_n200_47 <- norm(diff_clime_p300_3blocks_n200_47, type="m")
diff_clime_p300_3blocks_n200_48 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_48
norm_f_clime_p300_3blocks_n200_48 <- norm(diff_clime_p300_3blocks_n200_48, type="f")
norm_1_clime_p300_3blocks_n200_48 <- norm(diff_clime_p300_3blocks_n200_48, type="1")
norm_2_clime_p300_3blocks_n200_48 <- norm(diff_clime_p300_3blocks_n200_48, type="2")
norm_m_clime_p300_3blocks_n200_48 <- norm(diff_clime_p300_3blocks_n200_48, type="m")
diff_clime_p300_3blocks_n200_49 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_49
norm_f_clime_p300_3blocks_n200_49 <- norm(diff_clime_p300_3blocks_n200_49, type="f")
norm_1_clime_p300_3blocks_n200_49 <- norm(diff_clime_p300_3blocks_n200_49, type="1")
norm_2_clime_p300_3blocks_n200_49 <- norm(diff_clime_p300_3blocks_n200_49, type="2")
norm_m_clime_p300_3blocks_n200_49 <- norm(diff_clime_p300_3blocks_n200_49, type="m")
diff_clime_p300_3blocks_n200_50 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_50
norm_f_clime_p300_3blocks_n200_50 <- norm(diff_clime_p300_3blocks_n200_50, type="f")
norm_1_clime_p300_3blocks_n200_50 <- norm(diff_clime_p300_3blocks_n200_50, type="1")
norm_2_clime_p300_3blocks_n200_50 <- norm(diff_clime_p300_3blocks_n200_50, type="2")
norm_m_clime_p300_3blocks_n200_50 <- norm(diff_clime_p300_3blocks_n200_50, type="m")
diff_clime_p300_3blocks_n200_51 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_51
norm_f_clime_p300_3blocks_n200_51 <- norm(diff_clime_p300_3blocks_n200_51, type="f")
norm_1_clime_p300_3blocks_n200_51 <- norm(diff_clime_p300_3blocks_n200_51, type="1")
norm_2_clime_p300_3blocks_n200_51 <- norm(diff_clime_p300_3blocks_n200_51, type="2")
norm_m_clime_p300_3blocks_n200_51 <- norm(diff_clime_p300_3blocks_n200_51, type="m")
diff_clime_p300_3blocks_n200_52 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_52
norm_f_clime_p300_3blocks_n200_52 <- norm(diff_clime_p300_3blocks_n200_52, type="f")
norm_1_clime_p300_3blocks_n200_52 <- norm(diff_clime_p300_3blocks_n200_52, type="1")
norm_2_clime_p300_3blocks_n200_52 <- norm(diff_clime_p300_3blocks_n200_52, type="2")
norm_m_clime_p300_3blocks_n200_52 <- norm(diff_clime_p300_3blocks_n200_52, type="m")
diff_clime_p300_3blocks_n200_53 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_53
norm_f_clime_p300_3blocks_n200_53 <- norm(diff_clime_p300_3blocks_n200_53, type="f")
norm_1_clime_p300_3blocks_n200_53 <- norm(diff_clime_p300_3blocks_n200_53, type="1")
norm_2_clime_p300_3blocks_n200_53 <- norm(diff_clime_p300_3blocks_n200_53, type="2")
norm_m_clime_p300_3blocks_n200_53 <- norm(diff_clime_p300_3blocks_n200_53, type="m")
diff_clime_p300_3blocks_n200_54 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_54
norm_f_clime_p300_3blocks_n200_54 <- norm(diff_clime_p300_3blocks_n200_54, type="f")
norm_1_clime_p300_3blocks_n200_54 <- norm(diff_clime_p300_3blocks_n200_54, type="1")
norm_2_clime_p300_3blocks_n200_54 <- norm(diff_clime_p300_3blocks_n200_54, type="2")
norm_m_clime_p300_3blocks_n200_54 <- norm(diff_clime_p300_3blocks_n200_54, type="m")
diff_clime_p300_3blocks_n200_55 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_55
norm_f_clime_p300_3blocks_n200_55 <- norm(diff_clime_p300_3blocks_n200_55, type="f")
norm_1_clime_p300_3blocks_n200_55 <- norm(diff_clime_p300_3blocks_n200_55, type="1")
norm_2_clime_p300_3blocks_n200_55 <- norm(diff_clime_p300_3blocks_n200_55, type="2")
norm_m_clime_p300_3blocks_n200_55 <- norm(diff_clime_p300_3blocks_n200_55, type="m")
diff_clime_p300_3blocks_n200_56 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_56
norm_f_clime_p300_3blocks_n200_56 <- norm(diff_clime_p300_3blocks_n200_56, type="f")
norm_1_clime_p300_3blocks_n200_56 <- norm(diff_clime_p300_3blocks_n200_56, type="1")
norm_2_clime_p300_3blocks_n200_56 <- norm(diff_clime_p300_3blocks_n200_56, type="2")
norm_m_clime_p300_3blocks_n200_56 <- norm(diff_clime_p300_3blocks_n200_56, type="m")
diff_clime_p300_3blocks_n200_57 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_57
norm_f_clime_p300_3blocks_n200_57 <- norm(diff_clime_p300_3blocks_n200_57, type="f")
norm_1_clime_p300_3blocks_n200_57 <- norm(diff_clime_p300_3blocks_n200_57, type="1")
norm_2_clime_p300_3blocks_n200_57 <- norm(diff_clime_p300_3blocks_n200_57, type="2")
norm_m_clime_p300_3blocks_n200_57 <- norm(diff_clime_p300_3blocks_n200_57, type="m")
diff_clime_p300_3blocks_n200_58 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_58
norm_f_clime_p300_3blocks_n200_58 <- norm(diff_clime_p300_3blocks_n200_58, type="f")
norm_1_clime_p300_3blocks_n200_58 <- norm(diff_clime_p300_3blocks_n200_58, type="1")
norm_2_clime_p300_3blocks_n200_58 <- norm(diff_clime_p300_3blocks_n200_58, type="2")
norm_m_clime_p300_3blocks_n200_58 <- norm(diff_clime_p300_3blocks_n200_58, type="m")
diff_clime_p300_3blocks_n200_59 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_59
norm_f_clime_p300_3blocks_n200_59 <- norm(diff_clime_p300_3blocks_n200_59, type="f")
norm_1_clime_p300_3blocks_n200_59 <- norm(diff_clime_p300_3blocks_n200_59, type="1")
norm_2_clime_p300_3blocks_n200_59 <- norm(diff_clime_p300_3blocks_n200_59, type="2")
norm_m_clime_p300_3blocks_n200_59 <- norm(diff_clime_p300_3blocks_n200_59, type="m")
diff_clime_p300_3blocks_n200_60 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_60
norm_f_clime_p300_3blocks_n200_60 <- norm(diff_clime_p300_3blocks_n200_60, type="f")
norm_1_clime_p300_3blocks_n200_60 <- norm(diff_clime_p300_3blocks_n200_60, type="1")
norm_2_clime_p300_3blocks_n200_60 <- norm(diff_clime_p300_3blocks_n200_60, type="2")
norm_m_clime_p300_3blocks_n200_60 <- norm(diff_clime_p300_3blocks_n200_60, type="m")
diff_clime_p300_3blocks_n200_61 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_61
norm_f_clime_p300_3blocks_n200_61 <- norm(diff_clime_p300_3blocks_n200_61, type="f")
norm_1_clime_p300_3blocks_n200_61 <- norm(diff_clime_p300_3blocks_n200_61, type="1")
norm_2_clime_p300_3blocks_n200_61 <- norm(diff_clime_p300_3blocks_n200_61, type="2")
norm_m_clime_p300_3blocks_n200_61 <- norm(diff_clime_p300_3blocks_n200_61, type="m")
diff_clime_p300_3blocks_n200_62 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_62
norm_f_clime_p300_3blocks_n200_62 <- norm(diff_clime_p300_3blocks_n200_62, type="f")
norm_1_clime_p300_3blocks_n200_62 <- norm(diff_clime_p300_3blocks_n200_62, type="1")
norm_2_clime_p300_3blocks_n200_62 <- norm(diff_clime_p300_3blocks_n200_62, type="2")
norm_m_clime_p300_3blocks_n200_62 <- norm(diff_clime_p300_3blocks_n200_62, type="m")
diff_clime_p300_3blocks_n200_63 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_63
norm_f_clime_p300_3blocks_n200_63 <- norm(diff_clime_p300_3blocks_n200_63, type="f")
norm_1_clime_p300_3blocks_n200_63 <- norm(diff_clime_p300_3blocks_n200_63, type="1")
norm_2_clime_p300_3blocks_n200_63 <- norm(diff_clime_p300_3blocks_n200_63, type="2")
norm_m_clime_p300_3blocks_n200_63 <- norm(diff_clime_p300_3blocks_n200_63, type="m")
diff_clime_p300_3blocks_n200_64 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_64
norm_f_clime_p300_3blocks_n200_64 <- norm(diff_clime_p300_3blocks_n200_64, type="f")
norm_1_clime_p300_3blocks_n200_64 <- norm(diff_clime_p300_3blocks_n200_64, type="1")
norm_2_clime_p300_3blocks_n200_64 <- norm(diff_clime_p300_3blocks_n200_64, type="2")
norm_m_clime_p300_3blocks_n200_64 <- norm(diff_clime_p300_3blocks_n200_64, type="m")
diff_clime_p300_3blocks_n200_65 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_65
norm_f_clime_p300_3blocks_n200_65 <- norm(diff_clime_p300_3blocks_n200_65, type="f")
norm_1_clime_p300_3blocks_n200_65 <- norm(diff_clime_p300_3blocks_n200_65, type="1")
norm_2_clime_p300_3blocks_n200_65 <- norm(diff_clime_p300_3blocks_n200_65, type="2")
norm_m_clime_p300_3blocks_n200_65 <- norm(diff_clime_p300_3blocks_n200_65, type="m")
diff_clime_p300_3blocks_n200_66 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_66
norm_f_clime_p300_3blocks_n200_66 <- norm(diff_clime_p300_3blocks_n200_66, type="f")
norm_1_clime_p300_3blocks_n200_66 <- norm(diff_clime_p300_3blocks_n200_66, type="1")
norm_2_clime_p300_3blocks_n200_66 <- norm(diff_clime_p300_3blocks_n200_66, type="2")
norm_m_clime_p300_3blocks_n200_66 <- norm(diff_clime_p300_3blocks_n200_66, type="m")
diff_clime_p300_3blocks_n200_67 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_67
norm_f_clime_p300_3blocks_n200_67 <- norm(diff_clime_p300_3blocks_n200_67, type="f")
norm_1_clime_p300_3blocks_n200_67 <- norm(diff_clime_p300_3blocks_n200_67, type="1")
norm_2_clime_p300_3blocks_n200_67 <- norm(diff_clime_p300_3blocks_n200_67, type="2")
norm_m_clime_p300_3blocks_n200_67 <- norm(diff_clime_p300_3blocks_n200_67, type="m")
diff_clime_p300_3blocks_n200_68 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_68
norm_f_clime_p300_3blocks_n200_68 <- norm(diff_clime_p300_3blocks_n200_68, type="f")
norm_1_clime_p300_3blocks_n200_68 <- norm(diff_clime_p300_3blocks_n200_68, type="1")
norm_2_clime_p300_3blocks_n200_68 <- norm(diff_clime_p300_3blocks_n200_68, type="2")
norm_m_clime_p300_3blocks_n200_68 <- norm(diff_clime_p300_3blocks_n200_68, type="m")
diff_clime_p300_3blocks_n200_69 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_69
norm_f_clime_p300_3blocks_n200_69 <- norm(diff_clime_p300_3blocks_n200_69, type="f")
norm_1_clime_p300_3blocks_n200_69 <- norm(diff_clime_p300_3blocks_n200_69, type="1")
norm_2_clime_p300_3blocks_n200_69 <- norm(diff_clime_p300_3blocks_n200_69, type="2")
norm_m_clime_p300_3blocks_n200_69 <- norm(diff_clime_p300_3blocks_n200_69, type="m")
diff_clime_p300_3blocks_n200_70 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_70
norm_f_clime_p300_3blocks_n200_70 <- norm(diff_clime_p300_3blocks_n200_70, type="f")
norm_1_clime_p300_3blocks_n200_70 <- norm(diff_clime_p300_3blocks_n200_70, type="1")
norm_2_clime_p300_3blocks_n200_70 <- norm(diff_clime_p300_3blocks_n200_70, type="2")
norm_m_clime_p300_3blocks_n200_70 <- norm(diff_clime_p300_3blocks_n200_70, type="m")
diff_clime_p300_3blocks_n200_71 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_71
norm_f_clime_p300_3blocks_n200_71 <- norm(diff_clime_p300_3blocks_n200_71, type="f")
norm_1_clime_p300_3blocks_n200_71 <- norm(diff_clime_p300_3blocks_n200_71, type="1")
norm_2_clime_p300_3blocks_n200_71 <- norm(diff_clime_p300_3blocks_n200_71, type="2")
norm_m_clime_p300_3blocks_n200_71 <- norm(diff_clime_p300_3blocks_n200_71, type="m")
diff_clime_p300_3blocks_n200_72 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_72
norm_f_clime_p300_3blocks_n200_72 <- norm(diff_clime_p300_3blocks_n200_72, type="f")
norm_1_clime_p300_3blocks_n200_72 <- norm(diff_clime_p300_3blocks_n200_72, type="1")
norm_2_clime_p300_3blocks_n200_72 <- norm(diff_clime_p300_3blocks_n200_72, type="2")
norm_m_clime_p300_3blocks_n200_72 <- norm(diff_clime_p300_3blocks_n200_72, type="m")
diff_clime_p300_3blocks_n200_73 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_73
norm_f_clime_p300_3blocks_n200_73 <- norm(diff_clime_p300_3blocks_n200_73, type="f")
norm_1_clime_p300_3blocks_n200_73 <- norm(diff_clime_p300_3blocks_n200_73, type="1")
norm_2_clime_p300_3blocks_n200_73 <- norm(diff_clime_p300_3blocks_n200_73, type="2")
norm_m_clime_p300_3blocks_n200_73 <- norm(diff_clime_p300_3blocks_n200_73, type="m")
diff_clime_p300_3blocks_n200_74 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_74
norm_f_clime_p300_3blocks_n200_74 <- norm(diff_clime_p300_3blocks_n200_74, type="f")
norm_1_clime_p300_3blocks_n200_74 <- norm(diff_clime_p300_3blocks_n200_74, type="1")
norm_2_clime_p300_3blocks_n200_74 <- norm(diff_clime_p300_3blocks_n200_74, type="2")
norm_m_clime_p300_3blocks_n200_74 <- norm(diff_clime_p300_3blocks_n200_74, type="m")
diff_clime_p300_3blocks_n200_75 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_75
norm_f_clime_p300_3blocks_n200_75 <- norm(diff_clime_p300_3blocks_n200_75, type="f")
norm_1_clime_p300_3blocks_n200_75 <- norm(diff_clime_p300_3blocks_n200_75, type="1")
norm_2_clime_p300_3blocks_n200_75 <- norm(diff_clime_p300_3blocks_n200_75, type="2")
norm_m_clime_p300_3blocks_n200_75 <- norm(diff_clime_p300_3blocks_n200_75, type="m")
diff_clime_p300_3blocks_n200_76 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_76
norm_f_clime_p300_3blocks_n200_76 <- norm(diff_clime_p300_3blocks_n200_76, type="f")
norm_1_clime_p300_3blocks_n200_76 <- norm(diff_clime_p300_3blocks_n200_76, type="1")
norm_2_clime_p300_3blocks_n200_76 <- norm(diff_clime_p300_3blocks_n200_76, type="2")
norm_m_clime_p300_3blocks_n200_76 <- norm(diff_clime_p300_3blocks_n200_76, type="m")
diff_clime_p300_3blocks_n200_77 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_77
norm_f_clime_p300_3blocks_n200_77 <- norm(diff_clime_p300_3blocks_n200_77, type="f")
norm_1_clime_p300_3blocks_n200_77 <- norm(diff_clime_p300_3blocks_n200_77, type="1")
norm_2_clime_p300_3blocks_n200_77 <- norm(diff_clime_p300_3blocks_n200_77, type="2")
norm_m_clime_p300_3blocks_n200_77 <- norm(diff_clime_p300_3blocks_n200_77, type="m")
diff_clime_p300_3blocks_n200_78 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_78
norm_f_clime_p300_3blocks_n200_78 <- norm(diff_clime_p300_3blocks_n200_78, type="f")
norm_1_clime_p300_3blocks_n200_78 <- norm(diff_clime_p300_3blocks_n200_78, type="1")
norm_2_clime_p300_3blocks_n200_78 <- norm(diff_clime_p300_3blocks_n200_78, type="2")
norm_m_clime_p300_3blocks_n200_78 <- norm(diff_clime_p300_3blocks_n200_78, type="m")
diff_clime_p300_3blocks_n200_79 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_79
norm_f_clime_p300_3blocks_n200_79 <- norm(diff_clime_p300_3blocks_n200_79, type="f")
norm_1_clime_p300_3blocks_n200_79 <- norm(diff_clime_p300_3blocks_n200_79, type="1")
norm_2_clime_p300_3blocks_n200_79 <- norm(diff_clime_p300_3blocks_n200_79, type="2")
norm_m_clime_p300_3blocks_n200_79 <- norm(diff_clime_p300_3blocks_n200_79, type="m")
diff_clime_p300_3blocks_n200_80 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_80
norm_f_clime_p300_3blocks_n200_80 <- norm(diff_clime_p300_3blocks_n200_80, type="f")
norm_1_clime_p300_3blocks_n200_80 <- norm(diff_clime_p300_3blocks_n200_80, type="1")
norm_2_clime_p300_3blocks_n200_80 <- norm(diff_clime_p300_3blocks_n200_80, type="2")
norm_m_clime_p300_3blocks_n200_80 <- norm(diff_clime_p300_3blocks_n200_80, type="m")
diff_clime_p300_3blocks_n200_81 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_81
norm_f_clime_p300_3blocks_n200_81 <- norm(diff_clime_p300_3blocks_n200_81, type="f")
norm_1_clime_p300_3blocks_n200_81 <- norm(diff_clime_p300_3blocks_n200_81, type="1")
norm_2_clime_p300_3blocks_n200_81 <- norm(diff_clime_p300_3blocks_n200_81, type="2")
norm_m_clime_p300_3blocks_n200_81 <- norm(diff_clime_p300_3blocks_n200_81, type="m")
diff_clime_p300_3blocks_n200_82 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_82
norm_f_clime_p300_3blocks_n200_82 <- norm(diff_clime_p300_3blocks_n200_82, type="f")
norm_1_clime_p300_3blocks_n200_82 <- norm(diff_clime_p300_3blocks_n200_82, type="1")
norm_2_clime_p300_3blocks_n200_82 <- norm(diff_clime_p300_3blocks_n200_82, type="2")
norm_m_clime_p300_3blocks_n200_82 <- norm(diff_clime_p300_3blocks_n200_82, type="m")
diff_clime_p300_3blocks_n200_83 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_83
norm_f_clime_p300_3blocks_n200_83 <- norm(diff_clime_p300_3blocks_n200_83, type="f")
norm_1_clime_p300_3blocks_n200_83 <- norm(diff_clime_p300_3blocks_n200_83, type="1")
norm_2_clime_p300_3blocks_n200_83 <- norm(diff_clime_p300_3blocks_n200_83, type="2")
norm_m_clime_p300_3blocks_n200_83 <- norm(diff_clime_p300_3blocks_n200_83, type="m")
diff_clime_p300_3blocks_n200_84 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_84
norm_f_clime_p300_3blocks_n200_84 <- norm(diff_clime_p300_3blocks_n200_84, type="f")
norm_1_clime_p300_3blocks_n200_84 <- norm(diff_clime_p300_3blocks_n200_84, type="1")
norm_2_clime_p300_3blocks_n200_84 <- norm(diff_clime_p300_3blocks_n200_84, type="2")
norm_m_clime_p300_3blocks_n200_84 <- norm(diff_clime_p300_3blocks_n200_84, type="m")
diff_clime_p300_3blocks_n200_85 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_85
norm_f_clime_p300_3blocks_n200_85 <- norm(diff_clime_p300_3blocks_n200_85, type="f")
norm_1_clime_p300_3blocks_n200_85 <- norm(diff_clime_p300_3blocks_n200_85, type="1")
norm_2_clime_p300_3blocks_n200_85 <- norm(diff_clime_p300_3blocks_n200_85, type="2")
norm_m_clime_p300_3blocks_n200_85 <- norm(diff_clime_p300_3blocks_n200_85, type="m")
diff_clime_p300_3blocks_n200_86 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_86
norm_f_clime_p300_3blocks_n200_86 <- norm(diff_clime_p300_3blocks_n200_86, type="f")
norm_1_clime_p300_3blocks_n200_86 <- norm(diff_clime_p300_3blocks_n200_86, type="1")
norm_2_clime_p300_3blocks_n200_86 <- norm(diff_clime_p300_3blocks_n200_86, type="2")
norm_m_clime_p300_3blocks_n200_86 <- norm(diff_clime_p300_3blocks_n200_86, type="m")
diff_clime_p300_3blocks_n200_87 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_87
norm_f_clime_p300_3blocks_n200_87 <- norm(diff_clime_p300_3blocks_n200_87, type="f")
norm_1_clime_p300_3blocks_n200_87 <- norm(diff_clime_p300_3blocks_n200_87, type="1")
norm_2_clime_p300_3blocks_n200_87 <- norm(diff_clime_p300_3blocks_n200_87, type="2")
norm_m_clime_p300_3blocks_n200_87 <- norm(diff_clime_p300_3blocks_n200_87, type="m")
diff_clime_p300_3blocks_n200_88 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_88
norm_f_clime_p300_3blocks_n200_88 <- norm(diff_clime_p300_3blocks_n200_88, type="f")
norm_1_clime_p300_3blocks_n200_88 <- norm(diff_clime_p300_3blocks_n200_88, type="1")
norm_2_clime_p300_3blocks_n200_88 <- norm(diff_clime_p300_3blocks_n200_88, type="2")
norm_m_clime_p300_3blocks_n200_88 <- norm(diff_clime_p300_3blocks_n200_88, type="m")
diff_clime_p300_3blocks_n200_89 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_89
norm_f_clime_p300_3blocks_n200_89 <- norm(diff_clime_p300_3blocks_n200_89, type="f")
norm_1_clime_p300_3blocks_n200_89 <- norm(diff_clime_p300_3blocks_n200_89, type="1")
norm_2_clime_p300_3blocks_n200_89 <- norm(diff_clime_p300_3blocks_n200_89, type="2")
norm_m_clime_p300_3blocks_n200_89 <- norm(diff_clime_p300_3blocks_n200_89, type="m")
diff_clime_p300_3blocks_n200_90 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_90
norm_f_clime_p300_3blocks_n200_90 <- norm(diff_clime_p300_3blocks_n200_90, type="f")
norm_1_clime_p300_3blocks_n200_90 <- norm(diff_clime_p300_3blocks_n200_90, type="1")
norm_2_clime_p300_3blocks_n200_90 <- norm(diff_clime_p300_3blocks_n200_90, type="2")
norm_m_clime_p300_3blocks_n200_90 <- norm(diff_clime_p300_3blocks_n200_90, type="m")
diff_clime_p300_3blocks_n200_91 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_91
norm_f_clime_p300_3blocks_n200_91 <- norm(diff_clime_p300_3blocks_n200_91, type="f")
norm_1_clime_p300_3blocks_n200_91 <- norm(diff_clime_p300_3blocks_n200_91, type="1")
norm_2_clime_p300_3blocks_n200_91 <- norm(diff_clime_p300_3blocks_n200_91, type="2")
norm_m_clime_p300_3blocks_n200_91 <- norm(diff_clime_p300_3blocks_n200_91, type="m")
diff_clime_p300_3blocks_n200_92 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_92
norm_f_clime_p300_3blocks_n200_92 <- norm(diff_clime_p300_3blocks_n200_92, type="f")
norm_1_clime_p300_3blocks_n200_92 <- norm(diff_clime_p300_3blocks_n200_92, type="1")
norm_2_clime_p300_3blocks_n200_92 <- norm(diff_clime_p300_3blocks_n200_92, type="2")
norm_m_clime_p300_3blocks_n200_92 <- norm(diff_clime_p300_3blocks_n200_92, type="m")
diff_clime_p300_3blocks_n200_93 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_93
norm_f_clime_p300_3blocks_n200_93 <- norm(diff_clime_p300_3blocks_n200_93, type="f")
norm_1_clime_p300_3blocks_n200_93 <- norm(diff_clime_p300_3blocks_n200_93, type="1")
norm_2_clime_p300_3blocks_n200_93 <- norm(diff_clime_p300_3blocks_n200_93, type="2")
norm_m_clime_p300_3blocks_n200_93 <- norm(diff_clime_p300_3blocks_n200_93, type="m")
diff_clime_p300_3blocks_n200_94 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_94
norm_f_clime_p300_3blocks_n200_94 <- norm(diff_clime_p300_3blocks_n200_94, type="f")
norm_1_clime_p300_3blocks_n200_94 <- norm(diff_clime_p300_3blocks_n200_94, type="1")
norm_2_clime_p300_3blocks_n200_94 <- norm(diff_clime_p300_3blocks_n200_94, type="2")
norm_m_clime_p300_3blocks_n200_94 <- norm(diff_clime_p300_3blocks_n200_94, type="m")
diff_clime_p300_3blocks_n200_95 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_95
norm_f_clime_p300_3blocks_n200_95 <- norm(diff_clime_p300_3blocks_n200_95, type="f")
norm_1_clime_p300_3blocks_n200_95 <- norm(diff_clime_p300_3blocks_n200_95, type="1")
norm_2_clime_p300_3blocks_n200_95 <- norm(diff_clime_p300_3blocks_n200_95, type="2")
norm_m_clime_p300_3blocks_n200_95 <- norm(diff_clime_p300_3blocks_n200_95, type="m")
diff_clime_p300_3blocks_n200_96 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_96
norm_f_clime_p300_3blocks_n200_96 <- norm(diff_clime_p300_3blocks_n200_96, type="f")
norm_1_clime_p300_3blocks_n200_96 <- norm(diff_clime_p300_3blocks_n200_96, type="1")
norm_2_clime_p300_3blocks_n200_96 <- norm(diff_clime_p300_3blocks_n200_96, type="2")
norm_m_clime_p300_3blocks_n200_96 <- norm(diff_clime_p300_3blocks_n200_96, type="m")
diff_clime_p300_3blocks_n200_97 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_97
norm_f_clime_p300_3blocks_n200_97 <- norm(diff_clime_p300_3blocks_n200_97, type="f")
norm_1_clime_p300_3blocks_n200_97 <- norm(diff_clime_p300_3blocks_n200_97, type="1")
norm_2_clime_p300_3blocks_n200_97 <- norm(diff_clime_p300_3blocks_n200_97, type="2")
norm_m_clime_p300_3blocks_n200_97 <- norm(diff_clime_p300_3blocks_n200_97, type="m")
diff_clime_p300_3blocks_n200_98 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_98
norm_f_clime_p300_3blocks_n200_98 <- norm(diff_clime_p300_3blocks_n200_98, type="f")
norm_1_clime_p300_3blocks_n200_98 <- norm(diff_clime_p300_3blocks_n200_98, type="1")
norm_2_clime_p300_3blocks_n200_98 <- norm(diff_clime_p300_3blocks_n200_98, type="2")
norm_m_clime_p300_3blocks_n200_98 <- norm(diff_clime_p300_3blocks_n200_98, type="m")
diff_clime_p300_3blocks_n200_99 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_99
norm_f_clime_p300_3blocks_n200_99 <- norm(diff_clime_p300_3blocks_n200_99, type="f")
norm_1_clime_p300_3blocks_n200_99 <- norm(diff_clime_p300_3blocks_n200_99, type="1")
norm_2_clime_p300_3blocks_n200_99 <- norm(diff_clime_p300_3blocks_n200_99, type="2")
norm_m_clime_p300_3blocks_n200_99 <- norm(diff_clime_p300_3blocks_n200_99, type="m")
diff_clime_p300_3blocks_n200_100 <- true_precision_p300_3blocks - result_clime_p300_3blocks_n200_100
norm_f_clime_p300_3blocks_n200_100 <- norm(diff_clime_p300_3blocks_n200_100, type="f")
norm_1_clime_p300_3blocks_n200_100 <- norm(diff_clime_p300_3blocks_n200_100, type="1")
norm_2_clime_p300_3blocks_n200_100 <- norm(diff_clime_p300_3blocks_n200_100, type="2")
norm_m_clime_p300_3blocks_n200_100 <- norm(diff_clime_p300_3blocks_n200_100, type="m")

################### f norm ######################
norm_f_clime_p300_3blocks_n200 <- c(
  norm_f_clime_p300_3blocks_n200_1,
  norm_f_clime_p300_3blocks_n200_2,
  norm_f_clime_p300_3blocks_n200_3,
  norm_f_clime_p300_3blocks_n200_4,
  norm_f_clime_p300_3blocks_n200_5,
  norm_f_clime_p300_3blocks_n200_6,
  norm_f_clime_p300_3blocks_n200_7,
  norm_f_clime_p300_3blocks_n200_8,
  norm_f_clime_p300_3blocks_n200_9,
  norm_f_clime_p300_3blocks_n200_10,
  norm_f_clime_p300_3blocks_n200_11,
  norm_f_clime_p300_3blocks_n200_12,
  norm_f_clime_p300_3blocks_n200_13,
  norm_f_clime_p300_3blocks_n200_14,
  norm_f_clime_p300_3blocks_n200_15,
  norm_f_clime_p300_3blocks_n200_16,
  norm_f_clime_p300_3blocks_n200_17,
  norm_f_clime_p300_3blocks_n200_18,
  norm_f_clime_p300_3blocks_n200_19,
  norm_f_clime_p300_3blocks_n200_20,
  norm_f_clime_p300_3blocks_n200_21,
  norm_f_clime_p300_3blocks_n200_22,
  norm_f_clime_p300_3blocks_n200_23,
  norm_f_clime_p300_3blocks_n200_24,
  norm_f_clime_p300_3blocks_n200_25,
  norm_f_clime_p300_3blocks_n200_26,
  norm_f_clime_p300_3blocks_n200_27,
  norm_f_clime_p300_3blocks_n200_28,
  norm_f_clime_p300_3blocks_n200_29,
  norm_f_clime_p300_3blocks_n200_30,
  norm_f_clime_p300_3blocks_n200_31,
  norm_f_clime_p300_3blocks_n200_32,
  norm_f_clime_p300_3blocks_n200_33,
  norm_f_clime_p300_3blocks_n200_34,
  norm_f_clime_p300_3blocks_n200_35,
  norm_f_clime_p300_3blocks_n200_36,
  norm_f_clime_p300_3blocks_n200_37,
  norm_f_clime_p300_3blocks_n200_38,
  norm_f_clime_p300_3blocks_n200_39,
  norm_f_clime_p300_3blocks_n200_40,
  norm_f_clime_p300_3blocks_n200_41,
  norm_f_clime_p300_3blocks_n200_42,
  norm_f_clime_p300_3blocks_n200_43,
  norm_f_clime_p300_3blocks_n200_44,
  norm_f_clime_p300_3blocks_n200_45,
  norm_f_clime_p300_3blocks_n200_46,
  norm_f_clime_p300_3blocks_n200_47,
  norm_f_clime_p300_3blocks_n200_48,
  norm_f_clime_p300_3blocks_n200_49,
  norm_f_clime_p300_3blocks_n200_50,
  norm_f_clime_p300_3blocks_n200_51,
  norm_f_clime_p300_3blocks_n200_52,
  norm_f_clime_p300_3blocks_n200_53,
  norm_f_clime_p300_3blocks_n200_54,
  norm_f_clime_p300_3blocks_n200_55,
  norm_f_clime_p300_3blocks_n200_56,
  norm_f_clime_p300_3blocks_n200_57,
  norm_f_clime_p300_3blocks_n200_58,
  norm_f_clime_p300_3blocks_n200_59,
  norm_f_clime_p300_3blocks_n200_60,
  norm_f_clime_p300_3blocks_n200_61,
  norm_f_clime_p300_3blocks_n200_62,
  norm_f_clime_p300_3blocks_n200_63,
  norm_f_clime_p300_3blocks_n200_64,
  norm_f_clime_p300_3blocks_n200_65,
  norm_f_clime_p300_3blocks_n200_66,
  norm_f_clime_p300_3blocks_n200_67,
  norm_f_clime_p300_3blocks_n200_68,
  norm_f_clime_p300_3blocks_n200_69,
  norm_f_clime_p300_3blocks_n200_70,
  norm_f_clime_p300_3blocks_n200_71,
  norm_f_clime_p300_3blocks_n200_72,
  norm_f_clime_p300_3blocks_n200_73,
  norm_f_clime_p300_3blocks_n200_74,
  norm_f_clime_p300_3blocks_n200_75,
  norm_f_clime_p300_3blocks_n200_76,
  norm_f_clime_p300_3blocks_n200_77,
  norm_f_clime_p300_3blocks_n200_78,
  norm_f_clime_p300_3blocks_n200_79,
  norm_f_clime_p300_3blocks_n200_80,
  norm_f_clime_p300_3blocks_n200_81,
  norm_f_clime_p300_3blocks_n200_82,
  norm_f_clime_p300_3blocks_n200_83,
  norm_f_clime_p300_3blocks_n200_84,
  norm_f_clime_p300_3blocks_n200_85,
  norm_f_clime_p300_3blocks_n200_86,
  norm_f_clime_p300_3blocks_n200_87,
  norm_f_clime_p300_3blocks_n200_88,
  norm_f_clime_p300_3blocks_n200_89,
  norm_f_clime_p300_3blocks_n200_90,
  norm_f_clime_p300_3blocks_n200_91,
  norm_f_clime_p300_3blocks_n200_92,
  norm_f_clime_p300_3blocks_n200_93,
  norm_f_clime_p300_3blocks_n200_94,
  norm_f_clime_p300_3blocks_n200_95,
  norm_f_clime_p300_3blocks_n200_96,
  norm_f_clime_p300_3blocks_n200_97,
  norm_f_clime_p300_3blocks_n200_98,
  norm_f_clime_p300_3blocks_n200_99,
  norm_f_clime_p300_3blocks_n200_100
)

mean_norm_f_clime_p300_3blocks_n200 <- mean(norm_f_clime_p300_3blocks_n200)
sd_norm_f_clime_p300_3blocks_n200 <- sd(norm_f_clime_p300_3blocks_n200)

################### 1 norm ######################
norm_1_clime_p300_3blocks_n200 <- c(
  norm_1_clime_p300_3blocks_n200_1,
  norm_1_clime_p300_3blocks_n200_2,
  norm_1_clime_p300_3blocks_n200_3,
  norm_1_clime_p300_3blocks_n200_4,
  norm_1_clime_p300_3blocks_n200_5,
  norm_1_clime_p300_3blocks_n200_6,
  norm_1_clime_p300_3blocks_n200_7,
  norm_1_clime_p300_3blocks_n200_8,
  norm_1_clime_p300_3blocks_n200_9,
  norm_1_clime_p300_3blocks_n200_10,
  norm_1_clime_p300_3blocks_n200_11,
  norm_1_clime_p300_3blocks_n200_12,
  norm_1_clime_p300_3blocks_n200_13,
  norm_1_clime_p300_3blocks_n200_14,
  norm_1_clime_p300_3blocks_n200_15,
  norm_1_clime_p300_3blocks_n200_16,
  norm_1_clime_p300_3blocks_n200_17,
  norm_1_clime_p300_3blocks_n200_18,
  norm_1_clime_p300_3blocks_n200_19,
  norm_1_clime_p300_3blocks_n200_20,
  norm_1_clime_p300_3blocks_n200_21,
  norm_1_clime_p300_3blocks_n200_22,
  norm_1_clime_p300_3blocks_n200_23,
  norm_1_clime_p300_3blocks_n200_24,
  norm_1_clime_p300_3blocks_n200_25,
  norm_1_clime_p300_3blocks_n200_26,
  norm_1_clime_p300_3blocks_n200_27,
  norm_1_clime_p300_3blocks_n200_28,
  norm_1_clime_p300_3blocks_n200_29,
  norm_1_clime_p300_3blocks_n200_30,
  norm_1_clime_p300_3blocks_n200_31,
  norm_1_clime_p300_3blocks_n200_32,
  norm_1_clime_p300_3blocks_n200_33,
  norm_1_clime_p300_3blocks_n200_34,
  norm_1_clime_p300_3blocks_n200_35,
  norm_1_clime_p300_3blocks_n200_36,
  norm_1_clime_p300_3blocks_n200_37,
  norm_1_clime_p300_3blocks_n200_38,
  norm_1_clime_p300_3blocks_n200_39,
  norm_1_clime_p300_3blocks_n200_40,
  norm_1_clime_p300_3blocks_n200_41,
  norm_1_clime_p300_3blocks_n200_42,
  norm_1_clime_p300_3blocks_n200_43,
  norm_1_clime_p300_3blocks_n200_44,
  norm_1_clime_p300_3blocks_n200_45,
  norm_1_clime_p300_3blocks_n200_46,
  norm_1_clime_p300_3blocks_n200_47,
  norm_1_clime_p300_3blocks_n200_48,
  norm_1_clime_p300_3blocks_n200_49,
  norm_1_clime_p300_3blocks_n200_50,
  norm_1_clime_p300_3blocks_n200_51,
  norm_1_clime_p300_3blocks_n200_52,
  norm_1_clime_p300_3blocks_n200_53,
  norm_1_clime_p300_3blocks_n200_54,
  norm_1_clime_p300_3blocks_n200_55,
  norm_1_clime_p300_3blocks_n200_56,
  norm_1_clime_p300_3blocks_n200_57,
  norm_1_clime_p300_3blocks_n200_58,
  norm_1_clime_p300_3blocks_n200_59,
  norm_1_clime_p300_3blocks_n200_60,
  norm_1_clime_p300_3blocks_n200_61,
  norm_1_clime_p300_3blocks_n200_62,
  norm_1_clime_p300_3blocks_n200_63,
  norm_1_clime_p300_3blocks_n200_64,
  norm_1_clime_p300_3blocks_n200_65,
  norm_1_clime_p300_3blocks_n200_66,
  norm_1_clime_p300_3blocks_n200_67,
  norm_1_clime_p300_3blocks_n200_68,
  norm_1_clime_p300_3blocks_n200_69,
  norm_1_clime_p300_3blocks_n200_70,
  norm_1_clime_p300_3blocks_n200_71,
  norm_1_clime_p300_3blocks_n200_72,
  norm_1_clime_p300_3blocks_n200_73,
  norm_1_clime_p300_3blocks_n200_74,
  norm_1_clime_p300_3blocks_n200_75,
  norm_1_clime_p300_3blocks_n200_76,
  norm_1_clime_p300_3blocks_n200_77,
  norm_1_clime_p300_3blocks_n200_78,
  norm_1_clime_p300_3blocks_n200_79,
  norm_1_clime_p300_3blocks_n200_80,
  norm_1_clime_p300_3blocks_n200_81,
  norm_1_clime_p300_3blocks_n200_82,
  norm_1_clime_p300_3blocks_n200_83,
  norm_1_clime_p300_3blocks_n200_84,
  norm_1_clime_p300_3blocks_n200_85,
  norm_1_clime_p300_3blocks_n200_86,
  norm_1_clime_p300_3blocks_n200_87,
  norm_1_clime_p300_3blocks_n200_88,
  norm_1_clime_p300_3blocks_n200_89,
  norm_1_clime_p300_3blocks_n200_90,
  norm_1_clime_p300_3blocks_n200_91,
  norm_1_clime_p300_3blocks_n200_92,
  norm_1_clime_p300_3blocks_n200_93,
  norm_1_clime_p300_3blocks_n200_94,
  norm_1_clime_p300_3blocks_n200_95,
  norm_1_clime_p300_3blocks_n200_96,
  norm_1_clime_p300_3blocks_n200_97,
  norm_1_clime_p300_3blocks_n200_98,
  norm_1_clime_p300_3blocks_n200_99,
  norm_1_clime_p300_3blocks_n200_100
)

mean_norm_1_clime_p300_3blocks_n200 <- mean(norm_1_clime_p300_3blocks_n200)
sd_norm_1_clime_p300_3blocks_n200 <- sd(norm_1_clime_p300_3blocks_n200)

################### 2 norm ######################
norm_2_clime_p300_3blocks_n200 <- c(
  norm_2_clime_p300_3blocks_n200_1,
  norm_2_clime_p300_3blocks_n200_2,
  norm_2_clime_p300_3blocks_n200_3,
  norm_2_clime_p300_3blocks_n200_4,
  norm_2_clime_p300_3blocks_n200_5,
  norm_2_clime_p300_3blocks_n200_6,
  norm_2_clime_p300_3blocks_n200_7,
  norm_2_clime_p300_3blocks_n200_8,
  norm_2_clime_p300_3blocks_n200_9,
  norm_2_clime_p300_3blocks_n200_10,
  norm_2_clime_p300_3blocks_n200_11,
  norm_2_clime_p300_3blocks_n200_12,
  norm_2_clime_p300_3blocks_n200_13,
  norm_2_clime_p300_3blocks_n200_14,
  norm_2_clime_p300_3blocks_n200_15,
  norm_2_clime_p300_3blocks_n200_16,
  norm_2_clime_p300_3blocks_n200_17,
  norm_2_clime_p300_3blocks_n200_18,
  norm_2_clime_p300_3blocks_n200_19,
  norm_2_clime_p300_3blocks_n200_20,
  norm_2_clime_p300_3blocks_n200_21,
  norm_2_clime_p300_3blocks_n200_22,
  norm_2_clime_p300_3blocks_n200_23,
  norm_2_clime_p300_3blocks_n200_24,
  norm_2_clime_p300_3blocks_n200_25,
  norm_2_clime_p300_3blocks_n200_26,
  norm_2_clime_p300_3blocks_n200_27,
  norm_2_clime_p300_3blocks_n200_28,
  norm_2_clime_p300_3blocks_n200_29,
  norm_2_clime_p300_3blocks_n200_30,
  norm_2_clime_p300_3blocks_n200_31,
  norm_2_clime_p300_3blocks_n200_32,
  norm_2_clime_p300_3blocks_n200_33,
  norm_2_clime_p300_3blocks_n200_34,
  norm_2_clime_p300_3blocks_n200_35,
  norm_2_clime_p300_3blocks_n200_36,
  norm_2_clime_p300_3blocks_n200_37,
  norm_2_clime_p300_3blocks_n200_38,
  norm_2_clime_p300_3blocks_n200_39,
  norm_2_clime_p300_3blocks_n200_40,
  norm_2_clime_p300_3blocks_n200_41,
  norm_2_clime_p300_3blocks_n200_42,
  norm_2_clime_p300_3blocks_n200_43,
  norm_2_clime_p300_3blocks_n200_44,
  norm_2_clime_p300_3blocks_n200_45,
  norm_2_clime_p300_3blocks_n200_46,
  norm_2_clime_p300_3blocks_n200_47,
  norm_2_clime_p300_3blocks_n200_48,
  norm_2_clime_p300_3blocks_n200_49,
  norm_2_clime_p300_3blocks_n200_50,
  norm_2_clime_p300_3blocks_n200_51,
  norm_2_clime_p300_3blocks_n200_52,
  norm_2_clime_p300_3blocks_n200_53,
  norm_2_clime_p300_3blocks_n200_54,
  norm_2_clime_p300_3blocks_n200_55,
  norm_2_clime_p300_3blocks_n200_56,
  norm_2_clime_p300_3blocks_n200_57,
  norm_2_clime_p300_3blocks_n200_58,
  norm_2_clime_p300_3blocks_n200_59,
  norm_2_clime_p300_3blocks_n200_60,
  norm_2_clime_p300_3blocks_n200_61,
  norm_2_clime_p300_3blocks_n200_62,
  norm_2_clime_p300_3blocks_n200_63,
  norm_2_clime_p300_3blocks_n200_64,
  norm_2_clime_p300_3blocks_n200_65,
  norm_2_clime_p300_3blocks_n200_66,
  norm_2_clime_p300_3blocks_n200_67,
  norm_2_clime_p300_3blocks_n200_68,
  norm_2_clime_p300_3blocks_n200_69,
  norm_2_clime_p300_3blocks_n200_70,
  norm_2_clime_p300_3blocks_n200_71,
  norm_2_clime_p300_3blocks_n200_72,
  norm_2_clime_p300_3blocks_n200_73,
  norm_2_clime_p300_3blocks_n200_74,
  norm_2_clime_p300_3blocks_n200_75,
  norm_2_clime_p300_3blocks_n200_76,
  norm_2_clime_p300_3blocks_n200_77,
  norm_2_clime_p300_3blocks_n200_78,
  norm_2_clime_p300_3blocks_n200_79,
  norm_2_clime_p300_3blocks_n200_80,
  norm_2_clime_p300_3blocks_n200_81,
  norm_2_clime_p300_3blocks_n200_82,
  norm_2_clime_p300_3blocks_n200_83,
  norm_2_clime_p300_3blocks_n200_84,
  norm_2_clime_p300_3blocks_n200_85,
  norm_2_clime_p300_3blocks_n200_86,
  norm_2_clime_p300_3blocks_n200_87,
  norm_2_clime_p300_3blocks_n200_88,
  norm_2_clime_p300_3blocks_n200_89,
  norm_2_clime_p300_3blocks_n200_90,
  norm_2_clime_p300_3blocks_n200_91,
  norm_2_clime_p300_3blocks_n200_92,
  norm_2_clime_p300_3blocks_n200_93,
  norm_2_clime_p300_3blocks_n200_94,
  norm_2_clime_p300_3blocks_n200_95,
  norm_2_clime_p300_3blocks_n200_96,
  norm_2_clime_p300_3blocks_n200_97,
  norm_2_clime_p300_3blocks_n200_98,
  norm_2_clime_p300_3blocks_n200_99,
  norm_2_clime_p300_3blocks_n200_100
)

mean_norm_2_clime_p300_3blocks_n200 <- mean(norm_2_clime_p300_3blocks_n200)
sd_norm_2_clime_p300_3blocks_n200 <- sd(norm_2_clime_p300_3blocks_n200)

################### m norm ######################
norm_m_clime_p300_3blocks_n200 <- c(
  norm_m_clime_p300_3blocks_n200_1,
  norm_m_clime_p300_3blocks_n200_2,
  norm_m_clime_p300_3blocks_n200_3,
  norm_m_clime_p300_3blocks_n200_4,
  norm_m_clime_p300_3blocks_n200_5,
  norm_m_clime_p300_3blocks_n200_6,
  norm_m_clime_p300_3blocks_n200_7,
  norm_m_clime_p300_3blocks_n200_8,
  norm_m_clime_p300_3blocks_n200_9,
  norm_m_clime_p300_3blocks_n200_10,
  norm_m_clime_p300_3blocks_n200_11,
  norm_m_clime_p300_3blocks_n200_12,
  norm_m_clime_p300_3blocks_n200_13,
  norm_m_clime_p300_3blocks_n200_14,
  norm_m_clime_p300_3blocks_n200_15,
  norm_m_clime_p300_3blocks_n200_16,
  norm_m_clime_p300_3blocks_n200_17,
  norm_m_clime_p300_3blocks_n200_18,
  norm_m_clime_p300_3blocks_n200_19,
  norm_m_clime_p300_3blocks_n200_20,
  norm_m_clime_p300_3blocks_n200_21,
  norm_m_clime_p300_3blocks_n200_22,
  norm_m_clime_p300_3blocks_n200_23,
  norm_m_clime_p300_3blocks_n200_24,
  norm_m_clime_p300_3blocks_n200_25,
  norm_m_clime_p300_3blocks_n200_26,
  norm_m_clime_p300_3blocks_n200_27,
  norm_m_clime_p300_3blocks_n200_28,
  norm_m_clime_p300_3blocks_n200_29,
  norm_m_clime_p300_3blocks_n200_30,
  norm_m_clime_p300_3blocks_n200_31,
  norm_m_clime_p300_3blocks_n200_32,
  norm_m_clime_p300_3blocks_n200_33,
  norm_m_clime_p300_3blocks_n200_34,
  norm_m_clime_p300_3blocks_n200_35,
  norm_m_clime_p300_3blocks_n200_36,
  norm_m_clime_p300_3blocks_n200_37,
  norm_m_clime_p300_3blocks_n200_38,
  norm_m_clime_p300_3blocks_n200_39,
  norm_m_clime_p300_3blocks_n200_40,
  norm_m_clime_p300_3blocks_n200_41,
  norm_m_clime_p300_3blocks_n200_42,
  norm_m_clime_p300_3blocks_n200_43,
  norm_m_clime_p300_3blocks_n200_44,
  norm_m_clime_p300_3blocks_n200_45,
  norm_m_clime_p300_3blocks_n200_46,
  norm_m_clime_p300_3blocks_n200_47,
  norm_m_clime_p300_3blocks_n200_48,
  norm_m_clime_p300_3blocks_n200_49,
  norm_m_clime_p300_3blocks_n200_50,
  norm_m_clime_p300_3blocks_n200_51,
  norm_m_clime_p300_3blocks_n200_52,
  norm_m_clime_p300_3blocks_n200_53,
  norm_m_clime_p300_3blocks_n200_54,
  norm_m_clime_p300_3blocks_n200_55,
  norm_m_clime_p300_3blocks_n200_56,
  norm_m_clime_p300_3blocks_n200_57,
  norm_m_clime_p300_3blocks_n200_58,
  norm_m_clime_p300_3blocks_n200_59,
  norm_m_clime_p300_3blocks_n200_60,
  norm_m_clime_p300_3blocks_n200_61,
  norm_m_clime_p300_3blocks_n200_62,
  norm_m_clime_p300_3blocks_n200_63,
  norm_m_clime_p300_3blocks_n200_64,
  norm_m_clime_p300_3blocks_n200_65,
  norm_m_clime_p300_3blocks_n200_66,
  norm_m_clime_p300_3blocks_n200_67,
  norm_m_clime_p300_3blocks_n200_68,
  norm_m_clime_p300_3blocks_n200_69,
  norm_m_clime_p300_3blocks_n200_70,
  norm_m_clime_p300_3blocks_n200_71,
  norm_m_clime_p300_3blocks_n200_72,
  norm_m_clime_p300_3blocks_n200_73,
  norm_m_clime_p300_3blocks_n200_74,
  norm_m_clime_p300_3blocks_n200_75,
  norm_m_clime_p300_3blocks_n200_76,
  norm_m_clime_p300_3blocks_n200_77,
  norm_m_clime_p300_3blocks_n200_78,
  norm_m_clime_p300_3blocks_n200_79,
  norm_m_clime_p300_3blocks_n200_80,
  norm_m_clime_p300_3blocks_n200_81,
  norm_m_clime_p300_3blocks_n200_82,
  norm_m_clime_p300_3blocks_n200_83,
  norm_m_clime_p300_3blocks_n200_84,
  norm_m_clime_p300_3blocks_n200_85,
  norm_m_clime_p300_3blocks_n200_86,
  norm_m_clime_p300_3blocks_n200_87,
  norm_m_clime_p300_3blocks_n200_88,
  norm_m_clime_p300_3blocks_n200_89,
  norm_m_clime_p300_3blocks_n200_90,
  norm_m_clime_p300_3blocks_n200_91,
  norm_m_clime_p300_3blocks_n200_92,
  norm_m_clime_p300_3blocks_n200_93,
  norm_m_clime_p300_3blocks_n200_94,
  norm_m_clime_p300_3blocks_n200_95,
  norm_m_clime_p300_3blocks_n200_96,
  norm_m_clime_p300_3blocks_n200_97,
  norm_m_clime_p300_3blocks_n200_98,
  norm_m_clime_p300_3blocks_n200_99,
  norm_m_clime_p300_3blocks_n200_100
)

mean_norm_m_clime_p300_3blocks_n200 <- mean(norm_m_clime_p300_3blocks_n200)
sd_norm_m_clime_p300_3blocks_n200 <- sd(norm_m_clime_p300_3blocks_n200)

################### time ######################
time_clime_p300_3blocks_n200/100









# Index 1
norm_f_Group_Detect_p300_3blocks_n200_1 <- Group_Detect_p300_3blocks_n200_1$error_F
norm_1_Group_Detect_p300_3blocks_n200_1 <- Group_Detect_p300_3blocks_n200_1$error_1
norm_2_Group_Detect_p300_3blocks_n200_1 <- Group_Detect_p300_3blocks_n200_1$error_2
norm_m_Group_Detect_p300_3blocks_n200_1 <- Group_Detect_p300_3blocks_n200_1$error_M

# Index 2
norm_f_Group_Detect_p300_3blocks_n200_2 <- Group_Detect_p300_3blocks_n200_2$error_F
norm_1_Group_Detect_p300_3blocks_n200_2 <- Group_Detect_p300_3blocks_n200_2$error_1
norm_2_Group_Detect_p300_3blocks_n200_2 <- Group_Detect_p300_3blocks_n200_2$error_2
norm_m_Group_Detect_p300_3blocks_n200_2 <- Group_Detect_p300_3blocks_n200_2$error_M

# Index 3
norm_f_Group_Detect_p300_3blocks_n200_3 <- Group_Detect_p300_3blocks_n200_3$error_F
norm_1_Group_Detect_p300_3blocks_n200_3 <- Group_Detect_p300_3blocks_n200_3$error_1
norm_2_Group_Detect_p300_3blocks_n200_3 <- Group_Detect_p300_3blocks_n200_3$error_2
norm_m_Group_Detect_p300_3blocks_n200_3 <- Group_Detect_p300_3blocks_n200_3$error_M

# Index 4
norm_f_Group_Detect_p300_3blocks_n200_4 <- Group_Detect_p300_3blocks_n200_4$error_F
norm_1_Group_Detect_p300_3blocks_n200_4 <- Group_Detect_p300_3blocks_n200_4$error_1
norm_2_Group_Detect_p300_3blocks_n200_4 <- Group_Detect_p300_3blocks_n200_4$error_2
norm_m_Group_Detect_p300_3blocks_n200_4 <- Group_Detect_p300_3blocks_n200_4$error_M

# Index 5
norm_f_Group_Detect_p300_3blocks_n200_5 <- Group_Detect_p300_3blocks_n200_5$error_F
norm_1_Group_Detect_p300_3blocks_n200_5 <- Group_Detect_p300_3blocks_n200_5$error_1
norm_2_Group_Detect_p300_3blocks_n200_5 <- Group_Detect_p300_3blocks_n200_5$error_2
norm_m_Group_Detect_p300_3blocks_n200_5 <- Group_Detect_p300_3blocks_n200_5$error_M

# Index 6
norm_f_Group_Detect_p300_3blocks_n200_6 <- Group_Detect_p300_3blocks_n200_6$error_F
norm_1_Group_Detect_p300_3blocks_n200_6 <- Group_Detect_p300_3blocks_n200_6$error_1
norm_2_Group_Detect_p300_3blocks_n200_6 <- Group_Detect_p300_3blocks_n200_6$error_2
norm_m_Group_Detect_p300_3blocks_n200_6 <- Group_Detect_p300_3blocks_n200_6$error_M

# Index 7
norm_f_Group_Detect_p300_3blocks_n200_7 <- Group_Detect_p300_3blocks_n200_7$error_F
norm_1_Group_Detect_p300_3blocks_n200_7 <- Group_Detect_p300_3blocks_n200_7$error_1
norm_2_Group_Detect_p300_3blocks_n200_7 <- Group_Detect_p300_3blocks_n200_7$error_2
norm_m_Group_Detect_p300_3blocks_n200_7 <- Group_Detect_p300_3blocks_n200_7$error_M

# Index 8
norm_f_Group_Detect_p300_3blocks_n200_8 <- Group_Detect_p300_3blocks_n200_8$error_F
norm_1_Group_Detect_p300_3blocks_n200_8 <- Group_Detect_p300_3blocks_n200_8$error_1
norm_2_Group_Detect_p300_3blocks_n200_8 <- Group_Detect_p300_3blocks_n200_8$error_2
norm_m_Group_Detect_p300_3blocks_n200_8 <- Group_Detect_p300_3blocks_n200_8$error_M

# Index 9
norm_f_Group_Detect_p300_3blocks_n200_9 <- Group_Detect_p300_3blocks_n200_9$error_F
norm_1_Group_Detect_p300_3blocks_n200_9 <- Group_Detect_p300_3blocks_n200_9$error_1
norm_2_Group_Detect_p300_3blocks_n200_9 <- Group_Detect_p300_3blocks_n200_9$error_2
norm_m_Group_Detect_p300_3blocks_n200_9 <- Group_Detect_p300_3blocks_n200_9$error_M

# Index 10
norm_f_Group_Detect_p300_3blocks_n200_10 <- Group_Detect_p300_3blocks_n200_10$error_F
norm_1_Group_Detect_p300_3blocks_n200_10 <- Group_Detect_p300_3blocks_n200_10$error_1
norm_2_Group_Detect_p300_3blocks_n200_10 <- Group_Detect_p300_3blocks_n200_10$error_2
norm_m_Group_Detect_p300_3blocks_n200_10 <- Group_Detect_p300_3blocks_n200_10$error_M

# Index 11
norm_f_Group_Detect_p300_3blocks_n200_11 <- Group_Detect_p300_3blocks_n200_11$error_F
norm_1_Group_Detect_p300_3blocks_n200_11 <- Group_Detect_p300_3blocks_n200_11$error_1
norm_2_Group_Detect_p300_3blocks_n200_11 <- Group_Detect_p300_3blocks_n200_11$error_2
norm_m_Group_Detect_p300_3blocks_n200_11 <- Group_Detect_p300_3blocks_n200_11$error_M

# Index 12
norm_f_Group_Detect_p300_3blocks_n200_12 <- Group_Detect_p300_3blocks_n200_12$error_F
norm_1_Group_Detect_p300_3blocks_n200_12 <- Group_Detect_p300_3blocks_n200_12$error_1
norm_2_Group_Detect_p300_3blocks_n200_12 <- Group_Detect_p300_3blocks_n200_12$error_2
norm_m_Group_Detect_p300_3blocks_n200_12 <- Group_Detect_p300_3blocks_n200_12$error_M

# Index 13
norm_f_Group_Detect_p300_3blocks_n200_13 <- Group_Detect_p300_3blocks_n200_13$error_F
norm_1_Group_Detect_p300_3blocks_n200_13 <- Group_Detect_p300_3blocks_n200_13$error_1
norm_2_Group_Detect_p300_3blocks_n200_13 <- Group_Detect_p300_3blocks_n200_13$error_2
norm_m_Group_Detect_p300_3blocks_n200_13 <- Group_Detect_p300_3blocks_n200_13$error_M

# Index 14
norm_f_Group_Detect_p300_3blocks_n200_14 <- Group_Detect_p300_3blocks_n200_14$error_F
norm_1_Group_Detect_p300_3blocks_n200_14 <- Group_Detect_p300_3blocks_n200_14$error_1
norm_2_Group_Detect_p300_3blocks_n200_14 <- Group_Detect_p300_3blocks_n200_14$error_2
norm_m_Group_Detect_p300_3blocks_n200_14 <- Group_Detect_p300_3blocks_n200_14$error_M

# Index 15
norm_f_Group_Detect_p300_3blocks_n200_15 <- Group_Detect_p300_3blocks_n200_15$error_F
norm_1_Group_Detect_p300_3blocks_n200_15 <- Group_Detect_p300_3blocks_n200_15$error_1
norm_2_Group_Detect_p300_3blocks_n200_15 <- Group_Detect_p300_3blocks_n200_15$error_2
norm_m_Group_Detect_p300_3blocks_n200_15 <- Group_Detect_p300_3blocks_n200_15$error_M

# Index 16
norm_f_Group_Detect_p300_3blocks_n200_16 <- Group_Detect_p300_3blocks_n200_16$error_F
norm_1_Group_Detect_p300_3blocks_n200_16 <- Group_Detect_p300_3blocks_n200_16$error_1
norm_2_Group_Detect_p300_3blocks_n200_16 <- Group_Detect_p300_3blocks_n200_16$error_2
norm_m_Group_Detect_p300_3blocks_n200_16 <- Group_Detect_p300_3blocks_n200_16$error_M

# Index 17
norm_f_Group_Detect_p300_3blocks_n200_17 <- Group_Detect_p300_3blocks_n200_17$error_F
norm_1_Group_Detect_p300_3blocks_n200_17 <- Group_Detect_p300_3blocks_n200_17$error_1
norm_2_Group_Detect_p300_3blocks_n200_17 <- Group_Detect_p300_3blocks_n200_17$error_2
norm_m_Group_Detect_p300_3blocks_n200_17 <- Group_Detect_p300_3blocks_n200_17$error_M

# Index 18
norm_f_Group_Detect_p300_3blocks_n200_18 <- Group_Detect_p300_3blocks_n200_18$error_F
norm_1_Group_Detect_p300_3blocks_n200_18 <- Group_Detect_p300_3blocks_n200_18$error_1
norm_2_Group_Detect_p300_3blocks_n200_18 <- Group_Detect_p300_3blocks_n200_18$error_2
norm_m_Group_Detect_p300_3blocks_n200_18 <- Group_Detect_p300_3blocks_n200_18$error_M

# Index 19
norm_f_Group_Detect_p300_3blocks_n200_19 <- Group_Detect_p300_3blocks_n200_19$error_F
norm_1_Group_Detect_p300_3blocks_n200_19 <- Group_Detect_p300_3blocks_n200_19$error_1
norm_2_Group_Detect_p300_3blocks_n200_19 <- Group_Detect_p300_3blocks_n200_19$error_2
norm_m_Group_Detect_p300_3blocks_n200_19 <- Group_Detect_p300_3blocks_n200_19$error_M

# Index 20
norm_f_Group_Detect_p300_3blocks_n200_20 <- Group_Detect_p300_3blocks_n200_20$error_F
norm_1_Group_Detect_p300_3blocks_n200_20 <- Group_Detect_p300_3blocks_n200_20$error_1
norm_2_Group_Detect_p300_3blocks_n200_20 <- Group_Detect_p300_3blocks_n200_20$error_2
norm_m_Group_Detect_p300_3blocks_n200_20 <- Group_Detect_p300_3blocks_n200_20$error_M

# Index 21
norm_f_Group_Detect_p300_3blocks_n200_21 <- Group_Detect_p300_3blocks_n200_21$error_F
norm_1_Group_Detect_p300_3blocks_n200_21 <- Group_Detect_p300_3blocks_n200_21$error_1
norm_2_Group_Detect_p300_3blocks_n200_21 <- Group_Detect_p300_3blocks_n200_21$error_2
norm_m_Group_Detect_p300_3blocks_n200_21 <- Group_Detect_p300_3blocks_n200_21$error_M

# Index 22
norm_f_Group_Detect_p300_3blocks_n200_22 <- Group_Detect_p300_3blocks_n200_22$error_F
norm_1_Group_Detect_p300_3blocks_n200_22 <- Group_Detect_p300_3blocks_n200_22$error_1
norm_2_Group_Detect_p300_3blocks_n200_22 <- Group_Detect_p300_3blocks_n200_22$error_2
norm_m_Group_Detect_p300_3blocks_n200_22 <- Group_Detect_p300_3blocks_n200_22$error_M

# Index 23
norm_f_Group_Detect_p300_3blocks_n200_23 <- Group_Detect_p300_3blocks_n200_23$error_F
norm_1_Group_Detect_p300_3blocks_n200_23 <- Group_Detect_p300_3blocks_n200_23$error_1
norm_2_Group_Detect_p300_3blocks_n200_23 <- Group_Detect_p300_3blocks_n200_23$error_2
norm_m_Group_Detect_p300_3blocks_n200_23 <- Group_Detect_p300_3blocks_n200_23$error_M

# Index 24
norm_f_Group_Detect_p300_3blocks_n200_24 <- Group_Detect_p300_3blocks_n200_24$error_F
norm_1_Group_Detect_p300_3blocks_n200_24 <- Group_Detect_p300_3blocks_n200_24$error_1
norm_2_Group_Detect_p300_3blocks_n200_24 <- Group_Detect_p300_3blocks_n200_24$error_2
norm_m_Group_Detect_p300_3blocks_n200_24 <- Group_Detect_p300_3blocks_n200_24$error_M

# Index 25
norm_f_Group_Detect_p300_3blocks_n200_25 <- Group_Detect_p300_3blocks_n200_25$error_F
norm_1_Group_Detect_p300_3blocks_n200_25 <- Group_Detect_p300_3blocks_n200_25$error_1
norm_2_Group_Detect_p300_3blocks_n200_25 <- Group_Detect_p300_3blocks_n200_25$error_2
norm_m_Group_Detect_p300_3blocks_n200_25 <- Group_Detect_p300_3blocks_n200_25$error_M

# Index 26
norm_f_Group_Detect_p300_3blocks_n200_26 <- Group_Detect_p300_3blocks_n200_26$error_F
norm_1_Group_Detect_p300_3blocks_n200_26 <- Group_Detect_p300_3blocks_n200_26$error_1
norm_2_Group_Detect_p300_3blocks_n200_26 <- Group_Detect_p300_3blocks_n200_26$error_2
norm_m_Group_Detect_p300_3blocks_n200_26 <- Group_Detect_p300_3blocks_n200_26$error_M

# Index 27
norm_f_Group_Detect_p300_3blocks_n200_27 <- Group_Detect_p300_3blocks_n200_27$error_F
norm_1_Group_Detect_p300_3blocks_n200_27 <- Group_Detect_p300_3blocks_n200_27$error_1
norm_2_Group_Detect_p300_3blocks_n200_27 <- Group_Detect_p300_3blocks_n200_27$error_2
norm_m_Group_Detect_p300_3blocks_n200_27 <- Group_Detect_p300_3blocks_n200_27$error_M

# Index 28
norm_f_Group_Detect_p300_3blocks_n200_28 <- Group_Detect_p300_3blocks_n200_28$error_F
norm_1_Group_Detect_p300_3blocks_n200_28 <- Group_Detect_p300_3blocks_n200_28$error_1
norm_2_Group_Detect_p300_3blocks_n200_28 <- Group_Detect_p300_3blocks_n200_28$error_2
norm_m_Group_Detect_p300_3blocks_n200_28 <- Group_Detect_p300_3blocks_n200_28$error_M

# Index 29
norm_f_Group_Detect_p300_3blocks_n200_29 <- Group_Detect_p300_3blocks_n200_29$error_F
norm_1_Group_Detect_p300_3blocks_n200_29 <- Group_Detect_p300_3blocks_n200_29$error_1
norm_2_Group_Detect_p300_3blocks_n200_29 <- Group_Detect_p300_3blocks_n200_29$error_2
norm_m_Group_Detect_p300_3blocks_n200_29 <- Group_Detect_p300_3blocks_n200_29$error_M

# Index 30
norm_f_Group_Detect_p300_3blocks_n200_30 <- Group_Detect_p300_3blocks_n200_30$error_F
norm_1_Group_Detect_p300_3blocks_n200_30 <- Group_Detect_p300_3blocks_n200_30$error_1
norm_2_Group_Detect_p300_3blocks_n200_30 <- Group_Detect_p300_3blocks_n200_30$error_2
norm_m_Group_Detect_p300_3blocks_n200_30 <- Group_Detect_p300_3blocks_n200_30$error_M

# Index 31
norm_f_Group_Detect_p300_3blocks_n200_31 <- Group_Detect_p300_3blocks_n200_31$error_F
norm_1_Group_Detect_p300_3blocks_n200_31 <- Group_Detect_p300_3blocks_n200_31$error_1
norm_2_Group_Detect_p300_3blocks_n200_31 <- Group_Detect_p300_3blocks_n200_31$error_2
norm_m_Group_Detect_p300_3blocks_n200_31 <- Group_Detect_p300_3blocks_n200_31$error_M

# Index 32
norm_f_Group_Detect_p300_3blocks_n200_32 <- Group_Detect_p300_3blocks_n200_32$error_F
norm_1_Group_Detect_p300_3blocks_n200_32 <- Group_Detect_p300_3blocks_n200_32$error_1
norm_2_Group_Detect_p300_3blocks_n200_32 <- Group_Detect_p300_3blocks_n200_32$error_2
norm_m_Group_Detect_p300_3blocks_n200_32 <- Group_Detect_p300_3blocks_n200_32$error_M

# Index 33
norm_f_Group_Detect_p300_3blocks_n200_33 <- Group_Detect_p300_3blocks_n200_33$error_F
norm_1_Group_Detect_p300_3blocks_n200_33 <- Group_Detect_p300_3blocks_n200_33$error_1
norm_2_Group_Detect_p300_3blocks_n200_33 <- Group_Detect_p300_3blocks_n200_33$error_2
norm_m_Group_Detect_p300_3blocks_n200_33 <- Group_Detect_p300_3blocks_n200_33$error_M

# Index 34
norm_f_Group_Detect_p300_3blocks_n200_34 <- Group_Detect_p300_3blocks_n200_34$error_F
norm_1_Group_Detect_p300_3blocks_n200_34 <- Group_Detect_p300_3blocks_n200_34$error_1
norm_2_Group_Detect_p300_3blocks_n200_34 <- Group_Detect_p300_3blocks_n200_34$error_2
norm_m_Group_Detect_p300_3blocks_n200_34 <- Group_Detect_p300_3blocks_n200_34$error_M

# Index 35
norm_f_Group_Detect_p300_3blocks_n200_35 <- Group_Detect_p300_3blocks_n200_35$error_F
norm_1_Group_Detect_p300_3blocks_n200_35 <- Group_Detect_p300_3blocks_n200_35$error_1
norm_2_Group_Detect_p300_3blocks_n200_35 <- Group_Detect_p300_3blocks_n200_35$error_2
norm_m_Group_Detect_p300_3blocks_n200_35 <- Group_Detect_p300_3blocks_n200_35$error_M

# Index 36
norm_f_Group_Detect_p300_3blocks_n200_36 <- Group_Detect_p300_3blocks_n200_36$error_F
norm_1_Group_Detect_p300_3blocks_n200_36 <- Group_Detect_p300_3blocks_n200_36$error_1
norm_2_Group_Detect_p300_3blocks_n200_36 <- Group_Detect_p300_3blocks_n200_36$error_2
norm_m_Group_Detect_p300_3blocks_n200_36 <- Group_Detect_p300_3blocks_n200_36$error_M

# Index 37
norm_f_Group_Detect_p300_3blocks_n200_37 <- Group_Detect_p300_3blocks_n200_37$error_F
norm_1_Group_Detect_p300_3blocks_n200_37 <- Group_Detect_p300_3blocks_n200_37$error_1
norm_2_Group_Detect_p300_3blocks_n200_37 <- Group_Detect_p300_3blocks_n200_37$error_2
norm_m_Group_Detect_p300_3blocks_n200_37 <- Group_Detect_p300_3blocks_n200_37$error_M

# Index 38
norm_f_Group_Detect_p300_3blocks_n200_38 <- Group_Detect_p300_3blocks_n200_38$error_F
norm_1_Group_Detect_p300_3blocks_n200_38 <- Group_Detect_p300_3blocks_n200_38$error_1
norm_2_Group_Detect_p300_3blocks_n200_38 <- Group_Detect_p300_3blocks_n200_38$error_2
norm_m_Group_Detect_p300_3blocks_n200_38 <- Group_Detect_p300_3blocks_n200_38$error_M

# Index 39
norm_f_Group_Detect_p300_3blocks_n200_39 <- Group_Detect_p300_3blocks_n200_39$error_F
norm_1_Group_Detect_p300_3blocks_n200_39 <- Group_Detect_p300_3blocks_n200_39$error_1
norm_2_Group_Detect_p300_3blocks_n200_39 <- Group_Detect_p300_3blocks_n200_39$error_2
norm_m_Group_Detect_p300_3blocks_n200_39 <- Group_Detect_p300_3blocks_n200_39$error_M

# Index 40
norm_f_Group_Detect_p300_3blocks_n200_40 <- Group_Detect_p300_3blocks_n200_40$error_F
norm_1_Group_Detect_p300_3blocks_n200_40 <- Group_Detect_p300_3blocks_n200_40$error_1
norm_2_Group_Detect_p300_3blocks_n200_40 <- Group_Detect_p300_3blocks_n200_40$error_2
norm_m_Group_Detect_p300_3blocks_n200_40 <- Group_Detect_p300_3blocks_n200_40$error_M

# Index 41
norm_f_Group_Detect_p300_3blocks_n200_41 <- Group_Detect_p300_3blocks_n200_41$error_F
norm_1_Group_Detect_p300_3blocks_n200_41 <- Group_Detect_p300_3blocks_n200_41$error_1
norm_2_Group_Detect_p300_3blocks_n200_41 <- Group_Detect_p300_3blocks_n200_41$error_2
norm_m_Group_Detect_p300_3blocks_n200_41 <- Group_Detect_p300_3blocks_n200_41$error_M

# Index 42
norm_f_Group_Detect_p300_3blocks_n200_42 <- Group_Detect_p300_3blocks_n200_42$error_F
norm_1_Group_Detect_p300_3blocks_n200_42 <- Group_Detect_p300_3blocks_n200_42$error_1
norm_2_Group_Detect_p300_3blocks_n200_42 <- Group_Detect_p300_3blocks_n200_42$error_2
norm_m_Group_Detect_p300_3blocks_n200_42 <- Group_Detect_p300_3blocks_n200_42$error_M

# Index 43
norm_f_Group_Detect_p300_3blocks_n200_43 <- Group_Detect_p300_3blocks_n200_43$error_F
norm_1_Group_Detect_p300_3blocks_n200_43 <- Group_Detect_p300_3blocks_n200_43$error_1
norm_2_Group_Detect_p300_3blocks_n200_43 <- Group_Detect_p300_3blocks_n200_43$error_2
norm_m_Group_Detect_p300_3blocks_n200_43 <- Group_Detect_p300_3blocks_n200_43$error_M

# Index 44
norm_f_Group_Detect_p300_3blocks_n200_44 <- Group_Detect_p300_3blocks_n200_44$error_F
norm_1_Group_Detect_p300_3blocks_n200_44 <- Group_Detect_p300_3blocks_n200_44$error_1
norm_2_Group_Detect_p300_3blocks_n200_44 <- Group_Detect_p300_3blocks_n200_44$error_2
norm_m_Group_Detect_p300_3blocks_n200_44 <- Group_Detect_p300_3blocks_n200_44$error_M

# Index 45
norm_f_Group_Detect_p300_3blocks_n200_45 <- Group_Detect_p300_3blocks_n200_45$error_F
norm_1_Group_Detect_p300_3blocks_n200_45 <- Group_Detect_p300_3blocks_n200_45$error_1
norm_2_Group_Detect_p300_3blocks_n200_45 <- Group_Detect_p300_3blocks_n200_45$error_2
norm_m_Group_Detect_p300_3blocks_n200_45 <- Group_Detect_p300_3blocks_n200_45$error_M

# Index 46
norm_f_Group_Detect_p300_3blocks_n200_46 <- Group_Detect_p300_3blocks_n200_46$error_F
norm_1_Group_Detect_p300_3blocks_n200_46 <- Group_Detect_p300_3blocks_n200_46$error_1
norm_2_Group_Detect_p300_3blocks_n200_46 <- Group_Detect_p300_3blocks_n200_46$error_2
norm_m_Group_Detect_p300_3blocks_n200_46 <- Group_Detect_p300_3blocks_n200_46$error_M

# Index 47
norm_f_Group_Detect_p300_3blocks_n200_47 <- Group_Detect_p300_3blocks_n200_47$error_F
norm_1_Group_Detect_p300_3blocks_n200_47 <- Group_Detect_p300_3blocks_n200_47$error_1
norm_2_Group_Detect_p300_3blocks_n200_47 <- Group_Detect_p300_3blocks_n200_47$error_2
norm_m_Group_Detect_p300_3blocks_n200_47 <- Group_Detect_p300_3blocks_n200_47$error_M

# Index 48
norm_f_Group_Detect_p300_3blocks_n200_48 <- Group_Detect_p300_3blocks_n200_48$error_F
norm_1_Group_Detect_p300_3blocks_n200_48 <- Group_Detect_p300_3blocks_n200_48$error_1
norm_2_Group_Detect_p300_3blocks_n200_48 <- Group_Detect_p300_3blocks_n200_48$error_2
norm_m_Group_Detect_p300_3blocks_n200_48 <- Group_Detect_p300_3blocks_n200_48$error_M

# Index 49
norm_f_Group_Detect_p300_3blocks_n200_49 <- Group_Detect_p300_3blocks_n200_49$error_F
norm_1_Group_Detect_p300_3blocks_n200_49 <- Group_Detect_p300_3blocks_n200_49$error_1
norm_2_Group_Detect_p300_3blocks_n200_49 <- Group_Detect_p300_3blocks_n200_49$error_2
norm_m_Group_Detect_p300_3blocks_n200_49 <- Group_Detect_p300_3blocks_n200_49$error_M

# Index 50
norm_f_Group_Detect_p300_3blocks_n200_50 <- Group_Detect_p300_3blocks_n200_50$error_F
norm_1_Group_Detect_p300_3blocks_n200_50 <- Group_Detect_p300_3blocks_n200_50$error_1
norm_2_Group_Detect_p300_3blocks_n200_50 <- Group_Detect_p300_3blocks_n200_50$error_2
norm_m_Group_Detect_p300_3blocks_n200_50 <- Group_Detect_p300_3blocks_n200_50$error_M

# Index 51
norm_f_Group_Detect_p300_3blocks_n200_51 <- Group_Detect_p300_3blocks_n200_51$error_F
norm_1_Group_Detect_p300_3blocks_n200_51 <- Group_Detect_p300_3blocks_n200_51$error_1
norm_2_Group_Detect_p300_3blocks_n200_51 <- Group_Detect_p300_3blocks_n200_51$error_2
norm_m_Group_Detect_p300_3blocks_n200_51 <- Group_Detect_p300_3blocks_n200_51$error_M

# Index 52
norm_f_Group_Detect_p300_3blocks_n200_52 <- Group_Detect_p300_3blocks_n200_52$error_F
norm_1_Group_Detect_p300_3blocks_n200_52 <- Group_Detect_p300_3blocks_n200_52$error_1
norm_2_Group_Detect_p300_3blocks_n200_52 <- Group_Detect_p300_3blocks_n200_52$error_2
norm_m_Group_Detect_p300_3blocks_n200_52 <- Group_Detect_p300_3blocks_n200_52$error_M

# Index 53
norm_f_Group_Detect_p300_3blocks_n200_53 <- Group_Detect_p300_3blocks_n200_53$error_F
norm_1_Group_Detect_p300_3blocks_n200_53 <- Group_Detect_p300_3blocks_n200_53$error_1
norm_2_Group_Detect_p300_3blocks_n200_53 <- Group_Detect_p300_3blocks_n200_53$error_2
norm_m_Group_Detect_p300_3blocks_n200_53 <- Group_Detect_p300_3blocks_n200_53$error_M

# Index 54
norm_f_Group_Detect_p300_3blocks_n200_54 <- Group_Detect_p300_3blocks_n200_54$error_F
norm_1_Group_Detect_p300_3blocks_n200_54 <- Group_Detect_p300_3blocks_n200_54$error_1
norm_2_Group_Detect_p300_3blocks_n200_54 <- Group_Detect_p300_3blocks_n200_54$error_2
norm_m_Group_Detect_p300_3blocks_n200_54 <- Group_Detect_p300_3blocks_n200_54$error_M

# Index 55
norm_f_Group_Detect_p300_3blocks_n200_55 <- Group_Detect_p300_3blocks_n200_55$error_F
norm_1_Group_Detect_p300_3blocks_n200_55 <- Group_Detect_p300_3blocks_n200_55$error_1
norm_2_Group_Detect_p300_3blocks_n200_55 <- Group_Detect_p300_3blocks_n200_55$error_2
norm_m_Group_Detect_p300_3blocks_n200_55 <- Group_Detect_p300_3blocks_n200_55$error_M

# Index 56
norm_f_Group_Detect_p300_3blocks_n200_56 <- Group_Detect_p300_3blocks_n200_56$error_F
norm_1_Group_Detect_p300_3blocks_n200_56 <- Group_Detect_p300_3blocks_n200_56$error_1
norm_2_Group_Detect_p300_3blocks_n200_56 <- Group_Detect_p300_3blocks_n200_56$error_2
norm_m_Group_Detect_p300_3blocks_n200_56 <- Group_Detect_p300_3blocks_n200_56$error_M

# Index 57
norm_f_Group_Detect_p300_3blocks_n200_57 <- Group_Detect_p300_3blocks_n200_57$error_F
norm_1_Group_Detect_p300_3blocks_n200_57 <- Group_Detect_p300_3blocks_n200_57$error_1
norm_2_Group_Detect_p300_3blocks_n200_57 <- Group_Detect_p300_3blocks_n200_57$error_2
norm_m_Group_Detect_p300_3blocks_n200_57 <- Group_Detect_p300_3blocks_n200_57$error_M

# Index 58
norm_f_Group_Detect_p300_3blocks_n200_58 <- Group_Detect_p300_3blocks_n200_58$error_F
norm_1_Group_Detect_p300_3blocks_n200_58 <- Group_Detect_p300_3blocks_n200_58$error_1
norm_2_Group_Detect_p300_3blocks_n200_58 <- Group_Detect_p300_3blocks_n200_58$error_2
norm_m_Group_Detect_p300_3blocks_n200_58 <- Group_Detect_p300_3blocks_n200_58$error_M

# Index 59
norm_f_Group_Detect_p300_3blocks_n200_59 <- Group_Detect_p300_3blocks_n200_59$error_F
norm_1_Group_Detect_p300_3blocks_n200_59 <- Group_Detect_p300_3blocks_n200_59$error_1
norm_2_Group_Detect_p300_3blocks_n200_59 <- Group_Detect_p300_3blocks_n200_59$error_2
norm_m_Group_Detect_p300_3blocks_n200_59 <- Group_Detect_p300_3blocks_n200_59$error_M

# Index 60
norm_f_Group_Detect_p300_3blocks_n200_60 <- Group_Detect_p300_3blocks_n200_60$error_F
norm_1_Group_Detect_p300_3blocks_n200_60 <- Group_Detect_p300_3blocks_n200_60$error_1
norm_2_Group_Detect_p300_3blocks_n200_60 <- Group_Detect_p300_3blocks_n200_60$error_2
norm_m_Group_Detect_p300_3blocks_n200_60 <- Group_Detect_p300_3blocks_n200_60$error_M

# Index 61
norm_f_Group_Detect_p300_3blocks_n200_61 <- Group_Detect_p300_3blocks_n200_61$error_F
norm_1_Group_Detect_p300_3blocks_n200_61 <- Group_Detect_p300_3blocks_n200_61$error_1
norm_2_Group_Detect_p300_3blocks_n200_61 <- Group_Detect_p300_3blocks_n200_61$error_2
norm_m_Group_Detect_p300_3blocks_n200_61 <- Group_Detect_p300_3blocks_n200_61$error_M

# Index 62
norm_f_Group_Detect_p300_3blocks_n200_62 <- Group_Detect_p300_3blocks_n200_62$error_F
norm_1_Group_Detect_p300_3blocks_n200_62 <- Group_Detect_p300_3blocks_n200_62$error_1
norm_2_Group_Detect_p300_3blocks_n200_62 <- Group_Detect_p300_3blocks_n200_62$error_2
norm_m_Group_Detect_p300_3blocks_n200_62 <- Group_Detect_p300_3blocks_n200_62$error_M

# Index 63
norm_f_Group_Detect_p300_3blocks_n200_63 <- Group_Detect_p300_3blocks_n200_63$error_F
norm_1_Group_Detect_p300_3blocks_n200_63 <- Group_Detect_p300_3blocks_n200_63$error_1
norm_2_Group_Detect_p300_3blocks_n200_63 <- Group_Detect_p300_3blocks_n200_63$error_2
norm_m_Group_Detect_p300_3blocks_n200_63 <- Group_Detect_p300_3blocks_n200_63$error_M

# Index 64
norm_f_Group_Detect_p300_3blocks_n200_64 <- Group_Detect_p300_3blocks_n200_64$error_F
norm_1_Group_Detect_p300_3blocks_n200_64 <- Group_Detect_p300_3blocks_n200_64$error_1
norm_2_Group_Detect_p300_3blocks_n200_64 <- Group_Detect_p300_3blocks_n200_64$error_2
norm_m_Group_Detect_p300_3blocks_n200_64 <- Group_Detect_p300_3blocks_n200_64$error_M

# Index 65
norm_f_Group_Detect_p300_3blocks_n200_65 <- Group_Detect_p300_3blocks_n200_65$error_F
norm_1_Group_Detect_p300_3blocks_n200_65 <- Group_Detect_p300_3blocks_n200_65$error_1
norm_2_Group_Detect_p300_3blocks_n200_65 <- Group_Detect_p300_3blocks_n200_65$error_2
norm_m_Group_Detect_p300_3blocks_n200_65 <- Group_Detect_p300_3blocks_n200_65$error_M

# Index 66
norm_f_Group_Detect_p300_3blocks_n200_66 <- Group_Detect_p300_3blocks_n200_66$error_F
norm_1_Group_Detect_p300_3blocks_n200_66 <- Group_Detect_p300_3blocks_n200_66$error_1
norm_2_Group_Detect_p300_3blocks_n200_66 <- Group_Detect_p300_3blocks_n200_66$error_2
norm_m_Group_Detect_p300_3blocks_n200_66 <- Group_Detect_p300_3blocks_n200_66$error_M

# Index 67
norm_f_Group_Detect_p300_3blocks_n200_67 <- Group_Detect_p300_3blocks_n200_67$error_F
norm_1_Group_Detect_p300_3blocks_n200_67 <- Group_Detect_p300_3blocks_n200_67$error_1
norm_2_Group_Detect_p300_3blocks_n200_67 <- Group_Detect_p300_3blocks_n200_67$error_2
norm_m_Group_Detect_p300_3blocks_n200_67 <- Group_Detect_p300_3blocks_n200_67$error_M

# Index 68
norm_f_Group_Detect_p300_3blocks_n200_68 <- Group_Detect_p300_3blocks_n200_68$error_F
norm_1_Group_Detect_p300_3blocks_n200_68 <- Group_Detect_p300_3blocks_n200_68$error_1
norm_2_Group_Detect_p300_3blocks_n200_68 <- Group_Detect_p300_3blocks_n200_68$error_2
norm_m_Group_Detect_p300_3blocks_n200_68 <- Group_Detect_p300_3blocks_n200_68$error_M

# Index 69
norm_f_Group_Detect_p300_3blocks_n200_69 <- Group_Detect_p300_3blocks_n200_69$error_F
norm_1_Group_Detect_p300_3blocks_n200_69 <- Group_Detect_p300_3blocks_n200_69$error_1
norm_2_Group_Detect_p300_3blocks_n200_69 <- Group_Detect_p300_3blocks_n200_69$error_2
norm_m_Group_Detect_p300_3blocks_n200_69 <- Group_Detect_p300_3blocks_n200_69$error_M

# Index 70
norm_f_Group_Detect_p300_3blocks_n200_70 <- Group_Detect_p300_3blocks_n200_70$error_F
norm_1_Group_Detect_p300_3blocks_n200_70 <- Group_Detect_p300_3blocks_n200_70$error_1
norm_2_Group_Detect_p300_3blocks_n200_70 <- Group_Detect_p300_3blocks_n200_70$error_2
norm_m_Group_Detect_p300_3blocks_n200_70 <- Group_Detect_p300_3blocks_n200_70$error_M

# Index 71
norm_f_Group_Detect_p300_3blocks_n200_71 <- Group_Detect_p300_3blocks_n200_71$error_F
norm_1_Group_Detect_p300_3blocks_n200_71 <- Group_Detect_p300_3blocks_n200_71$error_1
norm_2_Group_Detect_p300_3blocks_n200_71 <- Group_Detect_p300_3blocks_n200_71$error_2
norm_m_Group_Detect_p300_3blocks_n200_71 <- Group_Detect_p300_3blocks_n200_71$error_M

# Index 72
norm_f_Group_Detect_p300_3blocks_n200_72 <- Group_Detect_p300_3blocks_n200_72$error_F
norm_1_Group_Detect_p300_3blocks_n200_72 <- Group_Detect_p300_3blocks_n200_72$error_1
norm_2_Group_Detect_p300_3blocks_n200_72 <- Group_Detect_p300_3blocks_n200_72$error_2
norm_m_Group_Detect_p300_3blocks_n200_72 <- Group_Detect_p300_3blocks_n200_72$error_M

# Index 73
norm_f_Group_Detect_p300_3blocks_n200_73 <- Group_Detect_p300_3blocks_n200_73$error_F
norm_1_Group_Detect_p300_3blocks_n200_73 <- Group_Detect_p300_3blocks_n200_73$error_1
norm_2_Group_Detect_p300_3blocks_n200_73 <- Group_Detect_p300_3blocks_n200_73$error_2
norm_m_Group_Detect_p300_3blocks_n200_73 <- Group_Detect_p300_3blocks_n200_73$error_M

# Index 74
norm_f_Group_Detect_p300_3blocks_n200_74 <- Group_Detect_p300_3blocks_n200_74$error_F
norm_1_Group_Detect_p300_3blocks_n200_74 <- Group_Detect_p300_3blocks_n200_74$error_1
norm_2_Group_Detect_p300_3blocks_n200_74 <- Group_Detect_p300_3blocks_n200_74$error_2
norm_m_Group_Detect_p300_3blocks_n200_74 <- Group_Detect_p300_3blocks_n200_74$error_M

# Index 75
norm_f_Group_Detect_p300_3blocks_n200_75 <- Group_Detect_p300_3blocks_n200_75$error_F
norm_1_Group_Detect_p300_3blocks_n200_75 <- Group_Detect_p300_3blocks_n200_75$error_1
norm_2_Group_Detect_p300_3blocks_n200_75 <- Group_Detect_p300_3blocks_n200_75$error_2
norm_m_Group_Detect_p300_3blocks_n200_75 <- Group_Detect_p300_3blocks_n200_75$error_M

# Index 76
norm_f_Group_Detect_p300_3blocks_n200_76 <- Group_Detect_p300_3blocks_n200_76$error_F
norm_1_Group_Detect_p300_3blocks_n200_76 <- Group_Detect_p300_3blocks_n200_76$error_1
norm_2_Group_Detect_p300_3blocks_n200_76 <- Group_Detect_p300_3blocks_n200_76$error_2
norm_m_Group_Detect_p300_3blocks_n200_76 <- Group_Detect_p300_3blocks_n200_76$error_M

# Index 77
norm_f_Group_Detect_p300_3blocks_n200_77 <- Group_Detect_p300_3blocks_n200_77$error_F
norm_1_Group_Detect_p300_3blocks_n200_77 <- Group_Detect_p300_3blocks_n200_77$error_1
norm_2_Group_Detect_p300_3blocks_n200_77 <- Group_Detect_p300_3blocks_n200_77$error_2
norm_m_Group_Detect_p300_3blocks_n200_77 <- Group_Detect_p300_3blocks_n200_77$error_M

# Index 78
norm_f_Group_Detect_p300_3blocks_n200_78 <- Group_Detect_p300_3blocks_n200_78$error_F
norm_1_Group_Detect_p300_3blocks_n200_78 <- Group_Detect_p300_3blocks_n200_78$error_1
norm_2_Group_Detect_p300_3blocks_n200_78 <- Group_Detect_p300_3blocks_n200_78$error_2
norm_m_Group_Detect_p300_3blocks_n200_78 <- Group_Detect_p300_3blocks_n200_78$error_M

# Index 79
norm_f_Group_Detect_p300_3blocks_n200_79 <- Group_Detect_p300_3blocks_n200_79$error_F
norm_1_Group_Detect_p300_3blocks_n200_79 <- Group_Detect_p300_3blocks_n200_79$error_1
norm_2_Group_Detect_p300_3blocks_n200_79 <- Group_Detect_p300_3blocks_n200_79$error_2
norm_m_Group_Detect_p300_3blocks_n200_79 <- Group_Detect_p300_3blocks_n200_79$error_M

# Index 80
norm_f_Group_Detect_p300_3blocks_n200_80 <- Group_Detect_p300_3blocks_n200_80$error_F
norm_1_Group_Detect_p300_3blocks_n200_80 <- Group_Detect_p300_3blocks_n200_80$error_1
norm_2_Group_Detect_p300_3blocks_n200_80 <- Group_Detect_p300_3blocks_n200_80$error_2
norm_m_Group_Detect_p300_3blocks_n200_80 <- Group_Detect_p300_3blocks_n200_80$error_M

# Index 81
norm_f_Group_Detect_p300_3blocks_n200_81 <- Group_Detect_p300_3blocks_n200_81$error_F
norm_1_Group_Detect_p300_3blocks_n200_81 <- Group_Detect_p300_3blocks_n200_81$error_1
norm_2_Group_Detect_p300_3blocks_n200_81 <- Group_Detect_p300_3blocks_n200_81$error_2
norm_m_Group_Detect_p300_3blocks_n200_81 <- Group_Detect_p300_3blocks_n200_81$error_M

# Index 82
norm_f_Group_Detect_p300_3blocks_n200_82 <- Group_Detect_p300_3blocks_n200_82$error_F
norm_1_Group_Detect_p300_3blocks_n200_82 <- Group_Detect_p300_3blocks_n200_82$error_1
norm_2_Group_Detect_p300_3blocks_n200_82 <- Group_Detect_p300_3blocks_n200_82$error_2
norm_m_Group_Detect_p300_3blocks_n200_82 <- Group_Detect_p300_3blocks_n200_82$error_M

# Index 83
norm_f_Group_Detect_p300_3blocks_n200_83 <- Group_Detect_p300_3blocks_n200_83$error_F
norm_1_Group_Detect_p300_3blocks_n200_83 <- Group_Detect_p300_3blocks_n200_83$error_1
norm_2_Group_Detect_p300_3blocks_n200_83 <- Group_Detect_p300_3blocks_n200_83$error_2
norm_m_Group_Detect_p300_3blocks_n200_83 <- Group_Detect_p300_3blocks_n200_83$error_M

# Index 84
norm_f_Group_Detect_p300_3blocks_n200_84 <- Group_Detect_p300_3blocks_n200_84$error_F
norm_1_Group_Detect_p300_3blocks_n200_84 <- Group_Detect_p300_3blocks_n200_84$error_1
norm_2_Group_Detect_p300_3blocks_n200_84 <- Group_Detect_p300_3blocks_n200_84$error_2
norm_m_Group_Detect_p300_3blocks_n200_84 <- Group_Detect_p300_3blocks_n200_84$error_M

# Index 85
norm_f_Group_Detect_p300_3blocks_n200_85 <- Group_Detect_p300_3blocks_n200_85$error_F
norm_1_Group_Detect_p300_3blocks_n200_85 <- Group_Detect_p300_3blocks_n200_85$error_1
norm_2_Group_Detect_p300_3blocks_n200_85 <- Group_Detect_p300_3blocks_n200_85$error_2
norm_m_Group_Detect_p300_3blocks_n200_85 <- Group_Detect_p300_3blocks_n200_85$error_M

# Index 86
norm_f_Group_Detect_p300_3blocks_n200_86 <- Group_Detect_p300_3blocks_n200_86$error_F
norm_1_Group_Detect_p300_3blocks_n200_86 <- Group_Detect_p300_3blocks_n200_86$error_1
norm_2_Group_Detect_p300_3blocks_n200_86 <- Group_Detect_p300_3blocks_n200_86$error_2
norm_m_Group_Detect_p300_3blocks_n200_86 <- Group_Detect_p300_3blocks_n200_86$error_M

# Index 87
norm_f_Group_Detect_p300_3blocks_n200_87 <- Group_Detect_p300_3blocks_n200_87$error_F
norm_1_Group_Detect_p300_3blocks_n200_87 <- Group_Detect_p300_3blocks_n200_87$error_1
norm_2_Group_Detect_p300_3blocks_n200_87 <- Group_Detect_p300_3blocks_n200_87$error_2
norm_m_Group_Detect_p300_3blocks_n200_87 <- Group_Detect_p300_3blocks_n200_87$error_M

# Index 88
norm_f_Group_Detect_p300_3blocks_n200_88 <- Group_Detect_p300_3blocks_n200_88$error_F
norm_1_Group_Detect_p300_3blocks_n200_88 <- Group_Detect_p300_3blocks_n200_88$error_1
norm_2_Group_Detect_p300_3blocks_n200_88 <- Group_Detect_p300_3blocks_n200_88$error_2
norm_m_Group_Detect_p300_3blocks_n200_88 <- Group_Detect_p300_3blocks_n200_88$error_M

# Index 89
norm_f_Group_Detect_p300_3blocks_n200_89 <- Group_Detect_p300_3blocks_n200_89$error_F
norm_1_Group_Detect_p300_3blocks_n200_89 <- Group_Detect_p300_3blocks_n200_89$error_1
norm_2_Group_Detect_p300_3blocks_n200_89 <- Group_Detect_p300_3blocks_n200_89$error_2
norm_m_Group_Detect_p300_3blocks_n200_89 <- Group_Detect_p300_3blocks_n200_89$error_M

# Index 90
norm_f_Group_Detect_p300_3blocks_n200_90 <- Group_Detect_p300_3blocks_n200_90$error_F
norm_1_Group_Detect_p300_3blocks_n200_90 <- Group_Detect_p300_3blocks_n200_90$error_1
norm_2_Group_Detect_p300_3blocks_n200_90 <- Group_Detect_p300_3blocks_n200_90$error_2
norm_m_Group_Detect_p300_3blocks_n200_90 <- Group_Detect_p300_3blocks_n200_90$error_M

# Index 91
norm_f_Group_Detect_p300_3blocks_n200_91 <- Group_Detect_p300_3blocks_n200_91$error_F
norm_1_Group_Detect_p300_3blocks_n200_91 <- Group_Detect_p300_3blocks_n200_91$error_1
norm_2_Group_Detect_p300_3blocks_n200_91 <- Group_Detect_p300_3blocks_n200_91$error_2
norm_m_Group_Detect_p300_3blocks_n200_91 <- Group_Detect_p300_3blocks_n200_91$error_M

# Index 92
norm_f_Group_Detect_p300_3blocks_n200_92 <- Group_Detect_p300_3blocks_n200_92$error_F
norm_1_Group_Detect_p300_3blocks_n200_92 <- Group_Detect_p300_3blocks_n200_92$error_1
norm_2_Group_Detect_p300_3blocks_n200_92 <- Group_Detect_p300_3blocks_n200_92$error_2
norm_m_Group_Detect_p300_3blocks_n200_92 <- Group_Detect_p300_3blocks_n200_92$error_M

# Index 93
norm_f_Group_Detect_p300_3blocks_n200_93 <- Group_Detect_p300_3blocks_n200_93$error_F
norm_1_Group_Detect_p300_3blocks_n200_93 <- Group_Detect_p300_3blocks_n200_93$error_1
norm_2_Group_Detect_p300_3blocks_n200_93 <- Group_Detect_p300_3blocks_n200_93$error_2
norm_m_Group_Detect_p300_3blocks_n200_93 <- Group_Detect_p300_3blocks_n200_93$error_M

# Index 94
norm_f_Group_Detect_p300_3blocks_n200_94 <- Group_Detect_p300_3blocks_n200_94$error_F
norm_1_Group_Detect_p300_3blocks_n200_94 <- Group_Detect_p300_3blocks_n200_94$error_1
norm_2_Group_Detect_p300_3blocks_n200_94 <- Group_Detect_p300_3blocks_n200_94$error_2
norm_m_Group_Detect_p300_3blocks_n200_94 <- Group_Detect_p300_3blocks_n200_94$error_M

# Index 95
norm_f_Group_Detect_p300_3blocks_n200_95 <- Group_Detect_p300_3blocks_n200_95$error_F
norm_1_Group_Detect_p300_3blocks_n200_95 <- Group_Detect_p300_3blocks_n200_95$error_1
norm_2_Group_Detect_p300_3blocks_n200_95 <- Group_Detect_p300_3blocks_n200_95$error_2
norm_m_Group_Detect_p300_3blocks_n200_95 <- Group_Detect_p300_3blocks_n200_95$error_M

# Index 96
norm_f_Group_Detect_p300_3blocks_n200_96 <- Group_Detect_p300_3blocks_n200_96$error_F
norm_1_Group_Detect_p300_3blocks_n200_96 <- Group_Detect_p300_3blocks_n200_96$error_1
norm_2_Group_Detect_p300_3blocks_n200_96 <- Group_Detect_p300_3blocks_n200_96$error_2
norm_m_Group_Detect_p300_3blocks_n200_96 <- Group_Detect_p300_3blocks_n200_96$error_M

# Index 97
norm_f_Group_Detect_p300_3blocks_n200_97 <- Group_Detect_p300_3blocks_n200_97$error_F
norm_1_Group_Detect_p300_3blocks_n200_97 <- Group_Detect_p300_3blocks_n200_97$error_1
norm_2_Group_Detect_p300_3blocks_n200_97 <- Group_Detect_p300_3blocks_n200_97$error_2
norm_m_Group_Detect_p300_3blocks_n200_97 <- Group_Detect_p300_3blocks_n200_97$error_M

# Index 98
norm_f_Group_Detect_p300_3blocks_n200_98 <- Group_Detect_p300_3blocks_n200_98$error_F
norm_1_Group_Detect_p300_3blocks_n200_98 <- Group_Detect_p300_3blocks_n200_98$error_1
norm_2_Group_Detect_p300_3blocks_n200_98 <- Group_Detect_p300_3blocks_n200_98$error_2
norm_m_Group_Detect_p300_3blocks_n200_98 <- Group_Detect_p300_3blocks_n200_98$error_M

# Index 99
norm_f_Group_Detect_p300_3blocks_n200_99 <- Group_Detect_p300_3blocks_n200_99$error_F
norm_1_Group_Detect_p300_3blocks_n200_99 <- Group_Detect_p300_3blocks_n200_99$error_1
norm_2_Group_Detect_p300_3blocks_n200_99 <- Group_Detect_p300_3blocks_n200_99$error_2
norm_m_Group_Detect_p300_3blocks_n200_99 <- Group_Detect_p300_3blocks_n200_99$error_M

# Index 100
norm_f_Group_Detect_p300_3blocks_n200_100 <- Group_Detect_p300_3blocks_n200_100$error_F
norm_1_Group_Detect_p300_3blocks_n200_100 <- Group_Detect_p300_3blocks_n200_100$error_1
norm_2_Group_Detect_p300_3blocks_n200_100 <- Group_Detect_p300_3blocks_n200_100$error_2
norm_m_Group_Detect_p300_3blocks_n200_100 <- Group_Detect_p300_3blocks_n200_100$error_M


################ f norm ######################
norm_f_Group_Detect_p300_3blocks_n200 <- c(
  norm_f_Group_Detect_p300_3blocks_n200_1,
  norm_f_Group_Detect_p300_3blocks_n200_2,
  norm_f_Group_Detect_p300_3blocks_n200_3,
  norm_f_Group_Detect_p300_3blocks_n200_4,
  norm_f_Group_Detect_p300_3blocks_n200_5,
  norm_f_Group_Detect_p300_3blocks_n200_6,
  norm_f_Group_Detect_p300_3blocks_n200_7,
  norm_f_Group_Detect_p300_3blocks_n200_8,
  norm_f_Group_Detect_p300_3blocks_n200_9,
  norm_f_Group_Detect_p300_3blocks_n200_10,
  norm_f_Group_Detect_p300_3blocks_n200_11,
  norm_f_Group_Detect_p300_3blocks_n200_12,
  norm_f_Group_Detect_p300_3blocks_n200_13,
  norm_f_Group_Detect_p300_3blocks_n200_14,
  norm_f_Group_Detect_p300_3blocks_n200_15,
  norm_f_Group_Detect_p300_3blocks_n200_16,
  norm_f_Group_Detect_p300_3blocks_n200_17,
  norm_f_Group_Detect_p300_3blocks_n200_18,
  norm_f_Group_Detect_p300_3blocks_n200_19,
  norm_f_Group_Detect_p300_3blocks_n200_20,
  norm_f_Group_Detect_p300_3blocks_n200_21,
  norm_f_Group_Detect_p300_3blocks_n200_22,
  norm_f_Group_Detect_p300_3blocks_n200_23,
  norm_f_Group_Detect_p300_3blocks_n200_24,
  norm_f_Group_Detect_p300_3blocks_n200_25,
  norm_f_Group_Detect_p300_3blocks_n200_26,
  norm_f_Group_Detect_p300_3blocks_n200_27,
  norm_f_Group_Detect_p300_3blocks_n200_28,
  norm_f_Group_Detect_p300_3blocks_n200_29,
  norm_f_Group_Detect_p300_3blocks_n200_30,
  norm_f_Group_Detect_p300_3blocks_n200_31,
  norm_f_Group_Detect_p300_3blocks_n200_32,
  norm_f_Group_Detect_p300_3blocks_n200_33,
  norm_f_Group_Detect_p300_3blocks_n200_34,
  norm_f_Group_Detect_p300_3blocks_n200_35,
  norm_f_Group_Detect_p300_3blocks_n200_36,
  norm_f_Group_Detect_p300_3blocks_n200_37,
  norm_f_Group_Detect_p300_3blocks_n200_38,
  norm_f_Group_Detect_p300_3blocks_n200_39,
  norm_f_Group_Detect_p300_3blocks_n200_40,
  norm_f_Group_Detect_p300_3blocks_n200_41,
  norm_f_Group_Detect_p300_3blocks_n200_42,
  norm_f_Group_Detect_p300_3blocks_n200_43,
  norm_f_Group_Detect_p300_3blocks_n200_44,
  norm_f_Group_Detect_p300_3blocks_n200_45,
  norm_f_Group_Detect_p300_3blocks_n200_46,
  norm_f_Group_Detect_p300_3blocks_n200_47,
  norm_f_Group_Detect_p300_3blocks_n200_48,
  norm_f_Group_Detect_p300_3blocks_n200_49,
  norm_f_Group_Detect_p300_3blocks_n200_50,
  norm_f_Group_Detect_p300_3blocks_n200_51,
  norm_f_Group_Detect_p300_3blocks_n200_52,
  norm_f_Group_Detect_p300_3blocks_n200_53,
  norm_f_Group_Detect_p300_3blocks_n200_54,
  norm_f_Group_Detect_p300_3blocks_n200_55,
  norm_f_Group_Detect_p300_3blocks_n200_56,
  norm_f_Group_Detect_p300_3blocks_n200_57,
  norm_f_Group_Detect_p300_3blocks_n200_58,
  norm_f_Group_Detect_p300_3blocks_n200_59,
  norm_f_Group_Detect_p300_3blocks_n200_60,
  norm_f_Group_Detect_p300_3blocks_n200_61,
  norm_f_Group_Detect_p300_3blocks_n200_62,
  norm_f_Group_Detect_p300_3blocks_n200_63,
  norm_f_Group_Detect_p300_3blocks_n200_64,
  norm_f_Group_Detect_p300_3blocks_n200_65,
  norm_f_Group_Detect_p300_3blocks_n200_66,
  norm_f_Group_Detect_p300_3blocks_n200_67,
  norm_f_Group_Detect_p300_3blocks_n200_68,
  norm_f_Group_Detect_p300_3blocks_n200_69,
  norm_f_Group_Detect_p300_3blocks_n200_70,
  norm_f_Group_Detect_p300_3blocks_n200_71,
  norm_f_Group_Detect_p300_3blocks_n200_72,
  norm_f_Group_Detect_p300_3blocks_n200_73,
  norm_f_Group_Detect_p300_3blocks_n200_74,
  norm_f_Group_Detect_p300_3blocks_n200_75,
  norm_f_Group_Detect_p300_3blocks_n200_76,
  norm_f_Group_Detect_p300_3blocks_n200_77,
  norm_f_Group_Detect_p300_3blocks_n200_78,
  norm_f_Group_Detect_p300_3blocks_n200_79,
  norm_f_Group_Detect_p300_3blocks_n200_80,
  norm_f_Group_Detect_p300_3blocks_n200_81,
  norm_f_Group_Detect_p300_3blocks_n200_82,
  norm_f_Group_Detect_p300_3blocks_n200_83,
  norm_f_Group_Detect_p300_3blocks_n200_84,
  norm_f_Group_Detect_p300_3blocks_n200_85,
  norm_f_Group_Detect_p300_3blocks_n200_86,
  norm_f_Group_Detect_p300_3blocks_n200_87,
  norm_f_Group_Detect_p300_3blocks_n200_88,
  norm_f_Group_Detect_p300_3blocks_n200_89,
  norm_f_Group_Detect_p300_3blocks_n200_90,
  norm_f_Group_Detect_p300_3blocks_n200_91,
  norm_f_Group_Detect_p300_3blocks_n200_92,
  norm_f_Group_Detect_p300_3blocks_n200_93,
  norm_f_Group_Detect_p300_3blocks_n200_94,
  norm_f_Group_Detect_p300_3blocks_n200_95,
  norm_f_Group_Detect_p300_3blocks_n200_96,
  norm_f_Group_Detect_p300_3blocks_n200_97,
  norm_f_Group_Detect_p300_3blocks_n200_98,
  norm_f_Group_Detect_p300_3blocks_n200_99,
  norm_f_Group_Detect_p300_3blocks_n200_100
)


mean_norm_f_Group_Detect_p300_3blocks_n200 <- mean(norm_f_Group_Detect_p300_3blocks_n200)
sd_norm_f_Group_Detect_p300_3blocks_n200 <- sd(norm_f_Group_Detect_p300_3blocks_n200)

################ 1 norm ######################
norm_1_Group_Detect_p300_3blocks_n200 <- c(
  norm_1_Group_Detect_p300_3blocks_n200_1,
  norm_1_Group_Detect_p300_3blocks_n200_2,
  norm_1_Group_Detect_p300_3blocks_n200_3,
  norm_1_Group_Detect_p300_3blocks_n200_4,
  norm_1_Group_Detect_p300_3blocks_n200_5,
  norm_1_Group_Detect_p300_3blocks_n200_6,
  norm_1_Group_Detect_p300_3blocks_n200_7,
  norm_1_Group_Detect_p300_3blocks_n200_8,
  norm_1_Group_Detect_p300_3blocks_n200_9,
  norm_1_Group_Detect_p300_3blocks_n200_10,
  norm_1_Group_Detect_p300_3blocks_n200_11,
  norm_1_Group_Detect_p300_3blocks_n200_12,
  norm_1_Group_Detect_p300_3blocks_n200_13,
  norm_1_Group_Detect_p300_3blocks_n200_14,
  norm_1_Group_Detect_p300_3blocks_n200_15,
  norm_1_Group_Detect_p300_3blocks_n200_16,
  norm_1_Group_Detect_p300_3blocks_n200_17,
  norm_1_Group_Detect_p300_3blocks_n200_18,
  norm_1_Group_Detect_p300_3blocks_n200_19,
  norm_1_Group_Detect_p300_3blocks_n200_20,
  norm_1_Group_Detect_p300_3blocks_n200_21,
  norm_1_Group_Detect_p300_3blocks_n200_22,
  norm_1_Group_Detect_p300_3blocks_n200_23,
  norm_1_Group_Detect_p300_3blocks_n200_24,
  norm_1_Group_Detect_p300_3blocks_n200_25,
  norm_1_Group_Detect_p300_3blocks_n200_26,
  norm_1_Group_Detect_p300_3blocks_n200_27,
  norm_1_Group_Detect_p300_3blocks_n200_28,
  norm_1_Group_Detect_p300_3blocks_n200_29,
  norm_1_Group_Detect_p300_3blocks_n200_30,
  norm_1_Group_Detect_p300_3blocks_n200_31,
  norm_1_Group_Detect_p300_3blocks_n200_32,
  norm_1_Group_Detect_p300_3blocks_n200_33,
  norm_1_Group_Detect_p300_3blocks_n200_34,
  norm_1_Group_Detect_p300_3blocks_n200_35,
  norm_1_Group_Detect_p300_3blocks_n200_36,
  norm_1_Group_Detect_p300_3blocks_n200_37,
  norm_1_Group_Detect_p300_3blocks_n200_38,
  norm_1_Group_Detect_p300_3blocks_n200_39,
  norm_1_Group_Detect_p300_3blocks_n200_40,
  norm_1_Group_Detect_p300_3blocks_n200_41,
  norm_1_Group_Detect_p300_3blocks_n200_42,
  norm_1_Group_Detect_p300_3blocks_n200_43,
  norm_1_Group_Detect_p300_3blocks_n200_44,
  norm_1_Group_Detect_p300_3blocks_n200_45,
  norm_1_Group_Detect_p300_3blocks_n200_46,
  norm_1_Group_Detect_p300_3blocks_n200_47,
  norm_1_Group_Detect_p300_3blocks_n200_48,
  norm_1_Group_Detect_p300_3blocks_n200_49,
  norm_1_Group_Detect_p300_3blocks_n200_50,
  norm_1_Group_Detect_p300_3blocks_n200_51,
  norm_1_Group_Detect_p300_3blocks_n200_52,
  norm_1_Group_Detect_p300_3blocks_n200_53,
  norm_1_Group_Detect_p300_3blocks_n200_54,
  norm_1_Group_Detect_p300_3blocks_n200_55,
  norm_1_Group_Detect_p300_3blocks_n200_56,
  norm_1_Group_Detect_p300_3blocks_n200_57,
  norm_1_Group_Detect_p300_3blocks_n200_58,
  norm_1_Group_Detect_p300_3blocks_n200_59,
  norm_1_Group_Detect_p300_3blocks_n200_60,
  norm_1_Group_Detect_p300_3blocks_n200_61,
  norm_1_Group_Detect_p300_3blocks_n200_62,
  norm_1_Group_Detect_p300_3blocks_n200_63,
  norm_1_Group_Detect_p300_3blocks_n200_64,
  norm_1_Group_Detect_p300_3blocks_n200_65,
  norm_1_Group_Detect_p300_3blocks_n200_66,
  norm_1_Group_Detect_p300_3blocks_n200_67,
  norm_1_Group_Detect_p300_3blocks_n200_68,
  norm_1_Group_Detect_p300_3blocks_n200_69,
  norm_1_Group_Detect_p300_3blocks_n200_70,
  norm_1_Group_Detect_p300_3blocks_n200_71,
  norm_1_Group_Detect_p300_3blocks_n200_72,
  norm_1_Group_Detect_p300_3blocks_n200_73,
  norm_1_Group_Detect_p300_3blocks_n200_74,
  norm_1_Group_Detect_p300_3blocks_n200_75,
  norm_1_Group_Detect_p300_3blocks_n200_76,
  norm_1_Group_Detect_p300_3blocks_n200_77,
  norm_1_Group_Detect_p300_3blocks_n200_78,
  norm_1_Group_Detect_p300_3blocks_n200_79,
  norm_1_Group_Detect_p300_3blocks_n200_80,
  norm_1_Group_Detect_p300_3blocks_n200_81,
  norm_1_Group_Detect_p300_3blocks_n200_82,
  norm_1_Group_Detect_p300_3blocks_n200_83,
  norm_1_Group_Detect_p300_3blocks_n200_84,
  norm_1_Group_Detect_p300_3blocks_n200_85,
  norm_1_Group_Detect_p300_3blocks_n200_86,
  norm_1_Group_Detect_p300_3blocks_n200_87,
  norm_1_Group_Detect_p300_3blocks_n200_88,
  norm_1_Group_Detect_p300_3blocks_n200_89,
  norm_1_Group_Detect_p300_3blocks_n200_90,
  norm_1_Group_Detect_p300_3blocks_n200_91,
  norm_1_Group_Detect_p300_3blocks_n200_92,
  norm_1_Group_Detect_p300_3blocks_n200_93,
  norm_1_Group_Detect_p300_3blocks_n200_94,
  norm_1_Group_Detect_p300_3blocks_n200_95,
  norm_1_Group_Detect_p300_3blocks_n200_96,
  norm_1_Group_Detect_p300_3blocks_n200_97,
  norm_1_Group_Detect_p300_3blocks_n200_98,
  norm_1_Group_Detect_p300_3blocks_n200_99,
  norm_1_Group_Detect_p300_3blocks_n200_100
)


mean_norm_1_Group_Detect_p300_3blocks_n200 <- mean(norm_1_Group_Detect_p300_3blocks_n200)
sd_norm_1_Group_Detect_p300_3blocks_n200 <- sd(norm_1_Group_Detect_p300_3blocks_n200)

################ 2 norm ######################
norm_2_Group_Detect_p300_3blocks_n200 <- c(
  norm_2_Group_Detect_p300_3blocks_n200_1,
  norm_2_Group_Detect_p300_3blocks_n200_2,
  norm_2_Group_Detect_p300_3blocks_n200_3,
  norm_2_Group_Detect_p300_3blocks_n200_4,
  norm_2_Group_Detect_p300_3blocks_n200_5,
  norm_2_Group_Detect_p300_3blocks_n200_6,
  norm_2_Group_Detect_p300_3blocks_n200_7,
  norm_2_Group_Detect_p300_3blocks_n200_8,
  norm_2_Group_Detect_p300_3blocks_n200_9,
  norm_2_Group_Detect_p300_3blocks_n200_10,
  norm_2_Group_Detect_p300_3blocks_n200_11,
  norm_2_Group_Detect_p300_3blocks_n200_12,
  norm_2_Group_Detect_p300_3blocks_n200_13,
  norm_2_Group_Detect_p300_3blocks_n200_14,
  norm_2_Group_Detect_p300_3blocks_n200_15,
  norm_2_Group_Detect_p300_3blocks_n200_16,
  norm_2_Group_Detect_p300_3blocks_n200_17,
  norm_2_Group_Detect_p300_3blocks_n200_18,
  norm_2_Group_Detect_p300_3blocks_n200_19,
  norm_2_Group_Detect_p300_3blocks_n200_20,
  norm_2_Group_Detect_p300_3blocks_n200_21,
  norm_2_Group_Detect_p300_3blocks_n200_22,
  norm_2_Group_Detect_p300_3blocks_n200_23,
  norm_2_Group_Detect_p300_3blocks_n200_24,
  norm_2_Group_Detect_p300_3blocks_n200_25,
  norm_2_Group_Detect_p300_3blocks_n200_26,
  norm_2_Group_Detect_p300_3blocks_n200_27,
  norm_2_Group_Detect_p300_3blocks_n200_28,
  norm_2_Group_Detect_p300_3blocks_n200_29,
  norm_2_Group_Detect_p300_3blocks_n200_30,
  norm_2_Group_Detect_p300_3blocks_n200_31,
  norm_2_Group_Detect_p300_3blocks_n200_32,
  norm_2_Group_Detect_p300_3blocks_n200_33,
  norm_2_Group_Detect_p300_3blocks_n200_34,
  norm_2_Group_Detect_p300_3blocks_n200_35,
  norm_2_Group_Detect_p300_3blocks_n200_36,
  norm_2_Group_Detect_p300_3blocks_n200_37,
  norm_2_Group_Detect_p300_3blocks_n200_38,
  norm_2_Group_Detect_p300_3blocks_n200_39,
  norm_2_Group_Detect_p300_3blocks_n200_40,
  norm_2_Group_Detect_p300_3blocks_n200_41,
  norm_2_Group_Detect_p300_3blocks_n200_42,
  norm_2_Group_Detect_p300_3blocks_n200_43,
  norm_2_Group_Detect_p300_3blocks_n200_44,
  norm_2_Group_Detect_p300_3blocks_n200_45,
  norm_2_Group_Detect_p300_3blocks_n200_46,
  norm_2_Group_Detect_p300_3blocks_n200_47,
  norm_2_Group_Detect_p300_3blocks_n200_48,
  norm_2_Group_Detect_p300_3blocks_n200_49,
  norm_2_Group_Detect_p300_3blocks_n200_50,
  norm_2_Group_Detect_p300_3blocks_n200_51,
  norm_2_Group_Detect_p300_3blocks_n200_52,
  norm_2_Group_Detect_p300_3blocks_n200_53,
  norm_2_Group_Detect_p300_3blocks_n200_54,
  norm_2_Group_Detect_p300_3blocks_n200_55,
  norm_2_Group_Detect_p300_3blocks_n200_56,
  norm_2_Group_Detect_p300_3blocks_n200_57,
  norm_2_Group_Detect_p300_3blocks_n200_58,
  norm_2_Group_Detect_p300_3blocks_n200_59,
  norm_2_Group_Detect_p300_3blocks_n200_60,
  norm_2_Group_Detect_p300_3blocks_n200_61,
  norm_2_Group_Detect_p300_3blocks_n200_62,
  norm_2_Group_Detect_p300_3blocks_n200_63,
  norm_2_Group_Detect_p300_3blocks_n200_64,
  norm_2_Group_Detect_p300_3blocks_n200_65,
  norm_2_Group_Detect_p300_3blocks_n200_66,
  norm_2_Group_Detect_p300_3blocks_n200_67,
  norm_2_Group_Detect_p300_3blocks_n200_68,
  norm_2_Group_Detect_p300_3blocks_n200_69,
  norm_2_Group_Detect_p300_3blocks_n200_70,
  norm_2_Group_Detect_p300_3blocks_n200_71,
  norm_2_Group_Detect_p300_3blocks_n200_72,
  norm_2_Group_Detect_p300_3blocks_n200_73,
  norm_2_Group_Detect_p300_3blocks_n200_74,
  norm_2_Group_Detect_p300_3blocks_n200_75,
  norm_2_Group_Detect_p300_3blocks_n200_76,
  norm_2_Group_Detect_p300_3blocks_n200_77,
  norm_2_Group_Detect_p300_3blocks_n200_78,
  norm_2_Group_Detect_p300_3blocks_n200_79,
  norm_2_Group_Detect_p300_3blocks_n200_80,
  norm_2_Group_Detect_p300_3blocks_n200_81,
  norm_2_Group_Detect_p300_3blocks_n200_82,
  norm_2_Group_Detect_p300_3blocks_n200_83,
  norm_2_Group_Detect_p300_3blocks_n200_84,
  norm_2_Group_Detect_p300_3blocks_n200_85,
  norm_2_Group_Detect_p300_3blocks_n200_86,
  norm_2_Group_Detect_p300_3blocks_n200_87,
  norm_2_Group_Detect_p300_3blocks_n200_88,
  norm_2_Group_Detect_p300_3blocks_n200_89,
  norm_2_Group_Detect_p300_3blocks_n200_90,
  norm_2_Group_Detect_p300_3blocks_n200_91,
  norm_2_Group_Detect_p300_3blocks_n200_92,
  norm_2_Group_Detect_p300_3blocks_n200_93,
  norm_2_Group_Detect_p300_3blocks_n200_94,
  norm_2_Group_Detect_p300_3blocks_n200_95,
  norm_2_Group_Detect_p300_3blocks_n200_96,
  norm_2_Group_Detect_p300_3blocks_n200_97,
  norm_2_Group_Detect_p300_3blocks_n200_98,
  norm_2_Group_Detect_p300_3blocks_n200_99,
  norm_2_Group_Detect_p300_3blocks_n200_100
)

mean_norm_2_Group_Detect_p300_3blocks_n200 <- mean(norm_2_Group_Detect_p300_3blocks_n200)
sd_norm_2_Group_Detect_p300_3blocks_n200 <- sd(norm_2_Group_Detect_p300_3blocks_n200)

################ m norm ######################
norm_m_Group_Detect_p300_3blocks_n200 <- c(
  norm_m_Group_Detect_p300_3blocks_n200_1,
  norm_m_Group_Detect_p300_3blocks_n200_2,
  norm_m_Group_Detect_p300_3blocks_n200_3,
  norm_m_Group_Detect_p300_3blocks_n200_4,
  norm_m_Group_Detect_p300_3blocks_n200_5,
  norm_m_Group_Detect_p300_3blocks_n200_6,
  norm_m_Group_Detect_p300_3blocks_n200_7,
  norm_m_Group_Detect_p300_3blocks_n200_8,
  norm_m_Group_Detect_p300_3blocks_n200_9,
  norm_m_Group_Detect_p300_3blocks_n200_10,
  norm_m_Group_Detect_p300_3blocks_n200_11,
  norm_m_Group_Detect_p300_3blocks_n200_12,
  norm_m_Group_Detect_p300_3blocks_n200_13,
  norm_m_Group_Detect_p300_3blocks_n200_14,
  norm_m_Group_Detect_p300_3blocks_n200_15,
  norm_m_Group_Detect_p300_3blocks_n200_16,
  norm_m_Group_Detect_p300_3blocks_n200_17,
  norm_m_Group_Detect_p300_3blocks_n200_18,
  norm_m_Group_Detect_p300_3blocks_n200_19,
  norm_m_Group_Detect_p300_3blocks_n200_20,
  norm_m_Group_Detect_p300_3blocks_n200_21,
  norm_m_Group_Detect_p300_3blocks_n200_22,
  norm_m_Group_Detect_p300_3blocks_n200_23,
  norm_m_Group_Detect_p300_3blocks_n200_24,
  norm_m_Group_Detect_p300_3blocks_n200_25,
  norm_m_Group_Detect_p300_3blocks_n200_26,
  norm_m_Group_Detect_p300_3blocks_n200_27,
  norm_m_Group_Detect_p300_3blocks_n200_28,
  norm_m_Group_Detect_p300_3blocks_n200_29,
  norm_m_Group_Detect_p300_3blocks_n200_30,
  norm_m_Group_Detect_p300_3blocks_n200_31,
  norm_m_Group_Detect_p300_3blocks_n200_32,
  norm_m_Group_Detect_p300_3blocks_n200_33,
  norm_m_Group_Detect_p300_3blocks_n200_34,
  norm_m_Group_Detect_p300_3blocks_n200_35,
  norm_m_Group_Detect_p300_3blocks_n200_36,
  norm_m_Group_Detect_p300_3blocks_n200_37,
  norm_m_Group_Detect_p300_3blocks_n200_38,
  norm_m_Group_Detect_p300_3blocks_n200_39,
  norm_m_Group_Detect_p300_3blocks_n200_40,
  norm_m_Group_Detect_p300_3blocks_n200_41,
  norm_m_Group_Detect_p300_3blocks_n200_42,
  norm_m_Group_Detect_p300_3blocks_n200_43,
  norm_m_Group_Detect_p300_3blocks_n200_44,
  norm_m_Group_Detect_p300_3blocks_n200_45,
  norm_m_Group_Detect_p300_3blocks_n200_46,
  norm_m_Group_Detect_p300_3blocks_n200_47,
  norm_m_Group_Detect_p300_3blocks_n200_48,
  norm_m_Group_Detect_p300_3blocks_n200_49,
  norm_m_Group_Detect_p300_3blocks_n200_50,
  norm_m_Group_Detect_p300_3blocks_n200_51,
  norm_m_Group_Detect_p300_3blocks_n200_52,
  norm_m_Group_Detect_p300_3blocks_n200_53,
  norm_m_Group_Detect_p300_3blocks_n200_54,
  norm_m_Group_Detect_p300_3blocks_n200_55,
  norm_m_Group_Detect_p300_3blocks_n200_56,
  norm_m_Group_Detect_p300_3blocks_n200_57,
  norm_m_Group_Detect_p300_3blocks_n200_58,
  norm_m_Group_Detect_p300_3blocks_n200_59,
  norm_m_Group_Detect_p300_3blocks_n200_60,
  norm_m_Group_Detect_p300_3blocks_n200_61,
  norm_m_Group_Detect_p300_3blocks_n200_62,
  norm_m_Group_Detect_p300_3blocks_n200_63,
  norm_m_Group_Detect_p300_3blocks_n200_64,
  norm_m_Group_Detect_p300_3blocks_n200_65,
  norm_m_Group_Detect_p300_3blocks_n200_66,
  norm_m_Group_Detect_p300_3blocks_n200_67,
  norm_m_Group_Detect_p300_3blocks_n200_68,
  norm_m_Group_Detect_p300_3blocks_n200_69,
  norm_m_Group_Detect_p300_3blocks_n200_70,
  norm_m_Group_Detect_p300_3blocks_n200_71,
  norm_m_Group_Detect_p300_3blocks_n200_72,
  norm_m_Group_Detect_p300_3blocks_n200_73,
  norm_m_Group_Detect_p300_3blocks_n200_74,
  norm_m_Group_Detect_p300_3blocks_n200_75,
  norm_m_Group_Detect_p300_3blocks_n200_76,
  norm_m_Group_Detect_p300_3blocks_n200_77,
  norm_m_Group_Detect_p300_3blocks_n200_78,
  norm_m_Group_Detect_p300_3blocks_n200_79,
  norm_m_Group_Detect_p300_3blocks_n200_80,
  norm_m_Group_Detect_p300_3blocks_n200_81,
  norm_m_Group_Detect_p300_3blocks_n200_82,
  norm_m_Group_Detect_p300_3blocks_n200_83,
  norm_m_Group_Detect_p300_3blocks_n200_84,
  norm_m_Group_Detect_p300_3blocks_n200_85,
  norm_m_Group_Detect_p300_3blocks_n200_86,
  norm_m_Group_Detect_p300_3blocks_n200_87,
  norm_m_Group_Detect_p300_3blocks_n200_88,
  norm_m_Group_Detect_p300_3blocks_n200_89,
  norm_m_Group_Detect_p300_3blocks_n200_90,
  norm_m_Group_Detect_p300_3blocks_n200_91,
  norm_m_Group_Detect_p300_3blocks_n200_92,
  norm_m_Group_Detect_p300_3blocks_n200_93,
  norm_m_Group_Detect_p300_3blocks_n200_94,
  norm_m_Group_Detect_p300_3blocks_n200_95,
  norm_m_Group_Detect_p300_3blocks_n200_96,
  norm_m_Group_Detect_p300_3blocks_n200_97,
  norm_m_Group_Detect_p300_3blocks_n200_98,
  norm_m_Group_Detect_p300_3blocks_n200_99,
  norm_m_Group_Detect_p300_3blocks_n200_100
)


mean_norm_m_Group_Detect_p300_3blocks_n200 <- mean(norm_m_Group_Detect_p300_3blocks_n200)
sd_norm_m_Group_Detect_p300_3blocks_n200 <- sd(norm_m_Group_Detect_p300_3blocks_n200)

################ time ######################
mean_time_Group_Detect_p300_3blocks_n200 <- time_Group_Detect_p300_3blocks_n200 / 100











# Index 1
diff_bmsppre_p300_3blocks_n200_1 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_1
norm_f_bmsppre_p300_3blocks_n200_1 <- norm(diff_bmsppre_p300_3blocks_n200_1, type="f")
norm_1_bmsppre_p300_3blocks_n200_1 <- norm(diff_bmsppre_p300_3blocks_n200_1, type="1")
norm_2_bmsppre_p300_3blocks_n200_1 <- norm(diff_bmsppre_p300_3blocks_n200_1, type="2")
norm_m_bmsppre_p300_3blocks_n200_1 <- norm(diff_bmsppre_p300_3blocks_n200_1, type="m")

# Index 2
diff_bmsppre_p300_3blocks_n200_2 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_2
norm_f_bmsppre_p300_3blocks_n200_2 <- norm(diff_bmsppre_p300_3blocks_n200_2, type="f")
norm_1_bmsppre_p300_3blocks_n200_2 <- norm(diff_bmsppre_p300_3blocks_n200_2, type="1")
norm_2_bmsppre_p300_3blocks_n200_2 <- norm(diff_bmsppre_p300_3blocks_n200_2, type="2")
norm_m_bmsppre_p300_3blocks_n200_2 <- norm(diff_bmsppre_p300_3blocks_n200_2, type="m")

# Index 3
diff_bmsppre_p300_3blocks_n200_3 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_3
norm_f_bmsppre_p300_3blocks_n200_3 <- norm(diff_bmsppre_p300_3blocks_n200_3, type="f")
norm_1_bmsppre_p300_3blocks_n200_3 <- norm(diff_bmsppre_p300_3blocks_n200_3, type="1")
norm_2_bmsppre_p300_3blocks_n200_3 <- norm(diff_bmsppre_p300_3blocks_n200_3, type="2")
norm_m_bmsppre_p300_3blocks_n200_3 <- norm(diff_bmsppre_p300_3blocks_n200_3, type="m")

# Index 4
diff_bmsppre_p300_3blocks_n200_4 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_4
norm_f_bmsppre_p300_3blocks_n200_4 <- norm(diff_bmsppre_p300_3blocks_n200_4, type="f")
norm_1_bmsppre_p300_3blocks_n200_4 <- norm(diff_bmsppre_p300_3blocks_n200_4, type="1")
norm_2_bmsppre_p300_3blocks_n200_4 <- norm(diff_bmsppre_p300_3blocks_n200_4, type="2")
norm_m_bmsppre_p300_3blocks_n200_4 <- norm(diff_bmsppre_p300_3blocks_n200_4, type="m")

# Index 5
diff_bmsppre_p300_3blocks_n200_5 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_5
norm_f_bmsppre_p300_3blocks_n200_5 <- norm(diff_bmsppre_p300_3blocks_n200_5, type="f")
norm_1_bmsppre_p300_3blocks_n200_5 <- norm(diff_bmsppre_p300_3blocks_n200_5, type="1")
norm_2_bmsppre_p300_3blocks_n200_5 <- norm(diff_bmsppre_p300_3blocks_n200_5, type="2")
norm_m_bmsppre_p300_3blocks_n200_5 <- norm(diff_bmsppre_p300_3blocks_n200_5, type="m")

# Index 6
diff_bmsppre_p300_3blocks_n200_6 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_6
norm_f_bmsppre_p300_3blocks_n200_6 <- norm(diff_bmsppre_p300_3blocks_n200_6, type="f")
norm_1_bmsppre_p300_3blocks_n200_6 <- norm(diff_bmsppre_p300_3blocks_n200_6, type="1")
norm_2_bmsppre_p300_3blocks_n200_6 <- norm(diff_bmsppre_p300_3blocks_n200_6, type="2")
norm_m_bmsppre_p300_3blocks_n200_6 <- norm(diff_bmsppre_p300_3blocks_n200_6, type="m")

# Index 7
diff_bmsppre_p300_3blocks_n200_7 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_7
norm_f_bmsppre_p300_3blocks_n200_7 <- norm(diff_bmsppre_p300_3blocks_n200_7, type="f")
norm_1_bmsppre_p300_3blocks_n200_7 <- norm(diff_bmsppre_p300_3blocks_n200_7, type="1")
norm_2_bmsppre_p300_3blocks_n200_7 <- norm(diff_bmsppre_p300_3blocks_n200_7, type="2")
norm_m_bmsppre_p300_3blocks_n200_7 <- norm(diff_bmsppre_p300_3blocks_n200_7, type="m")

# Index 8
diff_bmsppre_p300_3blocks_n200_8 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_8
norm_f_bmsppre_p300_3blocks_n200_8 <- norm(diff_bmsppre_p300_3blocks_n200_8, type="f")
norm_1_bmsppre_p300_3blocks_n200_8 <- norm(diff_bmsppre_p300_3blocks_n200_8, type="1")
norm_2_bmsppre_p300_3blocks_n200_8 <- norm(diff_bmsppre_p300_3blocks_n200_8, type="2")
norm_m_bmsppre_p300_3blocks_n200_8 <- norm(diff_bmsppre_p300_3blocks_n200_8, type="m")

# Index 9
diff_bmsppre_p300_3blocks_n200_9 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_9
norm_f_bmsppre_p300_3blocks_n200_9 <- norm(diff_bmsppre_p300_3blocks_n200_9, type="f")
norm_1_bmsppre_p300_3blocks_n200_9 <- norm(diff_bmsppre_p300_3blocks_n200_9, type="1")
norm_2_bmsppre_p300_3blocks_n200_9 <- norm(diff_bmsppre_p300_3blocks_n200_9, type="2")
norm_m_bmsppre_p300_3blocks_n200_9 <- norm(diff_bmsppre_p300_3blocks_n200_9, type="m")

# Index 10
diff_bmsppre_p300_3blocks_n200_10 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_10
norm_f_bmsppre_p300_3blocks_n200_10 <- norm(diff_bmsppre_p300_3blocks_n200_10, type="f")
norm_1_bmsppre_p300_3blocks_n200_10 <- norm(diff_bmsppre_p300_3blocks_n200_10, type="1")
norm_2_bmsppre_p300_3blocks_n200_10 <- norm(diff_bmsppre_p300_3blocks_n200_10, type="2")
norm_m_bmsppre_p300_3blocks_n200_10 <- norm(diff_bmsppre_p300_3blocks_n200_10, type="m")

# Index 11
diff_bmsppre_p300_3blocks_n200_11 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_11
norm_f_bmsppre_p300_3blocks_n200_11 <- norm(diff_bmsppre_p300_3blocks_n200_11, type="f")
norm_1_bmsppre_p300_3blocks_n200_11 <- norm(diff_bmsppre_p300_3blocks_n200_11, type="1")
norm_2_bmsppre_p300_3blocks_n200_11 <- norm(diff_bmsppre_p300_3blocks_n200_11, type="2")
norm_m_bmsppre_p300_3blocks_n200_11 <- norm(diff_bmsppre_p300_3blocks_n200_11, type="m")

# Index 12
diff_bmsppre_p300_3blocks_n200_12 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_12
norm_f_bmsppre_p300_3blocks_n200_12 <- norm(diff_bmsppre_p300_3blocks_n200_12, type="f")
norm_1_bmsppre_p300_3blocks_n200_12 <- norm(diff_bmsppre_p300_3blocks_n200_12, type="1")
norm_2_bmsppre_p300_3blocks_n200_12 <- norm(diff_bmsppre_p300_3blocks_n200_12, type="2")
norm_m_bmsppre_p300_3blocks_n200_12 <- norm(diff_bmsppre_p300_3blocks_n200_12, type="m")

# Index 13
diff_bmsppre_p300_3blocks_n200_13 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_13
norm_f_bmsppre_p300_3blocks_n200_13 <- norm(diff_bmsppre_p300_3blocks_n200_13, type="f")
norm_1_bmsppre_p300_3blocks_n200_13 <- norm(diff_bmsppre_p300_3blocks_n200_13, type="1")
norm_2_bmsppre_p300_3blocks_n200_13 <- norm(diff_bmsppre_p300_3blocks_n200_13, type="2")
norm_m_bmsppre_p300_3blocks_n200_13 <- norm(diff_bmsppre_p300_3blocks_n200_13, type="m")

# Index 14
diff_bmsppre_p300_3blocks_n200_14 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_14
norm_f_bmsppre_p300_3blocks_n200_14 <- norm(diff_bmsppre_p300_3blocks_n200_14, type="f")
norm_1_bmsppre_p300_3blocks_n200_14 <- norm(diff_bmsppre_p300_3blocks_n200_14, type="1")
norm_2_bmsppre_p300_3blocks_n200_14 <- norm(diff_bmsppre_p300_3blocks_n200_14, type="2")
norm_m_bmsppre_p300_3blocks_n200_14 <- norm(diff_bmsppre_p300_3blocks_n200_14, type="m")

# Index 15
diff_bmsppre_p300_3blocks_n200_15 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_15
norm_f_bmsppre_p300_3blocks_n200_15 <- norm(diff_bmsppre_p300_3blocks_n200_15, type="f")
norm_1_bmsppre_p300_3blocks_n200_15 <- norm(diff_bmsppre_p300_3blocks_n200_15, type="1")
norm_2_bmsppre_p300_3blocks_n200_15 <- norm(diff_bmsppre_p300_3blocks_n200_15, type="2")
norm_m_bmsppre_p300_3blocks_n200_15 <- norm(diff_bmsppre_p300_3blocks_n200_15, type="m")

# Index 16
diff_bmsppre_p300_3blocks_n200_16 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_16
norm_f_bmsppre_p300_3blocks_n200_16 <- norm(diff_bmsppre_p300_3blocks_n200_16, type="f")
norm_1_bmsppre_p300_3blocks_n200_16 <- norm(diff_bmsppre_p300_3blocks_n200_16, type="1")
norm_2_bmsppre_p300_3blocks_n200_16 <- norm(diff_bmsppre_p300_3blocks_n200_16, type="2")
norm_m_bmsppre_p300_3blocks_n200_16 <- norm(diff_bmsppre_p300_3blocks_n200_16, type="m")

# Index 17
diff_bmsppre_p300_3blocks_n200_17 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_17
norm_f_bmsppre_p300_3blocks_n200_17 <- norm(diff_bmsppre_p300_3blocks_n200_17, type="f")
norm_1_bmsppre_p300_3blocks_n200_17 <- norm(diff_bmsppre_p300_3blocks_n200_17, type="1")
norm_2_bmsppre_p300_3blocks_n200_17 <- norm(diff_bmsppre_p300_3blocks_n200_17, type="2")
norm_m_bmsppre_p300_3blocks_n200_17 <- norm(diff_bmsppre_p300_3blocks_n200_17, type="m")

# Index 18
diff_bmsppre_p300_3blocks_n200_18 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_18
norm_f_bmsppre_p300_3blocks_n200_18 <- norm(diff_bmsppre_p300_3blocks_n200_18, type="f")
norm_1_bmsppre_p300_3blocks_n200_18 <- norm(diff_bmsppre_p300_3blocks_n200_18, type="1")
norm_2_bmsppre_p300_3blocks_n200_18 <- norm(diff_bmsppre_p300_3blocks_n200_18, type="2")
norm_m_bmsppre_p300_3blocks_n200_18 <- norm(diff_bmsppre_p300_3blocks_n200_18, type="m")

# Index 19
diff_bmsppre_p300_3blocks_n200_19 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_19
norm_f_bmsppre_p300_3blocks_n200_19 <- norm(diff_bmsppre_p300_3blocks_n200_19, type="f")
norm_1_bmsppre_p300_3blocks_n200_19 <- norm(diff_bmsppre_p300_3blocks_n200_19, type="1")
norm_2_bmsppre_p300_3blocks_n200_19 <- norm(diff_bmsppre_p300_3blocks_n200_19, type="2")
norm_m_bmsppre_p300_3blocks_n200_19 <- norm(diff_bmsppre_p300_3blocks_n200_19, type="m")

# Index 20
diff_bmsppre_p300_3blocks_n200_20 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_20
norm_f_bmsppre_p300_3blocks_n200_20 <- norm(diff_bmsppre_p300_3blocks_n200_20, type="f")
norm_1_bmsppre_p300_3blocks_n200_20 <- norm(diff_bmsppre_p300_3blocks_n200_20, type="1")
norm_2_bmsppre_p300_3blocks_n200_20 <- norm(diff_bmsppre_p300_3blocks_n200_20, type="2")
norm_m_bmsppre_p300_3blocks_n200_20 <- norm(diff_bmsppre_p300_3blocks_n200_20, type="m")

# Index 21
diff_bmsppre_p300_3blocks_n200_21 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_21
norm_f_bmsppre_p300_3blocks_n200_21 <- norm(diff_bmsppre_p300_3blocks_n200_21, type="f")
norm_1_bmsppre_p300_3blocks_n200_21 <- norm(diff_bmsppre_p300_3blocks_n200_21, type="1")
norm_2_bmsppre_p300_3blocks_n200_21 <- norm(diff_bmsppre_p300_3blocks_n200_21, type="2")
norm_m_bmsppre_p300_3blocks_n200_21 <- norm(diff_bmsppre_p300_3blocks_n200_21, type="m")

# Index 22
diff_bmsppre_p300_3blocks_n200_22 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_22
norm_f_bmsppre_p300_3blocks_n200_22 <- norm(diff_bmsppre_p300_3blocks_n200_22, type="f")
norm_1_bmsppre_p300_3blocks_n200_22 <- norm(diff_bmsppre_p300_3blocks_n200_22, type="1")
norm_2_bmsppre_p300_3blocks_n200_22 <- norm(diff_bmsppre_p300_3blocks_n200_22, type="2")
norm_m_bmsppre_p300_3blocks_n200_22 <- norm(diff_bmsppre_p300_3blocks_n200_22, type="m")

# Index 23
diff_bmsppre_p300_3blocks_n200_23 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_23
norm_f_bmsppre_p300_3blocks_n200_23 <- norm(diff_bmsppre_p300_3blocks_n200_23, type="f")
norm_1_bmsppre_p300_3blocks_n200_23 <- norm(diff_bmsppre_p300_3blocks_n200_23, type="1")
norm_2_bmsppre_p300_3blocks_n200_23 <- norm(diff_bmsppre_p300_3blocks_n200_23, type="2")
norm_m_bmsppre_p300_3blocks_n200_23 <- norm(diff_bmsppre_p300_3blocks_n200_23, type="m")

# Index 24
diff_bmsppre_p300_3blocks_n200_24 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_24
norm_f_bmsppre_p300_3blocks_n200_24 <- norm(diff_bmsppre_p300_3blocks_n200_24, type="f")
norm_1_bmsppre_p300_3blocks_n200_24 <- norm(diff_bmsppre_p300_3blocks_n200_24, type="1")
norm_2_bmsppre_p300_3blocks_n200_24 <- norm(diff_bmsppre_p300_3blocks_n200_24, type="2")
norm_m_bmsppre_p300_3blocks_n200_24 <- norm(diff_bmsppre_p300_3blocks_n200_24, type="m")

# Index 25
diff_bmsppre_p300_3blocks_n200_25 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_25
norm_f_bmsppre_p300_3blocks_n200_25 <- norm(diff_bmsppre_p300_3blocks_n200_25, type="f")
norm_1_bmsppre_p300_3blocks_n200_25 <- norm(diff_bmsppre_p300_3blocks_n200_25, type="1")
norm_2_bmsppre_p300_3blocks_n200_25 <- norm(diff_bmsppre_p300_3blocks_n200_25, type="2")
norm_m_bmsppre_p300_3blocks_n200_25 <- norm(diff_bmsppre_p300_3blocks_n200_25, type="m")

# Index 26
diff_bmsppre_p300_3blocks_n200_26 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_26
norm_f_bmsppre_p300_3blocks_n200_26 <- norm(diff_bmsppre_p300_3blocks_n200_26, type="f")
norm_1_bmsppre_p300_3blocks_n200_26 <- norm(diff_bmsppre_p300_3blocks_n200_26, type="1")
norm_2_bmsppre_p300_3blocks_n200_26 <- norm(diff_bmsppre_p300_3blocks_n200_26, type="2")
norm_m_bmsppre_p300_3blocks_n200_26 <- norm(diff_bmsppre_p300_3blocks_n200_26, type="m")

# Index 27
diff_bmsppre_p300_3blocks_n200_27 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_27
norm_f_bmsppre_p300_3blocks_n200_27 <- norm(diff_bmsppre_p300_3blocks_n200_27, type="f")
norm_1_bmsppre_p300_3blocks_n200_27 <- norm(diff_bmsppre_p300_3blocks_n200_27, type="1")
norm_2_bmsppre_p300_3blocks_n200_27 <- norm(diff_bmsppre_p300_3blocks_n200_27, type="2")
norm_m_bmsppre_p300_3blocks_n200_27 <- norm(diff_bmsppre_p300_3blocks_n200_27, type="m")

# Index 28
diff_bmsppre_p300_3blocks_n200_28 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_28
norm_f_bmsppre_p300_3blocks_n200_28 <- norm(diff_bmsppre_p300_3blocks_n200_28, type="f")
norm_1_bmsppre_p300_3blocks_n200_28 <- norm(diff_bmsppre_p300_3blocks_n200_28, type="1")
norm_2_bmsppre_p300_3blocks_n200_28 <- norm(diff_bmsppre_p300_3blocks_n200_28, type="2")
norm_m_bmsppre_p300_3blocks_n200_28 <- norm(diff_bmsppre_p300_3blocks_n200_28, type="m")

# Index 29
diff_bmsppre_p300_3blocks_n200_29 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_29
norm_f_bmsppre_p300_3blocks_n200_29 <- norm(diff_bmsppre_p300_3blocks_n200_29, type="f")
norm_1_bmsppre_p300_3blocks_n200_29 <- norm(diff_bmsppre_p300_3blocks_n200_29, type="1")
norm_2_bmsppre_p300_3blocks_n200_29 <- norm(diff_bmsppre_p300_3blocks_n200_29, type="2")
norm_m_bmsppre_p300_3blocks_n200_29 <- norm(diff_bmsppre_p300_3blocks_n200_29, type="m")

# Index 30
diff_bmsppre_p300_3blocks_n200_30 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_30
norm_f_bmsppre_p300_3blocks_n200_30 <- norm(diff_bmsppre_p300_3blocks_n200_30, type="f")
norm_1_bmsppre_p300_3blocks_n200_30 <- norm(diff_bmsppre_p300_3blocks_n200_30, type="1")
norm_2_bmsppre_p300_3blocks_n200_30 <- norm(diff_bmsppre_p300_3blocks_n200_30, type="2")
norm_m_bmsppre_p300_3blocks_n200_30 <- norm(diff_bmsppre_p300_3blocks_n200_30, type="m")

# Index 31
diff_bmsppre_p300_3blocks_n200_31 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_31
norm_f_bmsppre_p300_3blocks_n200_31 <- norm(diff_bmsppre_p300_3blocks_n200_31, type="f")
norm_1_bmsppre_p300_3blocks_n200_31 <- norm(diff_bmsppre_p300_3blocks_n200_31, type="1")
norm_2_bmsppre_p300_3blocks_n200_31 <- norm(diff_bmsppre_p300_3blocks_n200_31, type="2")
norm_m_bmsppre_p300_3blocks_n200_31 <- norm(diff_bmsppre_p300_3blocks_n200_31, type="m")

# Index 32
diff_bmsppre_p300_3blocks_n200_32 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_32
norm_f_bmsppre_p300_3blocks_n200_32 <- norm(diff_bmsppre_p300_3blocks_n200_32, type="f")
norm_1_bmsppre_p300_3blocks_n200_32 <- norm(diff_bmsppre_p300_3blocks_n200_32, type="1")
norm_2_bmsppre_p300_3blocks_n200_32 <- norm(diff_bmsppre_p300_3blocks_n200_32, type="2")
norm_m_bmsppre_p300_3blocks_n200_32 <- norm(diff_bmsppre_p300_3blocks_n200_32, type="m")

# Index 33
diff_bmsppre_p300_3blocks_n200_33 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_33
norm_f_bmsppre_p300_3blocks_n200_33 <- norm(diff_bmsppre_p300_3blocks_n200_33, type="f")
norm_1_bmsppre_p300_3blocks_n200_33 <- norm(diff_bmsppre_p300_3blocks_n200_33, type="1")
norm_2_bmsppre_p300_3blocks_n200_33 <- norm(diff_bmsppre_p300_3blocks_n200_33, type="2")
norm_m_bmsppre_p300_3blocks_n200_33 <- norm(diff_bmsppre_p300_3blocks_n200_33, type="m")

# Index 34
diff_bmsppre_p300_3blocks_n200_34 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_34
norm_f_bmsppre_p300_3blocks_n200_34 <- norm(diff_bmsppre_p300_3blocks_n200_34, type="f")
norm_1_bmsppre_p300_3blocks_n200_34 <- norm(diff_bmsppre_p300_3blocks_n200_34, type="1")
norm_2_bmsppre_p300_3blocks_n200_34 <- norm(diff_bmsppre_p300_3blocks_n200_34, type="2")
norm_m_bmsppre_p300_3blocks_n200_34 <- norm(diff_bmsppre_p300_3blocks_n200_34, type="m")

# Index 35
diff_bmsppre_p300_3blocks_n200_35 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_35
norm_f_bmsppre_p300_3blocks_n200_35 <- norm(diff_bmsppre_p300_3blocks_n200_35, type="f")
norm_1_bmsppre_p300_3blocks_n200_35 <- norm(diff_bmsppre_p300_3blocks_n200_35, type="1")
norm_2_bmsppre_p300_3blocks_n200_35 <- norm(diff_bmsppre_p300_3blocks_n200_35, type="2")
norm_m_bmsppre_p300_3blocks_n200_35 <- norm(diff_bmsppre_p300_3blocks_n200_35, type="m")

# Index 36
diff_bmsppre_p300_3blocks_n200_36 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_36
norm_f_bmsppre_p300_3blocks_n200_36 <- norm(diff_bmsppre_p300_3blocks_n200_36, type="f")
norm_1_bmsppre_p300_3blocks_n200_36 <- norm(diff_bmsppre_p300_3blocks_n200_36, type="1")
norm_2_bmsppre_p300_3blocks_n200_36 <- norm(diff_bmsppre_p300_3blocks_n200_36, type="2")
norm_m_bmsppre_p300_3blocks_n200_36 <- norm(diff_bmsppre_p300_3blocks_n200_36, type="m")

# Index 37
diff_bmsppre_p300_3blocks_n200_37 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_37
norm_f_bmsppre_p300_3blocks_n200_37 <- norm(diff_bmsppre_p300_3blocks_n200_37, type="f")
norm_1_bmsppre_p300_3blocks_n200_37 <- norm(diff_bmsppre_p300_3blocks_n200_37, type="1")
norm_2_bmsppre_p300_3blocks_n200_37 <- norm(diff_bmsppre_p300_3blocks_n200_37, type="2")
norm_m_bmsppre_p300_3blocks_n200_37 <- norm(diff_bmsppre_p300_3blocks_n200_37, type="m")

# Index 38
diff_bmsppre_p300_3blocks_n200_38 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_38
norm_f_bmsppre_p300_3blocks_n200_38 <- norm(diff_bmsppre_p300_3blocks_n200_38, type="f")
norm_1_bmsppre_p300_3blocks_n200_38 <- norm(diff_bmsppre_p300_3blocks_n200_38, type="1")
norm_2_bmsppre_p300_3blocks_n200_38 <- norm(diff_bmsppre_p300_3blocks_n200_38, type="2")
norm_m_bmsppre_p300_3blocks_n200_38 <- norm(diff_bmsppre_p300_3blocks_n200_38, type="m")

# Index 39
diff_bmsppre_p300_3blocks_n200_39 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_39
norm_f_bmsppre_p300_3blocks_n200_39 <- norm(diff_bmsppre_p300_3blocks_n200_39, type="f")
norm_1_bmsppre_p300_3blocks_n200_39 <- norm(diff_bmsppre_p300_3blocks_n200_39, type="1")
norm_2_bmsppre_p300_3blocks_n200_39 <- norm(diff_bmsppre_p300_3blocks_n200_39, type="2")
norm_m_bmsppre_p300_3blocks_n200_39 <- norm(diff_bmsppre_p300_3blocks_n200_39, type="m")

# Index 40
diff_bmsppre_p300_3blocks_n200_40 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_40
norm_f_bmsppre_p300_3blocks_n200_40 <- norm(diff_bmsppre_p300_3blocks_n200_40, type="f")
norm_1_bmsppre_p300_3blocks_n200_40 <- norm(diff_bmsppre_p300_3blocks_n200_40, type="1")
norm_2_bmsppre_p300_3blocks_n200_40 <- norm(diff_bmsppre_p300_3blocks_n200_40, type="2")
norm_m_bmsppre_p300_3blocks_n200_40 <- norm(diff_bmsppre_p300_3blocks_n200_40, type="m")

# Index 41
diff_bmsppre_p300_3blocks_n200_41 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_41
norm_f_bmsppre_p300_3blocks_n200_41 <- norm(diff_bmsppre_p300_3blocks_n200_41, type="f")
norm_1_bmsppre_p300_3blocks_n200_41 <- norm(diff_bmsppre_p300_3blocks_n200_41, type="1")
norm_2_bmsppre_p300_3blocks_n200_41 <- norm(diff_bmsppre_p300_3blocks_n200_41, type="2")
norm_m_bmsppre_p300_3blocks_n200_41 <- norm(diff_bmsppre_p300_3blocks_n200_41, type="m")

# Index 42
diff_bmsppre_p300_3blocks_n200_42 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_42
norm_f_bmsppre_p300_3blocks_n200_42 <- norm(diff_bmsppre_p300_3blocks_n200_42, type="f")
norm_1_bmsppre_p300_3blocks_n200_42 <- norm(diff_bmsppre_p300_3blocks_n200_42, type="1")
norm_2_bmsppre_p300_3blocks_n200_42 <- norm(diff_bmsppre_p300_3blocks_n200_42, type="2")
norm_m_bmsppre_p300_3blocks_n200_42 <- norm(diff_bmsppre_p300_3blocks_n200_42, type="m")

# Index 43
diff_bmsppre_p300_3blocks_n200_43 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_43
norm_f_bmsppre_p300_3blocks_n200_43 <- norm(diff_bmsppre_p300_3blocks_n200_43, type="f")
norm_1_bmsppre_p300_3blocks_n200_43 <- norm(diff_bmsppre_p300_3blocks_n200_43, type="1")
norm_2_bmsppre_p300_3blocks_n200_43 <- norm(diff_bmsppre_p300_3blocks_n200_43, type="2")
norm_m_bmsppre_p300_3blocks_n200_43 <- norm(diff_bmsppre_p300_3blocks_n200_43, type="m")

# Index 44
diff_bmsppre_p300_3blocks_n200_44 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_44
norm_f_bmsppre_p300_3blocks_n200_44 <- norm(diff_bmsppre_p300_3blocks_n200_44, type="f")
norm_1_bmsppre_p300_3blocks_n200_44 <- norm(diff_bmsppre_p300_3blocks_n200_44, type="1")
norm_2_bmsppre_p300_3blocks_n200_44 <- norm(diff_bmsppre_p300_3blocks_n200_44, type="2")
norm_m_bmsppre_p300_3blocks_n200_44 <- norm(diff_bmsppre_p300_3blocks_n200_44, type="m")

# Index 45
diff_bmsppre_p300_3blocks_n200_45 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_45
norm_f_bmsppre_p300_3blocks_n200_45 <- norm(diff_bmsppre_p300_3blocks_n200_45, type="f")
norm_1_bmsppre_p300_3blocks_n200_45 <- norm(diff_bmsppre_p300_3blocks_n200_45, type="1")
norm_2_bmsppre_p300_3blocks_n200_45 <- norm(diff_bmsppre_p300_3blocks_n200_45, type="2")
norm_m_bmsppre_p300_3blocks_n200_45 <- norm(diff_bmsppre_p300_3blocks_n200_45, type="m")

# Index 46
diff_bmsppre_p300_3blocks_n200_46 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_46
norm_f_bmsppre_p300_3blocks_n200_46 <- norm(diff_bmsppre_p300_3blocks_n200_46, type="f")
norm_1_bmsppre_p300_3blocks_n200_46 <- norm(diff_bmsppre_p300_3blocks_n200_46, type="1")
norm_2_bmsppre_p300_3blocks_n200_46 <- norm(diff_bmsppre_p300_3blocks_n200_46, type="2")
norm_m_bmsppre_p300_3blocks_n200_46 <- norm(diff_bmsppre_p300_3blocks_n200_46, type="m")

# Index 47
diff_bmsppre_p300_3blocks_n200_47 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_47
norm_f_bmsppre_p300_3blocks_n200_47 <- norm(diff_bmsppre_p300_3blocks_n200_47, type="f")
norm_1_bmsppre_p300_3blocks_n200_47 <- norm(diff_bmsppre_p300_3blocks_n200_47, type="1")
norm_2_bmsppre_p300_3blocks_n200_47 <- norm(diff_bmsppre_p300_3blocks_n200_47, type="2")
norm_m_bmsppre_p300_3blocks_n200_47 <- norm(diff_bmsppre_p300_3blocks_n200_47, type="m")

# Index 48
diff_bmsppre_p300_3blocks_n200_48 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_48
norm_f_bmsppre_p300_3blocks_n200_48 <- norm(diff_bmsppre_p300_3blocks_n200_48, type="f")
norm_1_bmsppre_p300_3blocks_n200_48 <- norm(diff_bmsppre_p300_3blocks_n200_48, type="1")
norm_2_bmsppre_p300_3blocks_n200_48 <- norm(diff_bmsppre_p300_3blocks_n200_48, type="2")
norm_m_bmsppre_p300_3blocks_n200_48 <- norm(diff_bmsppre_p300_3blocks_n200_48, type="m")

# Index 49
diff_bmsppre_p300_3blocks_n200_49 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_49
norm_f_bmsppre_p300_3blocks_n200_49 <- norm(diff_bmsppre_p300_3blocks_n200_49, type="f")
norm_1_bmsppre_p300_3blocks_n200_49 <- norm(diff_bmsppre_p300_3blocks_n200_49, type="1")
norm_2_bmsppre_p300_3blocks_n200_49 <- norm(diff_bmsppre_p300_3blocks_n200_49, type="2")
norm_m_bmsppre_p300_3blocks_n200_49 <- norm(diff_bmsppre_p300_3blocks_n200_49, type="m")

# Index 50
diff_bmsppre_p300_3blocks_n200_50 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_50
norm_f_bmsppre_p300_3blocks_n200_50 <- norm(diff_bmsppre_p300_3blocks_n200_50, type="f")
norm_1_bmsppre_p300_3blocks_n200_50 <- norm(diff_bmsppre_p300_3blocks_n200_50, type="1")
norm_2_bmsppre_p300_3blocks_n200_50 <- norm(diff_bmsppre_p300_3blocks_n200_50, type="2")
norm_m_bmsppre_p300_3blocks_n200_50 <- norm(diff_bmsppre_p300_3blocks_n200_50, type="m")

# Index 51
diff_bmsppre_p300_3blocks_n200_51 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_51
norm_f_bmsppre_p300_3blocks_n200_51 <- norm(diff_bmsppre_p300_3blocks_n200_51, type="f")
norm_1_bmsppre_p300_3blocks_n200_51 <- norm(diff_bmsppre_p300_3blocks_n200_51, type="1")
norm_2_bmsppre_p300_3blocks_n200_51 <- norm(diff_bmsppre_p300_3blocks_n200_51, type="2")
norm_m_bmsppre_p300_3blocks_n200_51 <- norm(diff_bmsppre_p300_3blocks_n200_51, type="m")

# Index 52
diff_bmsppre_p300_3blocks_n200_52 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_52
norm_f_bmsppre_p300_3blocks_n200_52 <- norm(diff_bmsppre_p300_3blocks_n200_52, type="f")
norm_1_bmsppre_p300_3blocks_n200_52 <- norm(diff_bmsppre_p300_3blocks_n200_52, type="1")
norm_2_bmsppre_p300_3blocks_n200_52 <- norm(diff_bmsppre_p300_3blocks_n200_52, type="2")
norm_m_bmsppre_p300_3blocks_n200_52 <- norm(diff_bmsppre_p300_3blocks_n200_52, type="m")

# Index 53
diff_bmsppre_p300_3blocks_n200_53 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_53
norm_f_bmsppre_p300_3blocks_n200_53 <- norm(diff_bmsppre_p300_3blocks_n200_53, type="f")
norm_1_bmsppre_p300_3blocks_n200_53 <- norm(diff_bmsppre_p300_3blocks_n200_53, type="1")
norm_2_bmsppre_p300_3blocks_n200_53 <- norm(diff_bmsppre_p300_3blocks_n200_53, type="2")
norm_m_bmsppre_p300_3blocks_n200_53 <- norm(diff_bmsppre_p300_3blocks_n200_53, type="m")

# Index 54
diff_bmsppre_p300_3blocks_n200_54 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_54
norm_f_bmsppre_p300_3blocks_n200_54 <- norm(diff_bmsppre_p300_3blocks_n200_54, type="f")
norm_1_bmsppre_p300_3blocks_n200_54 <- norm(diff_bmsppre_p300_3blocks_n200_54, type="1")
norm_2_bmsppre_p300_3blocks_n200_54 <- norm(diff_bmsppre_p300_3blocks_n200_54, type="2")
norm_m_bmsppre_p300_3blocks_n200_54 <- norm(diff_bmsppre_p300_3blocks_n200_54, type="m")

# Index 55
diff_bmsppre_p300_3blocks_n200_55 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_55
norm_f_bmsppre_p300_3blocks_n200_55 <- norm(diff_bmsppre_p300_3blocks_n200_55, type="f")
norm_1_bmsppre_p300_3blocks_n200_55 <- norm(diff_bmsppre_p300_3blocks_n200_55, type="1")
norm_2_bmsppre_p300_3blocks_n200_55 <- norm(diff_bmsppre_p300_3blocks_n200_55, type="2")
norm_m_bmsppre_p300_3blocks_n200_55 <- norm(diff_bmsppre_p300_3blocks_n200_55, type="m")

# Index 56
diff_bmsppre_p300_3blocks_n200_56 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_56
norm_f_bmsppre_p300_3blocks_n200_56 <- norm(diff_bmsppre_p300_3blocks_n200_56, type="f")
norm_1_bmsppre_p300_3blocks_n200_56 <- norm(diff_bmsppre_p300_3blocks_n200_56, type="1")
norm_2_bmsppre_p300_3blocks_n200_56 <- norm(diff_bmsppre_p300_3blocks_n200_56, type="2")
norm_m_bmsppre_p300_3blocks_n200_56 <- norm(diff_bmsppre_p300_3blocks_n200_56, type="m")

# Index 57
diff_bmsppre_p300_3blocks_n200_57 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_57
norm_f_bmsppre_p300_3blocks_n200_57 <- norm(diff_bmsppre_p300_3blocks_n200_57, type="f")
norm_1_bmsppre_p300_3blocks_n200_57 <- norm(diff_bmsppre_p300_3blocks_n200_57, type="1")
norm_2_bmsppre_p300_3blocks_n200_57 <- norm(diff_bmsppre_p300_3blocks_n200_57, type="2")
norm_m_bmsppre_p300_3blocks_n200_57 <- norm(diff_bmsppre_p300_3blocks_n200_57, type="m")

# Index 58
diff_bmsppre_p300_3blocks_n200_58 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_58
norm_f_bmsppre_p300_3blocks_n200_58 <- norm(diff_bmsppre_p300_3blocks_n200_58, type="f")
norm_1_bmsppre_p300_3blocks_n200_58 <- norm(diff_bmsppre_p300_3blocks_n200_58, type="1")
norm_2_bmsppre_p300_3blocks_n200_58 <- norm(diff_bmsppre_p300_3blocks_n200_58, type="2")
norm_m_bmsppre_p300_3blocks_n200_58 <- norm(diff_bmsppre_p300_3blocks_n200_58, type="m")

# Index 59
diff_bmsppre_p300_3blocks_n200_59 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_59
norm_f_bmsppre_p300_3blocks_n200_59 <- norm(diff_bmsppre_p300_3blocks_n200_59, type="f")
norm_1_bmsppre_p300_3blocks_n200_59 <- norm(diff_bmsppre_p300_3blocks_n200_59, type="1")
norm_2_bmsppre_p300_3blocks_n200_59 <- norm(diff_bmsppre_p300_3blocks_n200_59, type="2")
norm_m_bmsppre_p300_3blocks_n200_59 <- norm(diff_bmsppre_p300_3blocks_n200_59, type="m")

# Index 60
diff_bmsppre_p300_3blocks_n200_60 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_60
norm_f_bmsppre_p300_3blocks_n200_60 <- norm(diff_bmsppre_p300_3blocks_n200_60, type="f")
norm_1_bmsppre_p300_3blocks_n200_60 <- norm(diff_bmsppre_p300_3blocks_n200_60, type="1")
norm_2_bmsppre_p300_3blocks_n200_60 <- norm(diff_bmsppre_p300_3blocks_n200_60, type="2")
norm_m_bmsppre_p300_3blocks_n200_60 <- norm(diff_bmsppre_p300_3blocks_n200_60, type="m")

# Index 61
diff_bmsppre_p300_3blocks_n200_61 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_61
norm_f_bmsppre_p300_3blocks_n200_61 <- norm(diff_bmsppre_p300_3blocks_n200_61, type="f")
norm_1_bmsppre_p300_3blocks_n200_61 <- norm(diff_bmsppre_p300_3blocks_n200_61, type="1")
norm_2_bmsppre_p300_3blocks_n200_61 <- norm(diff_bmsppre_p300_3blocks_n200_61, type="2")
norm_m_bmsppre_p300_3blocks_n200_61 <- norm(diff_bmsppre_p300_3blocks_n200_61, type="m")

# Index 62
diff_bmsppre_p300_3blocks_n200_62 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_62
norm_f_bmsppre_p300_3blocks_n200_62 <- norm(diff_bmsppre_p300_3blocks_n200_62, type="f")
norm_1_bmsppre_p300_3blocks_n200_62 <- norm(diff_bmsppre_p300_3blocks_n200_62, type="1")
norm_2_bmsppre_p300_3blocks_n200_62 <- norm(diff_bmsppre_p300_3blocks_n200_62, type="2")
norm_m_bmsppre_p300_3blocks_n200_62 <- norm(diff_bmsppre_p300_3blocks_n200_62, type="m")

# Index 63
diff_bmsppre_p300_3blocks_n200_63 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_63
norm_f_bmsppre_p300_3blocks_n200_63 <- norm(diff_bmsppre_p300_3blocks_n200_63, type="f")
norm_1_bmsppre_p300_3blocks_n200_63 <- norm(diff_bmsppre_p300_3blocks_n200_63, type="1")
norm_2_bmsppre_p300_3blocks_n200_63 <- norm(diff_bmsppre_p300_3blocks_n200_63, type="2")
norm_m_bmsppre_p300_3blocks_n200_63 <- norm(diff_bmsppre_p300_3blocks_n200_63, type="m")

# Index 64
diff_bmsppre_p300_3blocks_n200_64 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_64
norm_f_bmsppre_p300_3blocks_n200_64 <- norm(diff_bmsppre_p300_3blocks_n200_64, type="f")
norm_1_bmsppre_p300_3blocks_n200_64 <- norm(diff_bmsppre_p300_3blocks_n200_64, type="1")
norm_2_bmsppre_p300_3blocks_n200_64 <- norm(diff_bmsppre_p300_3blocks_n200_64, type="2")
norm_m_bmsppre_p300_3blocks_n200_64 <- norm(diff_bmsppre_p300_3blocks_n200_64, type="m")

# Index 65
diff_bmsppre_p300_3blocks_n200_65 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_65
norm_f_bmsppre_p300_3blocks_n200_65 <- norm(diff_bmsppre_p300_3blocks_n200_65, type="f")
norm_1_bmsppre_p300_3blocks_n200_65 <- norm(diff_bmsppre_p300_3blocks_n200_65, type="1")
norm_2_bmsppre_p300_3blocks_n200_65 <- norm(diff_bmsppre_p300_3blocks_n200_65, type="2")
norm_m_bmsppre_p300_3blocks_n200_65 <- norm(diff_bmsppre_p300_3blocks_n200_65, type="m")

# Index 66
diff_bmsppre_p300_3blocks_n200_66 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_66
norm_f_bmsppre_p300_3blocks_n200_66 <- norm(diff_bmsppre_p300_3blocks_n200_66, type="f")
norm_1_bmsppre_p300_3blocks_n200_66 <- norm(diff_bmsppre_p300_3blocks_n200_66, type="1")
norm_2_bmsppre_p300_3blocks_n200_66 <- norm(diff_bmsppre_p300_3blocks_n200_66, type="2")
norm_m_bmsppre_p300_3blocks_n200_66 <- norm(diff_bmsppre_p300_3blocks_n200_66, type="m")

# Index 67
diff_bmsppre_p300_3blocks_n200_67 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_67
norm_f_bmsppre_p300_3blocks_n200_67 <- norm(diff_bmsppre_p300_3blocks_n200_67, type="f")
norm_1_bmsppre_p300_3blocks_n200_67 <- norm(diff_bmsppre_p300_3blocks_n200_67, type="1")
norm_2_bmsppre_p300_3blocks_n200_67 <- norm(diff_bmsppre_p300_3blocks_n200_67, type="2")
norm_m_bmsppre_p300_3blocks_n200_67 <- norm(diff_bmsppre_p300_3blocks_n200_67, type="m")

# Index 68
diff_bmsppre_p300_3blocks_n200_68 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_68
norm_f_bmsppre_p300_3blocks_n200_68 <- norm(diff_bmsppre_p300_3blocks_n200_68, type="f")
norm_1_bmsppre_p300_3blocks_n200_68 <- norm(diff_bmsppre_p300_3blocks_n200_68, type="1")
norm_2_bmsppre_p300_3blocks_n200_68 <- norm(diff_bmsppre_p300_3blocks_n200_68, type="2")
norm_m_bmsppre_p300_3blocks_n200_68 <- norm(diff_bmsppre_p300_3blocks_n200_68, type="m")

# Index 69
diff_bmsppre_p300_3blocks_n200_69 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_69
norm_f_bmsppre_p300_3blocks_n200_69 <- norm(diff_bmsppre_p300_3blocks_n200_69, type="f")
norm_1_bmsppre_p300_3blocks_n200_69 <- norm(diff_bmsppre_p300_3blocks_n200_69, type="1")
norm_2_bmsppre_p300_3blocks_n200_69 <- norm(diff_bmsppre_p300_3blocks_n200_69, type="2")
norm_m_bmsppre_p300_3blocks_n200_69 <- norm(diff_bmsppre_p300_3blocks_n200_69, type="m")

# Index 70
diff_bmsppre_p300_3blocks_n200_70 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_70
norm_f_bmsppre_p300_3blocks_n200_70 <- norm(diff_bmsppre_p300_3blocks_n200_70, type="f")
norm_1_bmsppre_p300_3blocks_n200_70 <- norm(diff_bmsppre_p300_3blocks_n200_70, type="1")
norm_2_bmsppre_p300_3blocks_n200_70 <- norm(diff_bmsppre_p300_3blocks_n200_70, type="2")
norm_m_bmsppre_p300_3blocks_n200_70 <- norm(diff_bmsppre_p300_3blocks_n200_70, type="m")

# Index 71
diff_bmsppre_p300_3blocks_n200_71 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_71
norm_f_bmsppre_p300_3blocks_n200_71 <- norm(diff_bmsppre_p300_3blocks_n200_71, type="f")
norm_1_bmsppre_p300_3blocks_n200_71 <- norm(diff_bmsppre_p300_3blocks_n200_71, type="1")
norm_2_bmsppre_p300_3blocks_n200_71 <- norm(diff_bmsppre_p300_3blocks_n200_71, type="2")
norm_m_bmsppre_p300_3blocks_n200_71 <- norm(diff_bmsppre_p300_3blocks_n200_71, type="m")

# Index 72
diff_bmsppre_p300_3blocks_n200_72 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_72
norm_f_bmsppre_p300_3blocks_n200_72 <- norm(diff_bmsppre_p300_3blocks_n200_72, type="f")
norm_1_bmsppre_p300_3blocks_n200_72 <- norm(diff_bmsppre_p300_3blocks_n200_72, type="1")
norm_2_bmsppre_p300_3blocks_n200_72 <- norm(diff_bmsppre_p300_3blocks_n200_72, type="2")
norm_m_bmsppre_p300_3blocks_n200_72 <- norm(diff_bmsppre_p300_3blocks_n200_72, type="m")

# Index 73
diff_bmsppre_p300_3blocks_n200_73 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_73
norm_f_bmsppre_p300_3blocks_n200_73 <- norm(diff_bmsppre_p300_3blocks_n200_73, type="f")
norm_1_bmsppre_p300_3blocks_n200_73 <- norm(diff_bmsppre_p300_3blocks_n200_73, type="1")
norm_2_bmsppre_p300_3blocks_n200_73 <- norm(diff_bmsppre_p300_3blocks_n200_73, type="2")
norm_m_bmsppre_p300_3blocks_n200_73 <- norm(diff_bmsppre_p300_3blocks_n200_73, type="m")

# Index 74
diff_bmsppre_p300_3blocks_n200_74 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_74
norm_f_bmsppre_p300_3blocks_n200_74 <- norm(diff_bmsppre_p300_3blocks_n200_74, type="f")
norm_1_bmsppre_p300_3blocks_n200_74 <- norm(diff_bmsppre_p300_3blocks_n200_74, type="1")
norm_2_bmsppre_p300_3blocks_n200_74 <- norm(diff_bmsppre_p300_3blocks_n200_74, type="2")
norm_m_bmsppre_p300_3blocks_n200_74 <- norm(diff_bmsppre_p300_3blocks_n200_74, type="m")

# Index 75
diff_bmsppre_p300_3blocks_n200_75 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_75
norm_f_bmsppre_p300_3blocks_n200_75 <- norm(diff_bmsppre_p300_3blocks_n200_75, type="f")
norm_1_bmsppre_p300_3blocks_n200_75 <- norm(diff_bmsppre_p300_3blocks_n200_75, type="1")
norm_2_bmsppre_p300_3blocks_n200_75 <- norm(diff_bmsppre_p300_3blocks_n200_75, type="2")
norm_m_bmsppre_p300_3blocks_n200_75 <- norm(diff_bmsppre_p300_3blocks_n200_75, type="m")

# Index 76
diff_bmsppre_p300_3blocks_n200_76 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_76
norm_f_bmsppre_p300_3blocks_n200_76 <- norm(diff_bmsppre_p300_3blocks_n200_76, type="f")
norm_1_bmsppre_p300_3blocks_n200_76 <- norm(diff_bmsppre_p300_3blocks_n200_76, type="1")
norm_2_bmsppre_p300_3blocks_n200_76 <- norm(diff_bmsppre_p300_3blocks_n200_76, type="2")
norm_m_bmsppre_p300_3blocks_n200_76 <- norm(diff_bmsppre_p300_3blocks_n200_76, type="m")

# Index 77
diff_bmsppre_p300_3blocks_n200_77 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_77
norm_f_bmsppre_p300_3blocks_n200_77 <- norm(diff_bmsppre_p300_3blocks_n200_77, type="f")
norm_1_bmsppre_p300_3blocks_n200_77 <- norm(diff_bmsppre_p300_3blocks_n200_77, type="1")
norm_2_bmsppre_p300_3blocks_n200_77 <- norm(diff_bmsppre_p300_3blocks_n200_77, type="2")
norm_m_bmsppre_p300_3blocks_n200_77 <- norm(diff_bmsppre_p300_3blocks_n200_77, type="m")

# Index 78
diff_bmsppre_p300_3blocks_n200_78 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_78
norm_f_bmsppre_p300_3blocks_n200_78 <- norm(diff_bmsppre_p300_3blocks_n200_78, type="f")
norm_1_bmsppre_p300_3blocks_n200_78 <- norm(diff_bmsppre_p300_3blocks_n200_78, type="1")
norm_2_bmsppre_p300_3blocks_n200_78 <- norm(diff_bmsppre_p300_3blocks_n200_78, type="2")
norm_m_bmsppre_p300_3blocks_n200_78 <- norm(diff_bmsppre_p300_3blocks_n200_78, type="m")

# Index 79
diff_bmsppre_p300_3blocks_n200_79 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_79
norm_f_bmsppre_p300_3blocks_n200_79 <- norm(diff_bmsppre_p300_3blocks_n200_79, type="f")
norm_1_bmsppre_p300_3blocks_n200_79 <- norm(diff_bmsppre_p300_3blocks_n200_79, type="1")
norm_2_bmsppre_p300_3blocks_n200_79 <- norm(diff_bmsppre_p300_3blocks_n200_79, type="2")
norm_m_bmsppre_p300_3blocks_n200_79 <- norm(diff_bmsppre_p300_3blocks_n200_79, type="m")

# Index 80
diff_bmsppre_p300_3blocks_n200_80 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_80
norm_f_bmsppre_p300_3blocks_n200_80 <- norm(diff_bmsppre_p300_3blocks_n200_80, type="f")
norm_1_bmsppre_p300_3blocks_n200_80 <- norm(diff_bmsppre_p300_3blocks_n200_80, type="1")
norm_2_bmsppre_p300_3blocks_n200_80 <- norm(diff_bmsppre_p300_3blocks_n200_80, type="2")
norm_m_bmsppre_p300_3blocks_n200_80 <- norm(diff_bmsppre_p300_3blocks_n200_80, type="m")

# Index 81
diff_bmsppre_p300_3blocks_n200_81 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_81
norm_f_bmsppre_p300_3blocks_n200_81 <- norm(diff_bmsppre_p300_3blocks_n200_81, type="f")
norm_1_bmsppre_p300_3blocks_n200_81 <- norm(diff_bmsppre_p300_3blocks_n200_81, type="1")
norm_2_bmsppre_p300_3blocks_n200_81 <- norm(diff_bmsppre_p300_3blocks_n200_81, type="2")
norm_m_bmsppre_p300_3blocks_n200_81 <- norm(diff_bmsppre_p300_3blocks_n200_81, type="m")

# Index 82
diff_bmsppre_p300_3blocks_n200_82 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_82
norm_f_bmsppre_p300_3blocks_n200_82 <- norm(diff_bmsppre_p300_3blocks_n200_82, type="f")
norm_1_bmsppre_p300_3blocks_n200_82 <- norm(diff_bmsppre_p300_3blocks_n200_82, type="1")
norm_2_bmsppre_p300_3blocks_n200_82 <- norm(diff_bmsppre_p300_3blocks_n200_82, type="2")
norm_m_bmsppre_p300_3blocks_n200_82 <- norm(diff_bmsppre_p300_3blocks_n200_82, type="m")

# Index 83
diff_bmsppre_p300_3blocks_n200_83 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_83
norm_f_bmsppre_p300_3blocks_n200_83 <- norm(diff_bmsppre_p300_3blocks_n200_83, type="f")
norm_1_bmsppre_p300_3blocks_n200_83 <- norm(diff_bmsppre_p300_3blocks_n200_83, type="1")
norm_2_bmsppre_p300_3blocks_n200_83 <- norm(diff_bmsppre_p300_3blocks_n200_83, type="2")
norm_m_bmsppre_p300_3blocks_n200_83 <- norm(diff_bmsppre_p300_3blocks_n200_83, type="m")

# Index 84
diff_bmsppre_p300_3blocks_n200_84 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_84
norm_f_bmsppre_p300_3blocks_n200_84 <- norm(diff_bmsppre_p300_3blocks_n200_84, type="f")
norm_1_bmsppre_p300_3blocks_n200_84 <- norm(diff_bmsppre_p300_3blocks_n200_84, type="1")
norm_2_bmsppre_p300_3blocks_n200_84 <- norm(diff_bmsppre_p300_3blocks_n200_84, type="2")
norm_m_bmsppre_p300_3blocks_n200_84 <- norm(diff_bmsppre_p300_3blocks_n200_84, type="m")

# Index 85
diff_bmsppre_p300_3blocks_n200_85 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_85
norm_f_bmsppre_p300_3blocks_n200_85 <- norm(diff_bmsppre_p300_3blocks_n200_85, type="f")
norm_1_bmsppre_p300_3blocks_n200_85 <- norm(diff_bmsppre_p300_3blocks_n200_85, type="1")
norm_2_bmsppre_p300_3blocks_n200_85 <- norm(diff_bmsppre_p300_3blocks_n200_85, type="2")
norm_m_bmsppre_p300_3blocks_n200_85 <- norm(diff_bmsppre_p300_3blocks_n200_85, type="m")

# Index 86
diff_bmsppre_p300_3blocks_n200_86 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_86
norm_f_bmsppre_p300_3blocks_n200_86 <- norm(diff_bmsppre_p300_3blocks_n200_86, type="f")
norm_1_bmsppre_p300_3blocks_n200_86 <- norm(diff_bmsppre_p300_3blocks_n200_86, type="1")
norm_2_bmsppre_p300_3blocks_n200_86 <- norm(diff_bmsppre_p300_3blocks_n200_86, type="2")
norm_m_bmsppre_p300_3blocks_n200_86 <- norm(diff_bmsppre_p300_3blocks_n200_86, type="m")

# Index 87
diff_bmsppre_p300_3blocks_n200_87 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_87
norm_f_bmsppre_p300_3blocks_n200_87 <- norm(diff_bmsppre_p300_3blocks_n200_87, type="f")
norm_1_bmsppre_p300_3blocks_n200_87 <- norm(diff_bmsppre_p300_3blocks_n200_87, type="1")
norm_2_bmsppre_p300_3blocks_n200_87 <- norm(diff_bmsppre_p300_3blocks_n200_87, type="2")
norm_m_bmsppre_p300_3blocks_n200_87 <- norm(diff_bmsppre_p300_3blocks_n200_87, type="m")

# Index 88
diff_bmsppre_p300_3blocks_n200_88 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_88
norm_f_bmsppre_p300_3blocks_n200_88 <- norm(diff_bmsppre_p300_3blocks_n200_88, type="f")
norm_1_bmsppre_p300_3blocks_n200_88 <- norm(diff_bmsppre_p300_3blocks_n200_88, type="1")
norm_2_bmsppre_p300_3blocks_n200_88 <- norm(diff_bmsppre_p300_3blocks_n200_88, type="2")
norm_m_bmsppre_p300_3blocks_n200_88 <- norm(diff_bmsppre_p300_3blocks_n200_88, type="m")

# Index 89
diff_bmsppre_p300_3blocks_n200_89 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_89
norm_f_bmsppre_p300_3blocks_n200_89 <- norm(diff_bmsppre_p300_3blocks_n200_89, type="f")
norm_1_bmsppre_p300_3blocks_n200_89 <- norm(diff_bmsppre_p300_3blocks_n200_89, type="1")
norm_2_bmsppre_p300_3blocks_n200_89 <- norm(diff_bmsppre_p300_3blocks_n200_89, type="2")
norm_m_bmsppre_p300_3blocks_n200_89 <- norm(diff_bmsppre_p300_3blocks_n200_89, type="m")

# Index 90
diff_bmsppre_p300_3blocks_n200_90 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_90
norm_f_bmsppre_p300_3blocks_n200_90 <- norm(diff_bmsppre_p300_3blocks_n200_90, type="f")
norm_1_bmsppre_p300_3blocks_n200_90 <- norm(diff_bmsppre_p300_3blocks_n200_90, type="1")
norm_2_bmsppre_p300_3blocks_n200_90 <- norm(diff_bmsppre_p300_3blocks_n200_90, type="2")
norm_m_bmsppre_p300_3blocks_n200_90 <- norm(diff_bmsppre_p300_3blocks_n200_90, type="m")

# Index 91
diff_bmsppre_p300_3blocks_n200_91 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_91
norm_f_bmsppre_p300_3blocks_n200_91 <- norm(diff_bmsppre_p300_3blocks_n200_91, type="f")
norm_1_bmsppre_p300_3blocks_n200_91 <- norm(diff_bmsppre_p300_3blocks_n200_91, type="1")
norm_2_bmsppre_p300_3blocks_n200_91 <- norm(diff_bmsppre_p300_3blocks_n200_91, type="2")
norm_m_bmsppre_p300_3blocks_n200_91 <- norm(diff_bmsppre_p300_3blocks_n200_91, type="m")

# Index 92
diff_bmsppre_p300_3blocks_n200_92 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_92
norm_f_bmsppre_p300_3blocks_n200_92 <- norm(diff_bmsppre_p300_3blocks_n200_92, type="f")
norm_1_bmsppre_p300_3blocks_n200_92 <- norm(diff_bmsppre_p300_3blocks_n200_92, type="1")
norm_2_bmsppre_p300_3blocks_n200_92 <- norm(diff_bmsppre_p300_3blocks_n200_92, type="2")
norm_m_bmsppre_p300_3blocks_n200_92 <- norm(diff_bmsppre_p300_3blocks_n200_92, type="m")

# Index 93
diff_bmsppre_p300_3blocks_n200_93 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_93
norm_f_bmsppre_p300_3blocks_n200_93 <- norm(diff_bmsppre_p300_3blocks_n200_93, type="f")
norm_1_bmsppre_p300_3blocks_n200_93 <- norm(diff_bmsppre_p300_3blocks_n200_93, type="1")
norm_2_bmsppre_p300_3blocks_n200_93 <- norm(diff_bmsppre_p300_3blocks_n200_93, type="2")
norm_m_bmsppre_p300_3blocks_n200_93 <- norm(diff_bmsppre_p300_3blocks_n200_93, type="m")

# Index 94
diff_bmsppre_p300_3blocks_n200_94 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_94
norm_f_bmsppre_p300_3blocks_n200_94 <- norm(diff_bmsppre_p300_3blocks_n200_94, type="f")
norm_1_bmsppre_p300_3blocks_n200_94 <- norm(diff_bmsppre_p300_3blocks_n200_94, type="1")
norm_2_bmsppre_p300_3blocks_n200_94 <- norm(diff_bmsppre_p300_3blocks_n200_94, type="2")
norm_m_bmsppre_p300_3blocks_n200_94 <- norm(diff_bmsppre_p300_3blocks_n200_94, type="m")

# Index 95
diff_bmsppre_p300_3blocks_n200_95 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_95
norm_f_bmsppre_p300_3blocks_n200_95 <- norm(diff_bmsppre_p300_3blocks_n200_95, type="f")
norm_1_bmsppre_p300_3blocks_n200_95 <- norm(diff_bmsppre_p300_3blocks_n200_95, type="1")
norm_2_bmsppre_p300_3blocks_n200_95 <- norm(diff_bmsppre_p300_3blocks_n200_95, type="2")
norm_m_bmsppre_p300_3blocks_n200_95 <- norm(diff_bmsppre_p300_3blocks_n200_95, type="m")

# Index 96
diff_bmsppre_p300_3blocks_n200_96 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_96
norm_f_bmsppre_p300_3blocks_n200_96 <- norm(diff_bmsppre_p300_3blocks_n200_96, type="f")
norm_1_bmsppre_p300_3blocks_n200_96 <- norm(diff_bmsppre_p300_3blocks_n200_96, type="1")
norm_2_bmsppre_p300_3blocks_n200_96 <- norm(diff_bmsppre_p300_3blocks_n200_96, type="2")
norm_m_bmsppre_p300_3blocks_n200_96 <- norm(diff_bmsppre_p300_3blocks_n200_96, type="m")

# Index 97
diff_bmsppre_p300_3blocks_n200_97 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_97
norm_f_bmsppre_p300_3blocks_n200_97 <- norm(diff_bmsppre_p300_3blocks_n200_97, type="f")
norm_1_bmsppre_p300_3blocks_n200_97 <- norm(diff_bmsppre_p300_3blocks_n200_97, type="1")
norm_2_bmsppre_p300_3blocks_n200_97 <- norm(diff_bmsppre_p300_3blocks_n200_97, type="2")
norm_m_bmsppre_p300_3blocks_n200_97 <- norm(diff_bmsppre_p300_3blocks_n200_97, type="m")

# Index 98
diff_bmsppre_p300_3blocks_n200_98 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_98
norm_f_bmsppre_p300_3blocks_n200_98 <- norm(diff_bmsppre_p300_3blocks_n200_98, type="f")
norm_1_bmsppre_p300_3blocks_n200_98 <- norm(diff_bmsppre_p300_3blocks_n200_98, type="1")
norm_2_bmsppre_p300_3blocks_n200_98 <- norm(diff_bmsppre_p300_3blocks_n200_98, type="2")
norm_m_bmsppre_p300_3blocks_n200_98 <- norm(diff_bmsppre_p300_3blocks_n200_98, type="m")

# Index 99
diff_bmsppre_p300_3blocks_n200_99 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_99
norm_f_bmsppre_p300_3blocks_n200_99 <- norm(diff_bmsppre_p300_3blocks_n200_99, type="f")
norm_1_bmsppre_p300_3blocks_n200_99 <- norm(diff_bmsppre_p300_3blocks_n200_99, type="1")
norm_2_bmsppre_p300_3blocks_n200_99 <- norm(diff_bmsppre_p300_3blocks_n200_99, type="2")
norm_m_bmsppre_p300_3blocks_n200_99 <- norm(diff_bmsppre_p300_3blocks_n200_99, type="m")

# Index 100
diff_bmsppre_p300_3blocks_n200_100 <- true_precision_p300_3blocks - post.est.result_bmsppre_p300_3blocks_n200_100
norm_f_bmsppre_p300_3blocks_n200_100 <- norm(diff_bmsppre_p300_3blocks_n200_100, type="f")
norm_1_bmsppre_p300_3blocks_n200_100 <- norm(diff_bmsppre_p300_3blocks_n200_100, type="1")
norm_2_bmsppre_p300_3blocks_n200_100 <- norm(diff_bmsppre_p300_3blocks_n200_100, type="2")
norm_m_bmsppre_p300_3blocks_n200_100 <- norm(diff_bmsppre_p300_3blocks_n200_100, type="m")


################# f norm ####################
norm_f_bmsppre_p300_3blocks_n200 <- c(
  norm_f_bmsppre_p300_3blocks_n200_1,
  norm_f_bmsppre_p300_3blocks_n200_2,
  norm_f_bmsppre_p300_3blocks_n200_3,
  norm_f_bmsppre_p300_3blocks_n200_4,
  norm_f_bmsppre_p300_3blocks_n200_5,
  norm_f_bmsppre_p300_3blocks_n200_6,
  norm_f_bmsppre_p300_3blocks_n200_7,
  norm_f_bmsppre_p300_3blocks_n200_8,
  norm_f_bmsppre_p300_3blocks_n200_9,
  norm_f_bmsppre_p300_3blocks_n200_10,
  norm_f_bmsppre_p300_3blocks_n200_11,
  norm_f_bmsppre_p300_3blocks_n200_12,
  norm_f_bmsppre_p300_3blocks_n200_13,
  norm_f_bmsppre_p300_3blocks_n200_14,
  norm_f_bmsppre_p300_3blocks_n200_15,
  norm_f_bmsppre_p300_3blocks_n200_16,
  norm_f_bmsppre_p300_3blocks_n200_17,
  norm_f_bmsppre_p300_3blocks_n200_18,
  norm_f_bmsppre_p300_3blocks_n200_19,
  norm_f_bmsppre_p300_3blocks_n200_20,
  norm_f_bmsppre_p300_3blocks_n200_21,
  norm_f_bmsppre_p300_3blocks_n200_22,
  norm_f_bmsppre_p300_3blocks_n200_23,
  norm_f_bmsppre_p300_3blocks_n200_24,
  norm_f_bmsppre_p300_3blocks_n200_25,
  norm_f_bmsppre_p300_3blocks_n200_26,
  norm_f_bmsppre_p300_3blocks_n200_27,
  norm_f_bmsppre_p300_3blocks_n200_28,
  norm_f_bmsppre_p300_3blocks_n200_29,
  norm_f_bmsppre_p300_3blocks_n200_30,
  norm_f_bmsppre_p300_3blocks_n200_31,
  norm_f_bmsppre_p300_3blocks_n200_32,
  norm_f_bmsppre_p300_3blocks_n200_33,
  norm_f_bmsppre_p300_3blocks_n200_34,
  norm_f_bmsppre_p300_3blocks_n200_35,
  norm_f_bmsppre_p300_3blocks_n200_36,
  norm_f_bmsppre_p300_3blocks_n200_37,
  norm_f_bmsppre_p300_3blocks_n200_38,
  norm_f_bmsppre_p300_3blocks_n200_39,
  norm_f_bmsppre_p300_3blocks_n200_40,
  norm_f_bmsppre_p300_3blocks_n200_41,
  norm_f_bmsppre_p300_3blocks_n200_42,
  norm_f_bmsppre_p300_3blocks_n200_43,
  norm_f_bmsppre_p300_3blocks_n200_44,
  norm_f_bmsppre_p300_3blocks_n200_45,
  norm_f_bmsppre_p300_3blocks_n200_46,
  norm_f_bmsppre_p300_3blocks_n200_47,
  norm_f_bmsppre_p300_3blocks_n200_48,
  norm_f_bmsppre_p300_3blocks_n200_49,
  norm_f_bmsppre_p300_3blocks_n200_50,
  norm_f_bmsppre_p300_3blocks_n200_51,
  norm_f_bmsppre_p300_3blocks_n200_52,
  norm_f_bmsppre_p300_3blocks_n200_53,
  norm_f_bmsppre_p300_3blocks_n200_54,
  norm_f_bmsppre_p300_3blocks_n200_55,
  norm_f_bmsppre_p300_3blocks_n200_56,
  norm_f_bmsppre_p300_3blocks_n200_57,
  norm_f_bmsppre_p300_3blocks_n200_58,
  norm_f_bmsppre_p300_3blocks_n200_59,
  norm_f_bmsppre_p300_3blocks_n200_60,
  norm_f_bmsppre_p300_3blocks_n200_61,
  norm_f_bmsppre_p300_3blocks_n200_62,
  norm_f_bmsppre_p300_3blocks_n200_63,
  norm_f_bmsppre_p300_3blocks_n200_64,
  norm_f_bmsppre_p300_3blocks_n200_65,
  norm_f_bmsppre_p300_3blocks_n200_66,
  norm_f_bmsppre_p300_3blocks_n200_67,
  norm_f_bmsppre_p300_3blocks_n200_68,
  norm_f_bmsppre_p300_3blocks_n200_69,
  norm_f_bmsppre_p300_3blocks_n200_70,
  norm_f_bmsppre_p300_3blocks_n200_71,
  norm_f_bmsppre_p300_3blocks_n200_72,
  norm_f_bmsppre_p300_3blocks_n200_73,
  norm_f_bmsppre_p300_3blocks_n200_74,
  norm_f_bmsppre_p300_3blocks_n200_75,
  norm_f_bmsppre_p300_3blocks_n200_76,
  norm_f_bmsppre_p300_3blocks_n200_77,
  norm_f_bmsppre_p300_3blocks_n200_78,
  norm_f_bmsppre_p300_3blocks_n200_79,
  norm_f_bmsppre_p300_3blocks_n200_80,
  norm_f_bmsppre_p300_3blocks_n200_81,
  norm_f_bmsppre_p300_3blocks_n200_82,
  norm_f_bmsppre_p300_3blocks_n200_83,
  norm_f_bmsppre_p300_3blocks_n200_84,
  norm_f_bmsppre_p300_3blocks_n200_85,
  norm_f_bmsppre_p300_3blocks_n200_86,
  norm_f_bmsppre_p300_3blocks_n200_87,
  norm_f_bmsppre_p300_3blocks_n200_88,
  norm_f_bmsppre_p300_3blocks_n200_89,
  norm_f_bmsppre_p300_3blocks_n200_90,
  norm_f_bmsppre_p300_3blocks_n200_91,
  norm_f_bmsppre_p300_3blocks_n200_92,
  norm_f_bmsppre_p300_3blocks_n200_93,
  norm_f_bmsppre_p300_3blocks_n200_94,
  norm_f_bmsppre_p300_3blocks_n200_95,
  norm_f_bmsppre_p300_3blocks_n200_96,
  norm_f_bmsppre_p300_3blocks_n200_97,
  norm_f_bmsppre_p300_3blocks_n200_98,
  norm_f_bmsppre_p300_3blocks_n200_99,
  norm_f_bmsppre_p300_3blocks_n200_100
)


mean_norm_f_bmsppre_p300_3blocks_n200 <- mean(norm_f_bmsppre_p300_3blocks_n200)
sd_norm_f_bmsppre_p300_3blocks_n200 <- sd(norm_f_bmsppre_p300_3blocks_n200)

################# 1 norm ####################
norm_1_bmsppre_p300_3blocks_n200 <- c(
  norm_1_bmsppre_p300_3blocks_n200_1,
  norm_1_bmsppre_p300_3blocks_n200_2,
  norm_1_bmsppre_p300_3blocks_n200_3,
  norm_1_bmsppre_p300_3blocks_n200_4,
  norm_1_bmsppre_p300_3blocks_n200_5,
  norm_1_bmsppre_p300_3blocks_n200_6,
  norm_1_bmsppre_p300_3blocks_n200_7,
  norm_1_bmsppre_p300_3blocks_n200_8,
  norm_1_bmsppre_p300_3blocks_n200_9,
  norm_1_bmsppre_p300_3blocks_n200_10,
  norm_1_bmsppre_p300_3blocks_n200_11,
  norm_1_bmsppre_p300_3blocks_n200_12,
  norm_1_bmsppre_p300_3blocks_n200_13,
  norm_1_bmsppre_p300_3blocks_n200_14,
  norm_1_bmsppre_p300_3blocks_n200_15,
  norm_1_bmsppre_p300_3blocks_n200_16,
  norm_1_bmsppre_p300_3blocks_n200_17,
  norm_1_bmsppre_p300_3blocks_n200_18,
  norm_1_bmsppre_p300_3blocks_n200_19,
  norm_1_bmsppre_p300_3blocks_n200_20,
  norm_1_bmsppre_p300_3blocks_n200_21,
  norm_1_bmsppre_p300_3blocks_n200_22,
  norm_1_bmsppre_p300_3blocks_n200_23,
  norm_1_bmsppre_p300_3blocks_n200_24,
  norm_1_bmsppre_p300_3blocks_n200_25,
  norm_1_bmsppre_p300_3blocks_n200_26,
  norm_1_bmsppre_p300_3blocks_n200_27,
  norm_1_bmsppre_p300_3blocks_n200_28,
  norm_1_bmsppre_p300_3blocks_n200_29,
  norm_1_bmsppre_p300_3blocks_n200_30,
  norm_1_bmsppre_p300_3blocks_n200_31,
  norm_1_bmsppre_p300_3blocks_n200_32,
  norm_1_bmsppre_p300_3blocks_n200_33,
  norm_1_bmsppre_p300_3blocks_n200_34,
  norm_1_bmsppre_p300_3blocks_n200_35,
  norm_1_bmsppre_p300_3blocks_n200_36,
  norm_1_bmsppre_p300_3blocks_n200_37,
  norm_1_bmsppre_p300_3blocks_n200_38,
  norm_1_bmsppre_p300_3blocks_n200_39,
  norm_1_bmsppre_p300_3blocks_n200_40,
  norm_1_bmsppre_p300_3blocks_n200_41,
  norm_1_bmsppre_p300_3blocks_n200_42,
  norm_1_bmsppre_p300_3blocks_n200_43,
  norm_1_bmsppre_p300_3blocks_n200_44,
  norm_1_bmsppre_p300_3blocks_n200_45,
  norm_1_bmsppre_p300_3blocks_n200_46,
  norm_1_bmsppre_p300_3blocks_n200_47,
  norm_1_bmsppre_p300_3blocks_n200_48,
  norm_1_bmsppre_p300_3blocks_n200_49,
  norm_1_bmsppre_p300_3blocks_n200_50,
  norm_1_bmsppre_p300_3blocks_n200_51,
  norm_1_bmsppre_p300_3blocks_n200_52,
  norm_1_bmsppre_p300_3blocks_n200_53,
  norm_1_bmsppre_p300_3blocks_n200_54,
  norm_1_bmsppre_p300_3blocks_n200_55,
  norm_1_bmsppre_p300_3blocks_n200_56,
  norm_1_bmsppre_p300_3blocks_n200_57,
  norm_1_bmsppre_p300_3blocks_n200_58,
  norm_1_bmsppre_p300_3blocks_n200_59,
  norm_1_bmsppre_p300_3blocks_n200_60,
  norm_1_bmsppre_p300_3blocks_n200_61,
  norm_1_bmsppre_p300_3blocks_n200_62,
  norm_1_bmsppre_p300_3blocks_n200_63,
  norm_1_bmsppre_p300_3blocks_n200_64,
  norm_1_bmsppre_p300_3blocks_n200_65,
  norm_1_bmsppre_p300_3blocks_n200_66,
  norm_1_bmsppre_p300_3blocks_n200_67,
  norm_1_bmsppre_p300_3blocks_n200_68,
  norm_1_bmsppre_p300_3blocks_n200_69,
  norm_1_bmsppre_p300_3blocks_n200_70,
  norm_1_bmsppre_p300_3blocks_n200_71,
  norm_1_bmsppre_p300_3blocks_n200_72,
  norm_1_bmsppre_p300_3blocks_n200_73,
  norm_1_bmsppre_p300_3blocks_n200_74,
  norm_1_bmsppre_p300_3blocks_n200_75,
  norm_1_bmsppre_p300_3blocks_n200_76,
  norm_1_bmsppre_p300_3blocks_n200_77,
  norm_1_bmsppre_p300_3blocks_n200_78,
  norm_1_bmsppre_p300_3blocks_n200_79,
  norm_1_bmsppre_p300_3blocks_n200_80,
  norm_1_bmsppre_p300_3blocks_n200_81,
  norm_1_bmsppre_p300_3blocks_n200_82,
  norm_1_bmsppre_p300_3blocks_n200_83,
  norm_1_bmsppre_p300_3blocks_n200_84,
  norm_1_bmsppre_p300_3blocks_n200_85,
  norm_1_bmsppre_p300_3blocks_n200_86,
  norm_1_bmsppre_p300_3blocks_n200_87,
  norm_1_bmsppre_p300_3blocks_n200_88,
  norm_1_bmsppre_p300_3blocks_n200_89,
  norm_1_bmsppre_p300_3blocks_n200_90,
  norm_1_bmsppre_p300_3blocks_n200_91,
  norm_1_bmsppre_p300_3blocks_n200_92,
  norm_1_bmsppre_p300_3blocks_n200_93,
  norm_1_bmsppre_p300_3blocks_n200_94,
  norm_1_bmsppre_p300_3blocks_n200_95,
  norm_1_bmsppre_p300_3blocks_n200_96,
  norm_1_bmsppre_p300_3blocks_n200_97,
  norm_1_bmsppre_p300_3blocks_n200_98,
  norm_1_bmsppre_p300_3blocks_n200_99,
  norm_1_bmsppre_p300_3blocks_n200_100
)


mean_norm_1_bmsppre_p300_3blocks_n200 <- mean(norm_1_bmsppre_p300_3blocks_n200)
sd_norm_1_bmsppre_p300_3blocks_n200 <- sd(norm_1_bmsppre_p300_3blocks_n200)

################# 2 norm ####################
norm_2_bmsppre_p300_3blocks_n200 <- c(
  norm_2_bmsppre_p300_3blocks_n200_1,
  norm_2_bmsppre_p300_3blocks_n200_2,
  norm_2_bmsppre_p300_3blocks_n200_3,
  norm_2_bmsppre_p300_3blocks_n200_4,
  norm_2_bmsppre_p300_3blocks_n200_5,
  norm_2_bmsppre_p300_3blocks_n200_6,
  norm_2_bmsppre_p300_3blocks_n200_7,
  norm_2_bmsppre_p300_3blocks_n200_8,
  norm_2_bmsppre_p300_3blocks_n200_9,
  norm_2_bmsppre_p300_3blocks_n200_10,
  norm_2_bmsppre_p300_3blocks_n200_11,
  norm_2_bmsppre_p300_3blocks_n200_12,
  norm_2_bmsppre_p300_3blocks_n200_13,
  norm_2_bmsppre_p300_3blocks_n200_14,
  norm_2_bmsppre_p300_3blocks_n200_15,
  norm_2_bmsppre_p300_3blocks_n200_16,
  norm_2_bmsppre_p300_3blocks_n200_17,
  norm_2_bmsppre_p300_3blocks_n200_18,
  norm_2_bmsppre_p300_3blocks_n200_19,
  norm_2_bmsppre_p300_3blocks_n200_20,
  norm_2_bmsppre_p300_3blocks_n200_21,
  norm_2_bmsppre_p300_3blocks_n200_22,
  norm_2_bmsppre_p300_3blocks_n200_23,
  norm_2_bmsppre_p300_3blocks_n200_24,
  norm_2_bmsppre_p300_3blocks_n200_25,
  norm_2_bmsppre_p300_3blocks_n200_26,
  norm_2_bmsppre_p300_3blocks_n200_27,
  norm_2_bmsppre_p300_3blocks_n200_28,
  norm_2_bmsppre_p300_3blocks_n200_29,
  norm_2_bmsppre_p300_3blocks_n200_30,
  norm_2_bmsppre_p300_3blocks_n200_31,
  norm_2_bmsppre_p300_3blocks_n200_32,
  norm_2_bmsppre_p300_3blocks_n200_33,
  norm_2_bmsppre_p300_3blocks_n200_34,
  norm_2_bmsppre_p300_3blocks_n200_35,
  norm_2_bmsppre_p300_3blocks_n200_36,
  norm_2_bmsppre_p300_3blocks_n200_37,
  norm_2_bmsppre_p300_3blocks_n200_38,
  norm_2_bmsppre_p300_3blocks_n200_39,
  norm_2_bmsppre_p300_3blocks_n200_40,
  norm_2_bmsppre_p300_3blocks_n200_41,
  norm_2_bmsppre_p300_3blocks_n200_42,
  norm_2_bmsppre_p300_3blocks_n200_43,
  norm_2_bmsppre_p300_3blocks_n200_44,
  norm_2_bmsppre_p300_3blocks_n200_45,
  norm_2_bmsppre_p300_3blocks_n200_46,
  norm_2_bmsppre_p300_3blocks_n200_47,
  norm_2_bmsppre_p300_3blocks_n200_48,
  norm_2_bmsppre_p300_3blocks_n200_49,
  norm_2_bmsppre_p300_3blocks_n200_50,
  norm_2_bmsppre_p300_3blocks_n200_51,
  norm_2_bmsppre_p300_3blocks_n200_52,
  norm_2_bmsppre_p300_3blocks_n200_53,
  norm_2_bmsppre_p300_3blocks_n200_54,
  norm_2_bmsppre_p300_3blocks_n200_55,
  norm_2_bmsppre_p300_3blocks_n200_56,
  norm_2_bmsppre_p300_3blocks_n200_57,
  norm_2_bmsppre_p300_3blocks_n200_58,
  norm_2_bmsppre_p300_3blocks_n200_59,
  norm_2_bmsppre_p300_3blocks_n200_60,
  norm_2_bmsppre_p300_3blocks_n200_61,
  norm_2_bmsppre_p300_3blocks_n200_62,
  norm_2_bmsppre_p300_3blocks_n200_63,
  norm_2_bmsppre_p300_3blocks_n200_64,
  norm_2_bmsppre_p300_3blocks_n200_65,
  norm_2_bmsppre_p300_3blocks_n200_66,
  norm_2_bmsppre_p300_3blocks_n200_67,
  norm_2_bmsppre_p300_3blocks_n200_68,
  norm_2_bmsppre_p300_3blocks_n200_69,
  norm_2_bmsppre_p300_3blocks_n200_70,
  norm_2_bmsppre_p300_3blocks_n200_71,
  norm_2_bmsppre_p300_3blocks_n200_72,
  norm_2_bmsppre_p300_3blocks_n200_73,
  norm_2_bmsppre_p300_3blocks_n200_74,
  norm_2_bmsppre_p300_3blocks_n200_75,
  norm_2_bmsppre_p300_3blocks_n200_76,
  norm_2_bmsppre_p300_3blocks_n200_77,
  norm_2_bmsppre_p300_3blocks_n200_78,
  norm_2_bmsppre_p300_3blocks_n200_79,
  norm_2_bmsppre_p300_3blocks_n200_80,
  norm_2_bmsppre_p300_3blocks_n200_81,
  norm_2_bmsppre_p300_3blocks_n200_82,
  norm_2_bmsppre_p300_3blocks_n200_83,
  norm_2_bmsppre_p300_3blocks_n200_84,
  norm_2_bmsppre_p300_3blocks_n200_85,
  norm_2_bmsppre_p300_3blocks_n200_86,
  norm_2_bmsppre_p300_3blocks_n200_87,
  norm_2_bmsppre_p300_3blocks_n200_88,
  norm_2_bmsppre_p300_3blocks_n200_89,
  norm_2_bmsppre_p300_3blocks_n200_90,
  norm_2_bmsppre_p300_3blocks_n200_91,
  norm_2_bmsppre_p300_3blocks_n200_92,
  norm_2_bmsppre_p300_3blocks_n200_93,
  norm_2_bmsppre_p300_3blocks_n200_94,
  norm_2_bmsppre_p300_3blocks_n200_95,
  norm_2_bmsppre_p300_3blocks_n200_96,
  norm_2_bmsppre_p300_3blocks_n200_97,
  norm_2_bmsppre_p300_3blocks_n200_98,
  norm_2_bmsppre_p300_3blocks_n200_99,
  norm_2_bmsppre_p300_3blocks_n200_100
)


mean_norm_2_bmsppre_p300_3blocks_n200 <- mean(norm_2_bmsppre_p300_3blocks_n200)
sd_norm_2_bmsppre_p300_3blocks_n200 <- sd(norm_2_bmsppre_p300_3blocks_n200)


################# m norm ####################
norm_m_bmsppre_p300_3blocks_n200 <- c(
  norm_m_bmsppre_p300_3blocks_n200_1,
  norm_m_bmsppre_p300_3blocks_n200_2,
  norm_m_bmsppre_p300_3blocks_n200_3,
  norm_m_bmsppre_p300_3blocks_n200_4,
  norm_m_bmsppre_p300_3blocks_n200_5,
  norm_m_bmsppre_p300_3blocks_n200_6,
  norm_m_bmsppre_p300_3blocks_n200_7,
  norm_m_bmsppre_p300_3blocks_n200_8,
  norm_m_bmsppre_p300_3blocks_n200_9,
  norm_m_bmsppre_p300_3blocks_n200_10,
  norm_m_bmsppre_p300_3blocks_n200_11,
  norm_m_bmsppre_p300_3blocks_n200_12,
  norm_m_bmsppre_p300_3blocks_n200_13,
  norm_m_bmsppre_p300_3blocks_n200_14,
  norm_m_bmsppre_p300_3blocks_n200_15,
  norm_m_bmsppre_p300_3blocks_n200_16,
  norm_m_bmsppre_p300_3blocks_n200_17,
  norm_m_bmsppre_p300_3blocks_n200_18,
  norm_m_bmsppre_p300_3blocks_n200_19,
  norm_m_bmsppre_p300_3blocks_n200_20,
  norm_m_bmsppre_p300_3blocks_n200_21,
  norm_m_bmsppre_p300_3blocks_n200_22,
  norm_m_bmsppre_p300_3blocks_n200_23,
  norm_m_bmsppre_p300_3blocks_n200_24,
  norm_m_bmsppre_p300_3blocks_n200_25,
  norm_m_bmsppre_p300_3blocks_n200_26,
  norm_m_bmsppre_p300_3blocks_n200_27,
  norm_m_bmsppre_p300_3blocks_n200_28,
  norm_m_bmsppre_p300_3blocks_n200_29,
  norm_m_bmsppre_p300_3blocks_n200_30,
  norm_m_bmsppre_p300_3blocks_n200_31,
  norm_m_bmsppre_p300_3blocks_n200_32,
  norm_m_bmsppre_p300_3blocks_n200_33,
  norm_m_bmsppre_p300_3blocks_n200_34,
  norm_m_bmsppre_p300_3blocks_n200_35,
  norm_m_bmsppre_p300_3blocks_n200_36,
  norm_m_bmsppre_p300_3blocks_n200_37,
  norm_m_bmsppre_p300_3blocks_n200_38,
  norm_m_bmsppre_p300_3blocks_n200_39,
  norm_m_bmsppre_p300_3blocks_n200_40,
  norm_m_bmsppre_p300_3blocks_n200_41,
  norm_m_bmsppre_p300_3blocks_n200_42,
  norm_m_bmsppre_p300_3blocks_n200_43,
  norm_m_bmsppre_p300_3blocks_n200_44,
  norm_m_bmsppre_p300_3blocks_n200_45,
  norm_m_bmsppre_p300_3blocks_n200_46,
  norm_m_bmsppre_p300_3blocks_n200_47,
  norm_m_bmsppre_p300_3blocks_n200_48,
  norm_m_bmsppre_p300_3blocks_n200_49,
  norm_m_bmsppre_p300_3blocks_n200_50,
  norm_m_bmsppre_p300_3blocks_n200_51,
  norm_m_bmsppre_p300_3blocks_n200_52,
  norm_m_bmsppre_p300_3blocks_n200_53,
  norm_m_bmsppre_p300_3blocks_n200_54,
  norm_m_bmsppre_p300_3blocks_n200_55,
  norm_m_bmsppre_p300_3blocks_n200_56,
  norm_m_bmsppre_p300_3blocks_n200_57,
  norm_m_bmsppre_p300_3blocks_n200_58,
  norm_m_bmsppre_p300_3blocks_n200_59,
  norm_m_bmsppre_p300_3blocks_n200_60,
  norm_m_bmsppre_p300_3blocks_n200_61,
  norm_m_bmsppre_p300_3blocks_n200_62,
  norm_m_bmsppre_p300_3blocks_n200_63,
  norm_m_bmsppre_p300_3blocks_n200_64,
  norm_m_bmsppre_p300_3blocks_n200_65,
  norm_m_bmsppre_p300_3blocks_n200_66,
  norm_m_bmsppre_p300_3blocks_n200_67,
  norm_m_bmsppre_p300_3blocks_n200_68,
  norm_m_bmsppre_p300_3blocks_n200_69,
  norm_m_bmsppre_p300_3blocks_n200_70,
  norm_m_bmsppre_p300_3blocks_n200_71,
  norm_m_bmsppre_p300_3blocks_n200_72,
  norm_m_bmsppre_p300_3blocks_n200_73,
  norm_m_bmsppre_p300_3blocks_n200_74,
  norm_m_bmsppre_p300_3blocks_n200_75,
  norm_m_bmsppre_p300_3blocks_n200_76,
  norm_m_bmsppre_p300_3blocks_n200_77,
  norm_m_bmsppre_p300_3blocks_n200_78,
  norm_m_bmsppre_p300_3blocks_n200_79,
  norm_m_bmsppre_p300_3blocks_n200_80,
  norm_m_bmsppre_p300_3blocks_n200_81,
  norm_m_bmsppre_p300_3blocks_n200_82,
  norm_m_bmsppre_p300_3blocks_n200_83,
  norm_m_bmsppre_p300_3blocks_n200_84,
  norm_m_bmsppre_p300_3blocks_n200_85,
  norm_m_bmsppre_p300_3blocks_n200_86,
  norm_m_bmsppre_p300_3blocks_n200_87,
  norm_m_bmsppre_p300_3blocks_n200_88,
  norm_m_bmsppre_p300_3blocks_n200_89,
  norm_m_bmsppre_p300_3blocks_n200_90,
  norm_m_bmsppre_p300_3blocks_n200_91,
  norm_m_bmsppre_p300_3blocks_n200_92,
  norm_m_bmsppre_p300_3blocks_n200_93,
  norm_m_bmsppre_p300_3blocks_n200_94,
  norm_m_bmsppre_p300_3blocks_n200_95,
  norm_m_bmsppre_p300_3blocks_n200_96,
  norm_m_bmsppre_p300_3blocks_n200_97,
  norm_m_bmsppre_p300_3blocks_n200_98,
  norm_m_bmsppre_p300_3blocks_n200_99,
  norm_m_bmsppre_p300_3blocks_n200_100
)


mean_norm_m_bmsppre_p300_3blocks_n200 <- mean(norm_m_bmsppre_p300_3blocks_n200)
sd_norm_m_bmsppre_p300_3blocks_n200 <- sd(norm_m_bmsppre_p300_3blocks_n200)


################# time ####################
time_bmsppre_p300_3blocks_n200 <- c(
  mcmctime_elapsed_p300_3blocks_n200_1,
  mcmctime_elapsed_p300_3blocks_n200_2,
  mcmctime_elapsed_p300_3blocks_n200_3,
  mcmctime_elapsed_p300_3blocks_n200_4,
  mcmctime_elapsed_p300_3blocks_n200_5,
  mcmctime_elapsed_p300_3blocks_n200_6,
  mcmctime_elapsed_p300_3blocks_n200_7,
  mcmctime_elapsed_p300_3blocks_n200_8,
  mcmctime_elapsed_p300_3blocks_n200_9,
  mcmctime_elapsed_p300_3blocks_n200_10,
  mcmctime_elapsed_p300_3blocks_n200_11,
  mcmctime_elapsed_p300_3blocks_n200_12,
  mcmctime_elapsed_p300_3blocks_n200_13,
  mcmctime_elapsed_p300_3blocks_n200_14,
  mcmctime_elapsed_p300_3blocks_n200_15,
  mcmctime_elapsed_p300_3blocks_n200_16,
  mcmctime_elapsed_p300_3blocks_n200_17,
  mcmctime_elapsed_p300_3blocks_n200_18,
  mcmctime_elapsed_p300_3blocks_n200_19,
  mcmctime_elapsed_p300_3blocks_n200_20,
  mcmctime_elapsed_p300_3blocks_n200_21,
  mcmctime_elapsed_p300_3blocks_n200_22,
  mcmctime_elapsed_p300_3blocks_n200_23,
  mcmctime_elapsed_p300_3blocks_n200_24,
  mcmctime_elapsed_p300_3blocks_n200_25,
  mcmctime_elapsed_p300_3blocks_n200_26,
  mcmctime_elapsed_p300_3blocks_n200_27,
  mcmctime_elapsed_p300_3blocks_n200_28,
  mcmctime_elapsed_p300_3blocks_n200_29,
  mcmctime_elapsed_p300_3blocks_n200_30,
  mcmctime_elapsed_p300_3blocks_n200_31,
  mcmctime_elapsed_p300_3blocks_n200_32,
  mcmctime_elapsed_p300_3blocks_n200_33,
  mcmctime_elapsed_p300_3blocks_n200_34,
  mcmctime_elapsed_p300_3blocks_n200_35,
  mcmctime_elapsed_p300_3blocks_n200_36,
  mcmctime_elapsed_p300_3blocks_n200_37,
  mcmctime_elapsed_p300_3blocks_n200_38,
  mcmctime_elapsed_p300_3blocks_n200_39,
  mcmctime_elapsed_p300_3blocks_n200_40,
  mcmctime_elapsed_p300_3blocks_n200_41,
  mcmctime_elapsed_p300_3blocks_n200_42,
  mcmctime_elapsed_p300_3blocks_n200_43,
  mcmctime_elapsed_p300_3blocks_n200_44,
  mcmctime_elapsed_p300_3blocks_n200_45,
  mcmctime_elapsed_p300_3blocks_n200_46,
  mcmctime_elapsed_p300_3blocks_n200_47,
  mcmctime_elapsed_p300_3blocks_n200_48,
  mcmctime_elapsed_p300_3blocks_n200_49,
  mcmctime_elapsed_p300_3blocks_n200_50,
  mcmctime_elapsed_p300_3blocks_n200_51,
  mcmctime_elapsed_p300_3blocks_n200_52,
  mcmctime_elapsed_p300_3blocks_n200_53,
  mcmctime_elapsed_p300_3blocks_n200_54,
  mcmctime_elapsed_p300_3blocks_n200_55,
  mcmctime_elapsed_p300_3blocks_n200_56,
  mcmctime_elapsed_p300_3blocks_n200_57,
  mcmctime_elapsed_p300_3blocks_n200_58,
  mcmctime_elapsed_p300_3blocks_n200_59,
  mcmctime_elapsed_p300_3blocks_n200_60,
  mcmctime_elapsed_p300_3blocks_n200_61,
  mcmctime_elapsed_p300_3blocks_n200_62,
  mcmctime_elapsed_p300_3blocks_n200_63,
  mcmctime_elapsed_p300_3blocks_n200_64,
  mcmctime_elapsed_p300_3blocks_n200_65,
  mcmctime_elapsed_p300_3blocks_n200_66,
  mcmctime_elapsed_p300_3blocks_n200_67,
  mcmctime_elapsed_p300_3blocks_n200_68,
  mcmctime_elapsed_p300_3blocks_n200_69,
  mcmctime_elapsed_p300_3blocks_n200_70,
  mcmctime_elapsed_p300_3blocks_n200_71,
  mcmctime_elapsed_p300_3blocks_n200_72,
  mcmctime_elapsed_p300_3blocks_n200_73,
  mcmctime_elapsed_p300_3blocks_n200_74,
  mcmctime_elapsed_p300_3blocks_n200_75,
  mcmctime_elapsed_p300_3blocks_n200_76,
  mcmctime_elapsed_p300_3blocks_n200_77,
  mcmctime_elapsed_p300_3blocks_n200_78,
  mcmctime_elapsed_p300_3blocks_n200_79,
  mcmctime_elapsed_p300_3blocks_n200_80,
  mcmctime_elapsed_p300_3blocks_n200_81,
  mcmctime_elapsed_p300_3blocks_n200_82,
  mcmctime_elapsed_p300_3blocks_n200_83,
  mcmctime_elapsed_p300_3blocks_n200_84,
  mcmctime_elapsed_p300_3blocks_n200_85,
  mcmctime_elapsed_p300_3blocks_n200_86,
  mcmctime_elapsed_p300_3blocks_n200_87,
  mcmctime_elapsed_p300_3blocks_n200_88,
  mcmctime_elapsed_p300_3blocks_n200_89,
  mcmctime_elapsed_p300_3blocks_n200_90,
  mcmctime_elapsed_p300_3blocks_n200_91,
  mcmctime_elapsed_p300_3blocks_n200_92,
  mcmctime_elapsed_p300_3blocks_n200_93,
  mcmctime_elapsed_p300_3blocks_n200_94,
  mcmctime_elapsed_p300_3blocks_n200_95,
  mcmctime_elapsed_p300_3blocks_n200_96,
  mcmctime_elapsed_p300_3blocks_n200_97,
  mcmctime_elapsed_p300_3blocks_n200_98,
  mcmctime_elapsed_p300_3blocks_n200_99,
  mcmctime_elapsed_p300_3blocks_n200_100
)

mean_time_bmsppre_p300_3blocks_n200 <- mean(time_bmsppre_p300_3blocks_n200)




