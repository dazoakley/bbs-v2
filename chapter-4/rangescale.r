# RANGESCALE.R
#
# R program to define a function to rangescale columns of a matrix

rangescale <- function(X) {

	Xmax <- apply(X, 2, max)
	Xscaled = scale(X, scale=Xmax, center=FALSE)

	return(Xscaled)
}

