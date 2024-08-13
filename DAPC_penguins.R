library(palmerpenguins)
library(adegenet)
library(RColorBrewer)

# load penguins data
data(penguins, package = "palmerpenguins")
# remove NAs
penguins <- na.omit(penguins)

# Inspect data to get better understanding
str(penguins)
summary(penguins)


# Going to convert data to a matrix prior to performing DAPC
# In this matrix, each row is an observation.
# The columns are as specified below. We will select all but the non-numeric columns 
# as those cannot be handled by PCA. 
# These are the features that PCA will reduce and identify the most important variation
columns <- c( "bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")
features_matrix_for_PCA <- as.matrix(penguins[, columns])

# For the DA portion of DAPC, we need to select a factor that will 
# categorize the observations. These are the groupings that we want to
# focus on and maximize the separation of.  We want to see the data 
# separated by species
factors_for_DA <- penguins$species

# With the DAPC inputs prepared, it is a simple call in R to execute the 
# analysis. 
# n.pca is how many features we want the PCA to reduce to. We will direct
# the algorithm to keep the 3 most important directions of variations
# n.da is similar to n.pca, but instead selects the # of discriminants 
# to keep. We'll use 2 in this example
dapc_output <- dapc(features_matrix_for_PCA, factors_for_DA, n.pca = 3, n.da = 2)

# Finally, we will visualize the output of the 
colors <- brewer.pal(3, "Set2")  # Colorblind-friendly colors
scatter(dapc_output, pch = 7, cstar = 0, col = colors,
        scree.da = FALSE, legend = TRUE, solid = 0.7)
title(main = "Penguin DAPC Results", xlab = "DA Function 1", ylab = "DA Function 2")
