entropy.joint <-function(pmXY,q,iicc){

HXY<-sapply(pmXY,function(x){
		sapply(x,function(y){
			   y<-matrix(data=y,nrow=16 ,ncol=1)
			   h<-switch(iicc$classentropy, "Shannon"=entropy.Shannon(y),"Renyi"=entropy.Renyi(y,q))
			   })
	})
	return(HXY)
}

