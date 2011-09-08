missing.fun <-function(x,symbols,R,Prob){
	pm<-(1/length(x))*as.vector(c(symbols["A"]+Prob[1]*R,symbols["T"]+Prob[2]*R,symbols["C"]+Prob[3]*R,symbols["G"]+Prob[4]*R))
}

