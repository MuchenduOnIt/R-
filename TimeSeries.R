# load the World Bank API package
library(WDI)
# pull the data
gdp <- WDI(country=c("US", "CA", "GB", "DE", "CN", "JP", "SG", "IL"), 
           indicator=c("NY.GDP.PCAP.CD", "NY.GDP.MKTP.CD"), start=1960, 
           end=2011) 
    # give it good names
names(gdp) <- c("iso2c", "Country", "Year", "PerCapGDP", "GDP")
    
head(gdp)





















# Example: Let’s take the example of COVID-19 pandemic situation. 
# Taking total number of positive cases of COVID-19 cases weekly from 22 
# January, 2020 to 15 April, 2020 of the world in data vector.

# Weekly data of COVID-19 positive cases from
# 22 January, 2020 to 15 April, 2020
x <- c(580, 7813, 28266, 59287, 75700,
       87820, 95314, 126214, 218843, 471497,
       936851, 1508725, 2072113)

# library required for decimal_date() function
library(lubridate)

# output to be created as png file
png(file ="timeSeries.png")

# creating time series object
# from date 22 January, 2020
mts <- ts(x, start = decimal_date(ymd("2020-01-22")),
          frequency = 365.25 / 7)

# plotting the graph
plot(mts, xlab ="Weekly Data",
     ylab ="Total Positive Cases",
     main ="COVID-19 Pandemic",
     col.main ="darkgreen")

# saving the file
dev.off()


# Multivariate Time Series is creating multiple time series in a single chart.
# Example: Taking data of total positive cases and total deaths from COVID-19 
# weekly from 22 January 2020 to 15 April 2020 in data vector.

# Weekly data of COVID-19 positive cases and
# weekly deaths from 22 January, 2020 to
# 15 April, 2020
positiveCases <- c(580, 7813, 28266, 59287,
                   75700, 87820, 95314, 126214,
                   218843, 471497, 936851,
                   1508725, 2072113)

deaths <- c(17, 270, 565, 1261, 2126, 2800,
            3285, 4628, 8951, 21283, 47210,
            88480, 138475)

# library required for decimal_date() function
library(lubridate)

# output to be created as png file
png(file ="multivariateTimeSeries.png")

# creating multivariate time series object
# from date 22 January, 2020
mts <- ts(cbind(positiveCases, deaths),
          start = decimal_date(ymd("2020-01-22")),
          frequency = 365.25 / 7)

# plotting the graph
plot(mts, xlab ="Weekly Data",
     main ="COVID-19 Cases",
     col.main ="darkgreen")

# saving the file
dev.off()
