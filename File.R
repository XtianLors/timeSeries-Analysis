
#setwd()
#getwd()
#Installed Packages
#installed.packages()
#data(package = "packageName")
#data()

library("forecast")
library("TSA")
require(stats); require(graphics);require(zoo)
library(scales)
attach(women)
attach(LakeHuron)
attach(Indometh)

#attach(gas)
data(gas)
length(gas)
dataGas <- gas
set.seed(1)
head(gas)

length(dataGas)
class(dataGas)
start(dataGas); end(dataGas); frequency(dataGas)
plot(dataGas)
plot(dataGas, main="Gas from 1960 to 1990", sub="Frecuencia anual del precio de Gas")
roll.dataGas <- rollapply(dataGas, 12, mean)
plot(roll.dataGas, main="With a rolling of 12", sub="Applying a rolling of 12")
cor(dataGas, roll.dataGas)
min(roll.dataGas); max(roll.dataGas) ; mean(roll.dataGas)
start(roll.dataGas);end(roll.dataGas);frequency(roll.dataGas);length(roll.dataGas)
start(dataGas); end(dataGas); frequency(dataGas);length(dataGas)
min(dataGas); max(dataGas) ; mean(dataGas)
hepoints(dataGas[2], type="p")

layout(1:2)

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

attach()
data(AirPassengers)
AP <- AirPassengers
start(AP); end(AP); frequency(AP)

data(EuStockMarkets)

stocks <- EuStockMarkets
head(stocks)
str(stocks)

start(stocks); end(stocks);frequency(stocks)
plot(stocks, main="Stocks")
start(stocks); end(stocks); frequency(stocks); length(stocks)
levels(stocks)
#ts.plot(stocks[1:1860], start=c(1991, 130), end=c(1991, 135), frequency=260)
sigma <- rep(c("alpha", "donkey", "tiguer", "incel", "biggy"), each=10)
#levels(sigma)
unique(sigma)
#level(sigma)

#ts.plot(stocks[1:1860], stocks[1861:3720], 
#	gpars=list(xlab="year", ylab="Price", lty=c(1:2)))
layout(1:2)
ts.plot(stocks[,"DAX"], stocks[,"CAC"], 
	gpars=list(xlab="year", ylab="Price", lty=c(1:2)), col=c("red", "blue"))

ts.plot(stocks[,"DAX"], stocks[,"SMI"], stocks[, "FTSE"],
	gpars=list(xlab="Year", ylab="Price", lty=c(1:3)),
	col=c("red", "green", "purple"))



data(JohnsonJohnson)
#jj = ts(scan("/mydata/jj.dat"), start=1960, frequency=4)
#

JohnsonJohnson -> jj.dat
plot(jj.dat, ylab="Earnings Per Share", main="Johnson & Johnson",	type="l", col="pink")

start(jj.dat); end(jj.dat); frequency(jj.dat)

plot(jj.dat, type="o", col="blue", lty="dashed")
plot(jj.dat, type="o", col="orange", lty="dashed")

plot.ts(jj.dat, main="Johnson & Johnson")
ts.plot(jj.dat)

x = -5:5
y = 5*cos(x)
par(mfrow=c(3, 2))
plot(x, main="plot(x)")
plot(x, y, main="plot(x,y)")
#--- plot.ts:
plot.ts(x, main="plot.ts(x)")
plot.ts(x, y, main="plot.ts(x,y)")

#--- ts.plot:
ts.plot(x, main="ts.plot(x)")
ts.plot(ts(x), ts(y), col=1:2, main="ts.plot(x,y)") # note- x and y are ts objects
#--- the help files [? and help() are the same]:
?plot.ts
help(ts.plot)
?par # might as well skim the graphical parameters help file while you're here

ts.plot(ldeaths, mdeaths, fdeaths,
        gpars=list(xlab="year", ylab="deaths", lty=c(1:3)))
start(ldeaths); end(ldeaths); frequency(ldeaths); length(ldeaths)

#layout()

plot(x = x, 
     y = y, 
     main = "An Example of Heteroskedasticity",
     xlab = "Student-Teacher Ratio",
     ylab = "Test Score",
     cex = 0.5, 
     pch = 19, 
     xlim = c(8, 27), 
     ylim = c(600, 710))
abline(mod, col = "darkred")
boxplot(formula = y ~ x, 
        add = TRUE, 
        at = c(10, 15, 20, 25), 
        col = alpha("gray", 0.4), 
        border = "black")
min(x); max(x); length(x)
hist(x, include.lowest=TRUE)
#hist(x, breaks=3, include.lowest=TRUE)
hist(x, breaks=3, include.lowest=TRUE, col="lightblue")
hist(x, include.lowest=TRUE, plot=FALSE)
hist(x, breaks="FD", include.lowest=TRUE, col="pink")
hist(x, breaks="Sturges", include.lowest=TRUE, col="wheat")
hist(x, breaks="scott", include.lowest=TRUE, col="goldenrod2")
hist(x, breaks=c(), include.lowest=TRUE, col="VioletRed1")

set.seed(123)
x <- rep(c(10, 15,20, 25), each=25)
e <- c()
e[1:25] <- rnorm(25, sd=10)
hist(e[1:25])
max(e[1:25]); min(e[1:25]); length(e[1:25]); cor(e[1:25], e[26:50])
e[26:50] <- rnorm(25, sd=15)
max(e[26:50]); min(e[26:50]); length(e[26:50])
e[51:75] <- rnorm(25, sd=20)
max(e[51:75]); min(e[51:75]); length(e[51:75])
e[76:100] <- rnorm(25, sd=25)
max(e[76:100]); min(e[76:100]); length(e[76:100]); cor(e[1:25], e[76:100])
sqrthist(e[76:100])

y <- 720 - (3.3*x) + e
max(y); min(y); length(y)
hist(y)

vec1 <- ts(e[1:25], frequency = 12, start=c(1980, 1))
vec1Sm <- rollapply(vec1 , 12, mean)
plot(vec1)
start(vec1); end(vec1); frequency(vec1)
vec2 <- ts(e[26:50], frequency = 12, start=c(1980, 1))
vec2Sm <- rollapply(vec2 , 12, mean)
plot(vec2)
start(vec2); end(vec2); frequency(vec2)
vec3 <- ts(e[51:75], frequency = 12, start=c(1980,1))
vec3Sm <- rollapply(vec3 , 12, mean)
vec4 <- ts(e[76:100], frequency = 12, start=c(1980,1))
vec4Sm <- rollapply(vec4 , 12, mean)

ts.plot(vec1Sm, vec2Sm, vec3Sm, vec4Sm)
ts.plot(vec1, vec2, vec3, vec4)

op <- par(mfrow = c(2, 2))
hist(islands)
utils::str(hist(islands, col = "gray", labels = TRUE))
hist(sqrt(islands), breaks = 12, col = "lightblue", border = "pink")
r <- hist(sqrt(islands), breaks = c(4*0:5, 10*3:5, 70, 100, 140),
          col = "blue1")
text(r$mids, r$density, r$counts, adj = c(.5, -.5), col = "blue3")

sapply(r[2:3], sum)
sum(r$density * diff(r$breaks)) # == 1
lines(r, lty = 3, border = "purple") # -> lines.histogram(*)
par(op)

require(utils) # for str
str(hist(islands, breaks = 12, plot =  FALSE)) #-> 10 (~= 12) breaks
str(hist(islands, breaks = c(12,20,36,80,200,1000,17000), plot = FALSE))
hist(islands, breaks = c(12,20,36,80,200,1000,17000), freq = TRUE,
     main = "WRONG histogram") # and warning



#References

	#https://stat.ethz.ch/R-manual/R-devel/library/graphics/html/points.html
	#https://stat.ethz.ch/R-manual/R-devel/library/graphics/html/par.html
	#https://stat.ethz.ch/R-manual/R-devel/library/base/html/options.html
	#https://stat.ethz.ch/R-manual/R-devel/library/stats/html/ts.html
	#https://stat.ethz.ch/R-manual/R-devel/library/stats/html/window.html
	#http://127.0.0.1:29116/library/zoo/html/rollapply.html
	#http://127.0.0.1:24231/library/stats/html/ts.plot.html
	#http://127.0.0.1:24231/library/stats/html/plot.ts.html
	#https://cran.r-project.org/web/packages/tseries/index.html
	#https://cran.r-project.org/web/packages/tseries/tseries.pdf
	#https://www.rdocumentation.org/packages/modopt.matlab/versions/1.0-2/topics/quadprog

