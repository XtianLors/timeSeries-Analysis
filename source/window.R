attach(warpbreaks)
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
str(warpbreaks)
warpbreaks[1:10,]

mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat
#Choosing values
mdat[1,3] #Row 1, Column 3
mdat[2, 2] #Row 2, Column 2
#First Row
mdat[1,]
#The first two columns
mdat[,1:2]
#Choosing separated values:
mdat[1, 1]; mdat[2, 3] #First and last value/register

cdat <- matrix(seq(1, 25), nrow = 5, ncol = 5, byrow = TRUE,
               dimnames = list(c("row1", "row2", "row3", "row4", "row5"),
               c("C.1", "C.2", "C.3", "C.4", "C.5")))
#Assign new values & compare:
cdat[1, ] <- c(8, 3, 4, 8, 9) #Choose first row and assign 5 different values.
cdat[1:2,]

#
#Row, column, volume

