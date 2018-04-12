# Title     : TODO
# Objective : TODO
# Created by: chuangchuangzhang
# Created on: 2018/3/8
# 箱线图
# Give the chart file a name.
arg <- commandArgs(T)

FileName <- "boxplot.png"
png(file = FileName)

# Plot the chart.
boxplot(get(arg[2])~get(arg[3]), data = get(arg[1]), xlab = arg[4],
ylab = arg[5], main = arg[6])

# Save the file.
dev.off()
print (FileName)
