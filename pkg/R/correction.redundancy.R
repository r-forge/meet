correction.redundancy <-function(r,HXmax,Herror,finite){
	
	Rerror<-(1-(Herror[finite]/HXmax))

	r[Rerror>r] <- 0
	return(r)
	}

