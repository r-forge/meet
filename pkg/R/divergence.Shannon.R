divergence.Shannon <-function(training.set,H,HXY,correction){
	
	numpos<-1:ncol(training.set)	
	
	VarD<-((4-1)^2)/(2*((nrow(training.set))^2)*(log(2,base=exp(1)))^2)
	ErrorMI<-(1*VarD)^(1/2)
					
	Hxx<-sapply(H,function (x){
			x+H
		})

	MI<-sapply(numpos,function(pos){
		sapply(numpos,function(position){
			mi<-Hxx[pos,position]-HXY[pos,position]
			mi[mi+abs(ErrorMI)>slot(correction,"Herror")[nrow(training.set)]]<-slot(correction,"Herror")[nrow(training.set)]
 			mi[mi-abs(ErrorMI)<0]<-0
			return(mi)
		})
	})
	return(MI)

}

