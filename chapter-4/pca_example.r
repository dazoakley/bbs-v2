# PCA_EXAMPLE.R
#
# Program to load in data matrix, calculate principal
# components and plot resulting scores.

rm(list=ls())			# clear workspace

source("rangescale.r")	# define our rangescale function

# load data matrix from file
X <- read.table("http://www.bixsolutions.net/profiles.csv", sep=",", header=TRUE)

Xscaled = rangescale(X)	# scale the profiles

result = prcomp(t(Xscaled), center=FALSE) # perform PCA on transpose

# extract the scores matrix from the result
scores=result$x

# plot PC1 against PC2
plot(scores[,1], scores[,2], xlab="PC1",ylab="PC2")

# add labels to points (note 0.005,0.003 offset to avoid obscuring points)
text(scores[,1]+0.005, scores[,2]+0.003, names(X))