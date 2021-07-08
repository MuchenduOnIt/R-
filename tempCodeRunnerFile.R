install.packages("readxl")

#Loading the package
library(readxl)
# Import excel file
Data1 <- read.delim("IBM_data.txt", header = TRUE)

# Printing the data
head(Data1)
typeof(Data1)
y <- as.data.frame(Data1)
print(y)
print(colnames(y))

for(i in colnames(y)){
  if (i == "Price"){
    print(y[i])
  }
}

high<- y["High"]
low <- y["Low"]
plot(price, main="Scatter plot for highs only")

plot(high, low, xlab="Low", ylab="High", type="l")

u=runif(1)*M
y=randg(1)