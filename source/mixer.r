


takeFourSpit <- function(varTimeS, varTimePer){
	delf <- scan(what='Integer')
	cat(delf)
	
	#
	varTimeS
	#
	#
	#
}

for (i in 0:10) {
	if (i < 10){
		cat(i)
		
	}
	else {
		cat(i)
		cat("\n")
	}
}

for(i

apply(X = window(dataGas, 1959, c(1959,12))[1:12], 1, FUN = sum)

attach(UCBAdmissions)
berkeley <- aggregate(UCBAdmissions["Table"](UCBAdmissions["Admit"],UCBAdmissions["Freq"])~.,data=UCBAdmissions)

berkeley <- Aggregate(Table(Admit,Freq)~.,data=UCBAdmissions)
berktest1 <- By(~Dept+Gender,
                glm(cbind(Admitted,Rejected)~1,family="binomial"),
                data=berkeley)


x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
# compute the list mean for each list element
lapply(x, mean)
# median and quartiles for each list element
lapply(x, quantile, probs = 1:3/4)
sapply(x, quantile)
i39 <- sapply(3:9, seq) # list of vectors
sapply(i39, fivenum)
vapply(i39, fivenum,
       c(Min. = 0, "1st Qu." = 0, Median = 0, "3rd Qu." = 0, Max. = 0))

## sapply(*, "array") -- artificial example
(v <- structure(10*(5:8), names = LETTERS[1:4]))
f2 <- function(x, y) outer(rep(x, length.out = 3), y)
(a2 <- sapply(v, f2, y = 2*(1:5), simplify = "array"))
a.2 <- vapply(v, f2, outer(1:3, 1:5), y = 2*(1:5))
stopifnot(dim(a2) == c(3,5,4), all.equal(a2, a.2),
          identical(dimnames(a2), list(NULL,NULL,LETTERS[1:4])))

hist(replicate(100, mean(rexp(10))))

## use of replicate() with parameters:
foo <- function(x = 1, y = 2) c(x, y)
# does not work: bar <- function(n, ...) replicate(n, foo(...))
bar <- function(n, x) replicate(n, foo(x = x))
bar(5, x = 3)

https://bookdown.org/jboscomendoza/r-principiantes4/if-else.html
https://www.r-bloggers.com/2022/06/exercise-8-recursive-functions-in-r/
https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/is.recursive
http://adv-r.had.co.nz/Functional-programming.html
http://127.0.0.1:22977/library/base/html/quit.html
https://bookdown.org/jboscomendoza/r-principiantes4/break-y-next.html
http://127.0.0.1:22977/library/base/html/sweep.html
http://127.0.0.1:22977/library/stats/html/aggregate.html
http://127.0.0.1:22977/library/base/html/apply.html
http://127.0.0.1:22977/library/base/html/lapply.html
https://bookdown.org/jboscomendoza/r-principiantes4/graficas.html
https://bookdown.org/jboscomendoza/r-principiantes4/for.html
https://rpubs.com/Ejercicios_practicos/934018

http://127.0.0.1:26208/library/stats/html/mad.html
http://127.0.0.1:26208/library/stats/html/glm.html
https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/as.POSIX*
https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/system.time
https://www.rdocumentation.org/packages/memisc/versions/0.99.31.8.3/topics/Sapply
http://127.0.0.1:28471/library/data.table/html/froll.html



