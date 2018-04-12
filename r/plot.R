# Title     : TODO
# Objective : TODO
# Created by: chuangchuangzhang
# Created on: 2018/3/8
# 折线图

# Create the data for the chart.
v <- c(7,12,28,3,41)

# Give the chart file a name.
png(file = "line_chart.jpg")

# Plot the bar chart.
plot(v,type = "o")

# Save the file.
dev.off()
