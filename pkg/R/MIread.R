MIread<-function(training.set,val.set,iicc){
	Dd<-matrix(0,ncol(training.set),ncol(training.set))
	p<-vector("numeric",length(val.set))
	
	p[val.set=="A"]<-1;p[val.set=="T"]<-2
	p[val.set=="C"]<-3;p[val.set=="G"]<-4	
	
	for (i in c (1:length(iicc$interA))){
		Dd[iicc$interB[i],iicc$interA[i]]<-iicc$Divergence[[i]][p[iicc$interB[i]],p[iicc$interA[i]]]
	}
	
	#per treure la traça
	preout<-abs(iicc$D-Dd)*iicc$Mperfil
	#diag(preout)<-0
	out<- 1/sum(preout+.Machine$double.eps)
	
	
	}	
			
