# SSSEQ.R
#
# Simple R script to display a sequence with structural annotation

# define sequence and secondary structure
seq <- "GARVHMDGARLMNAAVALRIPPARLVEHCDSVSFCFSKG"
struct <- c(0,0,2,2,2,2,2,1,1,1,1,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,0,0,0,0,0,2,2,2,2,2,0,0,0,0)
residuecount <- 39;

# set up the window for plotting
x11()  # may need to change to quartz() for Mac or windows() for PC
plot.new()
plot.window(c(0,40),c(-20,20))

# plot a line representing the length of the sequence
segments(0.5,0,39.5,0)

# plot the sequence and features
for (i in 1:residuecount) {
	text(i,-2,substr(seq,i,i))	# write residue letter
	if (struct[i] != 0) {
		if (struct[i] == 1) boxcolour <- "firebrick"	# alpha helix
		if (struct[i] == 2) boxcolour <- "yellow3"	# beta sheet 
		rect(i-0.5,-1,i+0.5,1,col = boxcolour, border = NA)
	}
}

# plot a legend
legend(x=0,y=8,legend=(c("alpha helix","beta sheet")),
    pch=15,col=c("firebrick","yellow3"),bg="snow")
