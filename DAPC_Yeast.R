# # load necessary packages
# # install.packages("mlbench")
# # install.packages("adegenet")
# library(mlbench)
# library(adegenet)
# 
# # Load the yeast dataset
# data(yeast, package = "mlbench")
# 
# # Inspect the dataset
# head(yeast)
# 
# # Prepare the data for DAPC
# X <- yeast[, -ncol(yeast)]  # Extract predictors
# Y <- yeast[, ncol(yeast)]   # Extract class labels
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
