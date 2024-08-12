# load necessary packages
library(adegenet)

# Load the iris dataset
data(iris)

# Prepare the data for DAPC
X <- as.matrix(iris[, 1:4])  # Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
Y <- iris$Species

# Perform DAPC
dapc_result <- dapc(X, Y, n.pca = 4, n.da = 2)

# Visualize the results
scatter(dapc_result, scree.da = TRUE, posi.da = "bottomleft")
compoplot(dapc_result, posi = "bottomright", txt.leg = levels(Y))
