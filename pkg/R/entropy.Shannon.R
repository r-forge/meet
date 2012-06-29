entropy.Shannon <-function(wind){
	
	H<-apply(wind,2,function(y){
			 h<- (-y*log2(y+.Machine$double.eps))
			 h[which(is.na(h))]<-0
			 return(sum(h))
			 })
			 
		return(H)			 
	}
