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