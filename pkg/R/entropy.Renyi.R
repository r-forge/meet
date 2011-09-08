entropy.Renyi <-function(wind,q){
	h<-apply(wind,2,function(y){
			sum(y^q)
		})
	H<-(1/(1-q))*log2(h+.Machine$double.eps)

	return(H)
}
