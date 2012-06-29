CalculRedundancy <-function(Factortrans,q,iicc){
	Prob<-as.numeric(iicc$background)
	Herror<-iicc$Herror
	HXmax<-iicc$HXmax
	
	probability.matrix<-probability(Factortrans,Prob,TRUE)

	H<-switch(iicc$classentropy, "Shannon"=entropy.Shannon(probability.matrix),"Renyi"=entropy.Renyi(probability.matrix,q))

	Redundancia_corregida<-redundancy(H,HXmax,Herror,nrow(Factortrans),TRUE)
	
	return(Redundancia_corregida)
	
}

