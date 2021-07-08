library('matlib')

X <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow = TRUE)
Y <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow = FALSE)

print(Y)
print(det(X))
print(Solve(X)) #Cannot return the inverse of X because X is a singular matrix
t(X)



# Eigenvalues
# Are special set of scalars associated with a linear system of 
# equations that are sometimes also know as characteristic roots, 
# characteristic values, proper values or latent roots
# Get the eigenvalues and eigenvectors using eigen(); It returns a named
# list, with eigenvalues named values and eigenvectors named vectors

print(eigen(X))

# In R percent signs combined with asterisks are used for matrix multiplication
# X%*%Y

print((X%*%Y) == (Y%*%X))


# It is correct to say that XY != YX

data <- read.csv('IBM Historical Price Data (IBM) - Investing.com.csv')
print(data)

#Analyzing the file
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
print(head(data))
print(data[0,])
for(i in names(data)){ 
  print(i) 
} 

#analyzing individual columns



#Histogram
png(file = "Histogram.png")
d <- as.numeric(unlist(data))
hist(d)


# Create 3 different vectors.
a1 <- c(3, 2, 8)
a2 <- c(6, 3, 2)
a3 <- c(5, 2, 4)

# Bind the 3 matrices row-wise 
# using the rbind() function.
A <- rbind(a1, a2, a3)

# determinant of matrix
print(det(A))
print(inv(t(A))) 

a <- matrix(c(6,4,3,1),nrow=2, byrow = TRUE)
b <- matrix(c(15,7,1,9),nrow=2, byrow = TRUE)
print(a)
print(t(b))

print(a%*%t(b))
print(a*b)
print(rbind(a,b))
print(Apply(a, 1, sum))