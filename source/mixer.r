


takeFourSpit <- function(varTimeS, varTimePer){
	delf <- scan(what='Integer')
	cat(delf)
	
	#
	varTimeS
	#
	#
	#
}

apply(X = window(dataGas, 1959, c(1959,12))[1:12], 1, FUN = sum)

attach(UCBAdmissions)
berkeley <- aggregate(UCBAdmissions["Table"](UCBAdmissions["Admit"],UCBAdmissions["Freq"])~.,data=UCBAdmissions)

berkeley <- Aggregate(Table(Admit,Freq)~.,data=UCBAdmissions)
berktest1 <- By(~Dept+Gender,
                glm(cbind(Admitted,Rejected)~1,family="binomial"),
                data=berkeley)








