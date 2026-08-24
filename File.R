
#setwd()
#getwd()
#Installed Packages
#installed.packages()
#data(package = "packageName")
#data()

library("forecast")
require(zoo)

data(gas)
length(gas)
dataGas <- gas
set.seed(1)
head(gas)

length(dataGas)
class(dataGas)
start(dataGas); end(dataGas); frequency(dataGas)
plot(dataGas)

z <- zoo(11:15, as.Date(31:35))
length(z)
z
rollapply(z, 1, mean)
rollapply(z, 2, mean)
rollapply(z, 4, mean)

s <- rollapply(dataGas, 8, mean)

length(s)
plot(s)
start(s); end(s); frequency(s)

z2 <- zoo(rnorm(6))
rollapply(z2, 3, mean, by = 3)
aggregate(z2, c(3,3,3,6,6,6), mean)

#help(lm)
#?lm
#?? "standard deviation"
#help.search("mean") 
#apropos("cor")
#vignette() 
#browseVignettes("ggplot2")
#help(rlm, package = "MASS")
#args(function_name)
#example(function_name)
#str(object_name)

Fact <- function(n) if (n == 1) 1 else n * Fact(n - 1)
Fact(5)

data(AirPassengers)
AP <- AirPassengers
start(AP); end(AP); frequency(AP)















