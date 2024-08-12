# # Install and load necessary packages
# # install.packages("rattle")
# # install.packages("adegenet")
# 
# library(rattle)
# library(adegenet)
# 
# # Load the wine dataset
# data(wine, package = "rattle")
# 
# # Inspect the dataset
# head(wine)
# 
# # Prepare the data for DAPC
# X <- wine[, -ncol(wine)]  # Extract predictors
# Y <- wine[, ncol(wine)]   # Extract class labels
# 
# # Convert X to a matrix if necessary
# X <- as.matrix(X)
# 
# # Perform DAPC
# dapc_result <- dapc(X, Y, n.pca = 10, n.da = 3)
# 
# # Visualize the results
# scatter(dapc_result, scree.da = TRUE, posi.da = "bottomleft")
# compoplot(dapc_result, posi = "bottomright", txt.leg = levels(Y))
