#PLOTS A SIMPLE LINE GRAPH
#CHANGES BACKGROUND COLOURS
#ADDS A GRID
#SETS ORIGIN TO 0,0
x <- c(1,3,4,7)
y <- c(3,5,2,8)
m = cbind(x, y)
par(bg="lightblue",mar=c(2,2,2,2))
plot(0, 0, type="n", ann=FALSE, axes=FALSE)
u <- par("usr") # The coordinates of the plot area
rect(u[1], u[3], u[2], u[4], col="white", border=NA)
par(new=TRUE)
plot(x, y, col="dark green", pch=17, xlim=c(0,9), ylim=c(0,9), type="l", lwd=2, asp=1, yaxs="i", xaxs="i")
axis(1, at=0:9)
axis(2, at=seq(0,9,by=1))
points(x, y, col="red", pch=17,cex=2)
grid(nx=9, ny=9,col="black", lty="dotted")
