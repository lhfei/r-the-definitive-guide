# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "src/graphs/simple_pie.jpg")

# Plot the chart.
pie(x,labels)

# Save the file.
dev.off()


######
png(file = "src/graphs/Slice Percentages and Chart Legend.jpg")
# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))
dev.off()

#### Plot the chart.
# Get the library.
library(plotrix)

png(file = "src/graphs/3d_pie.jpg")
pie3D(x,labels = labels,explode = 0.1, main = "Pie Chart of Countries ")
dev.off()

