# PROFILES.R
#
# Simple R program to load a data matrix, scale it and plot the result

# clear out the workspace first
rm(list = ls())

# load data frame from web site
X <- read.table("http://www.bixsolutions.net/profiles.csv", sep=",", header=TRUE)

# rangescale data by dividing by the maximum value in each column
Xmax <- apply(X,2,max)
Xscaled = scale(X, scale=Xmax, center=FALSE)

# plot columns in matrix as lines on a single graph
matplot(Xscaled,type="l",xlab="fraction",ylab="quantity",col=1:6,lty=1:5,lwd=2)

# add legend to graph
legend(x=1,legend=names(X),col=1:6,lty=1:5,lwd=2,bg="snow")