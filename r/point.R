# Title     : TODO
# Objective : TODO
# Created by: chuangchuangzhang
# Created on: 2018/3/8
# Get the input values.
# 散点图
# input <- mtcars[,c('wt','mpg')]
#
# # Give the chart file a name.
# png(file = "scatterplot.png")
#
# # Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
# plot(x = input$wt,y = input$mpg,
# xlab = "Weight",
# ylab = "Milage",
# xlim = c(2.5,5),
# ylim = c(15,30),
# main = "Weight vs Milage"
# )
#
# # Save the file.
# dev.off()
arg <- commandArgs(T)
arg <- as.numeric(arg)

attach(mtcars)
FileName <- "point.png"
png(file = FileName)

plot(wt, mpg, main="Basic Scatter plot of MPG vs. Weight", xlab="Car Weight(lbs/1000)", ylab="Miles Per Gallon", pch=19)
if(arg[1]) {
    abline(lm(mpg~wt),col="red", lwd= 2, lty = 1)
}

if(arg[2]) {
    lines(lowess(wt, mpg), col="blue", lwd=2, lty=2)
}

dev.off()
print (FileName)
