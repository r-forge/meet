probability <-function(wind,Prob,missing.fun){

pm<-apply(wind,2,function (x){
	resum<-table(x)
	A<-resum["A"];T<-resum["T"];C<-resum["C"];G<-resum["G"];R<-resum["-"]
	symbols <- c(A,T,C,G)
	names(symbols) <- c("A","T","C","G")
	symbols[which(is.na(symbols))] <- 0
	if(is.na(R)) R <- 0
	prepm<-missing.fun(x,symbols,R,Prob)
	prepm})
return(pm)
}

