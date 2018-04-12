#H <- c(7,12,28,3,41)
arg <- commandArgs(T)
arg <- as.numeric(arg)
# print (arg)
H <- c(arg[1], arg[2], arg[3], arg[4], arg[5])

FileName <- "barchart.png"
png(file = FileName)

barplot(H)

dev.off()

print (FileName)
