# # Load necessary packages
# 
# install.packages("mixOmics")
# install.packages("ggplot2")
# library(mixOmics)
# library(ggplot2)
# 
# # Load the data
# data(mice, package = "mixOmics")
# X <- mice$protein
# Y <- mice$genotype
# 
# # Run PCA (optional step to inspect)
# pca_result <- pca(X, ncomp = 10)
# plot(pca_result)
# 
# # Perform DAPC
# dapc_result <- dapc(X, Y, n.da = 3, n.pca = 5)
# 
# # Visualize DAPC results
# df_dapc <- as.data.frame(dapc_result$ind.coord)
# df_dapc$Group <- Y
# 
# ggplot(df_dapc, aes(x = LD1, y = LD2, color = Group)) +
#     geom_point(size = 3) +
#     theme_minimal() +
#     labs(title = "DAPC: Mice Dataset", x = "Discriminant Function 1", y = "Discriminant Function 2")
# 
# # Model accuracy
# confusion <- table(Predicted = dapc_result$grp, Actual = Y)
# accuracy <- sum(diag(confusion)) / sum(confusion)
# print(paste("Accuracy:", round(accuracy, 2)))
# 
# # Interpret loading scores
# loading_scores <- dapc_result$var.contr
# head(loading_scores)


