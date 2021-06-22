v <- c(1, 2, 3)
v
s <- "a string"
s
#returning the type of the vector
class(s)
class(v)
#returning the length of the vector
x <- c("a", "b", "c")
print(length(x))

#Vector Names
v <- c(s1 = 0.3, s2=0.1, s3=1.1)
v
#Sorting vectors
sort(v)
#Names
names(v)

#Vector Arithmetic
#The rnorm() generates random variates assuming a normal distribution
x <- rnorm(20)
y <- rnorm(20)
x
print(x + 1)

#Generating regular sequences
x1 = seq(-1, 0, by = 0.1)
x1
y <- rep(x1, times = 50)
print(length(y))
TF <- y > -0.6
TF

#Working with logical
v <- seq(-3, 3)
Pauline <- v > 0
Pauline