divergence.Renyi <-function(training.set,pmX,pmXY,q,correction){
	
	numpos<-1:ncol(training.set)					
	numfila<-1:4
	
	VarD<-((4-1)^2)/(2*((nrow(training.set))^2)*(log(2,base=exp(1)))^2)
	ErrorMI<-(2*VarD)^(1/2)
	
	
	r<-sapply(numpos,function(pos){
		sapply(numpos,function(position){
		  z<-sapply(numfila,function(i){
		        sapply(numfila,function(j){
		        ((as.numeric(pmXY[[pos]][[position]][4*(i-1)+j]))^q)*((pmX[i,pos]*pmX[j,position]+.Machine$double.eps)^(1-q))
			})
		  })
		  z[which(is.na(z))]<-0
		  sum(z)
		  })
	    })
	 rr<-(1/(q-1))*log2(r)
	
	if (q<1) {
		
		rr[rr+abs(ErrorMI)> slot(correction,"Herror")[nrow(training.set)]]<-slot(correction,"Herror")[nrow(training.set)]
		rr[rr-abs(ErrorMI)<0]<-0
	
	}else{
	 
		X<-sapply(numpos,function(pos){
				  sapply(numpos,function(position){
				  z<-sapply(numfila,function(i){
							sapply(numfila,function(j){
								   ((as.numeric(pmXY[[pos]][[position]][4*(i-1)+j])-(pmX[i,pos]*pmX[j,position]))^2)/((pmX[i,pos]*pmX[j,position])+.Machine$double.eps)
								   })
							})
						 sum(z)
						 })
				  })
		 
		rr<-sapply(numpos,function(pos){
				  sapply(numpos,function(position){
						 if (rr[pos,position]+abs(ErrorMI)> (0.5*X[pos,position])){rr[pos,position]<-(0.5*X[pos,position])}
						 rr[pos,position]
						 })
				  })
		rr[rr-abs(ErrorMI)<0]<-0
	}
		
	return(rr)
	 
}

