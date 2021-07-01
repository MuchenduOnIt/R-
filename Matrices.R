X <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow = TRUE)
Y <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow = FALSE)

print(det(Y))
solve(X) #Cannot return the inverse of X because X is a singular matrix
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
# It is incorrect to say that XY != XY

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
