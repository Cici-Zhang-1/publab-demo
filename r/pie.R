# Title     : TODO
# Objective : TODO
# Created by: chuangchuangzhang
# Created on: 2018/3/8
# 饼状图
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "city.jpg")

# Plot the chart.
pie(x,labels)

# Save the file.
dev.off()
