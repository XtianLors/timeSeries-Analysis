data(presidents)
presData <- presidents
head(presData)
str(presData)
start(presData); end(presData); frequency(presData);length(presData)

pres_1 <- window(presidents, 1960, c(1969,4)) # values in the 1960's
window(presidents, deltat = 1)  # All Qtr1s
window(presidents, start = c(1945,3), deltat = 1)  # All Qtr3s
window(presidents, 1944, c(1979,2), extend = TRUE)

ts.plot(presData)