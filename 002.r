# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Add the matrices.
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)

# Subtract the matrices
result <- matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)

# Create data for the graph.
v <- c( 0.49974471, 0.62175231, 0.5620094,  1.19033830, 0.02166300, -1.08435121,
        -0.86283786, -1.28218179, 0.59471427, 0.07995766, 1.52284837, -0.26231940,
        -0.06025192, -0.27726605, 0.98212597, 1.08333421, -1.29356114, -1.34792197,
        1.81617819, -1.80016655)

# Give the chart file a name.
png(file = "line_chart.jpg")

# Plot the bar chart. 
plot(v,type = "o")

# Save the file.
dev.off()

list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)
print(list_data[2:4])