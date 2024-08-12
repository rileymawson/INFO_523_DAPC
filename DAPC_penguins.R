library(palmerpenguins)
library(adegenet)

# Load the penguins dataset and remove missing values
data(penguins, package = "palmerpenguins")
penguins <- na.omit(penguins)

# Prepare the data for DAPC
X <- as.matrix(penguins[, c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")])
Y <- penguins$species

# Perform DAPC
dapc_result <- dapc(X, Y, n.pca = 4, n.da = 2)

# Visualize the results
scatter(dapc_result, scree.da = TRUE, posi.da = "bottomleft")
compoplot(dapc_result, posi = "bottomright", txt.leg = levels(Y))
