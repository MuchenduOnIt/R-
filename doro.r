dorothy <- c("Big brains", 20, 64, "Chocalate")
dorothy

#Data Types
string <- "I am 20 years old"
integer <- 20
float <- 8.9

class(integer)
class(float)
class(string)
 
v <- c(7, 9, 8,2, 43, 56, 6, 4, 7)
summary(v)
sort(v)
length(v)
v[6]


#rnorm - generates random numbers given a range assuming a normal distribution
x <- rnorm(8)
print(x)

y <- seq(5, 900, by=5)
y

#logical vector
t <- 9 != 0
t 
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)
list_data[4]

# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Show the list.
print(list_data)

# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# Merge the two lists.
merged.list <- c(list1,list2)

# Print the merged list.
print(merged.list)

list1 <- list(1:5)
print(list1)

M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)
# Elements are arranged sequentially by row.
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)

matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

result <- matrix1 / matrix2
cat("Result of addition","\n")
print(result)

# Create a vector as input.
data <- c("East","West","East","North","North","East",
          "West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))

# Create the vectors for data frame.
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")

# Create the data frame.
input_data <- data.frame(height,weight,gender)
print(input_data)

# Test if the gender column is a factor.
print(is.factor(input_data$gender))

# Print the gender column so see the levels.
print(input_data$gender)

chol <- read.table(url
                   ("http://assets.datacamp.com/blog_assets/chol.txt"),
                   header = TRUE)
hist(AirPassengers, 
     main="Histogram for Air Passengers", 
     xlab="Passengers", 
     border="blue", 
     col="green",
     xlim=c(100,700),
     las=1, 
     breaks=5)