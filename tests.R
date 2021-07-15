# Install the required R packages
# dplyr for data manipulation
install.packages("dplyr")

if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

library("dplyr")
library("ggpubr")


my_data <- read.csv(file.choose())
my_date <- IBM_Data.csv

set.seed(1234)
dplyr::sample_n(my_data, 10)

u=runif(1)*M
y=randg(1)
while(in>f(y)/g(y))
  {
    runif(1)*M
    y=randg(1)
}

# Normality tests
install.packages("astsa")
data(UnempRate, package = "astsa")

# Check whether there any outliers using the boxplot
boxplot(UnempRate, main="The U.S Unemployment Rate")

# According to the plot there are values that overlap the upperquatile so there 
# are outliers
# Check whether the data is normally distributed using a histogram
hist(UnempRate, main=)
lines(density(UnempRate), col="blue", lwd=2)

# Check whether the data is normally distributed using a qqnorm test
qqnorm(UnempRate)
qqline(UnempRate) #Check whether the data deviates from the line
# From my own personal point of view if the data is normally distributed,
# it should be on the line

# Check whether the data is normally distributed using the shapiro test
shapiro.test(UnempRate)

# We can also generate random numbers and use them to check for normality
test=round(rnorm(100, 60, 10))


# t - test
x = rnorm(10)
y = rnorm(10)
ttest = t.test(x,y)
names(ttest)
ttest$statistic # to extract the statistic
ts = replicate(1000,t.test(rnorm(10),rnorm(10))$statistic)
range(ts)
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=18),col='red',type='l')
lines(density(ts))


set.seed(8)
print(rnorm(5))