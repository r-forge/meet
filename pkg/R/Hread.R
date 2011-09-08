Hread<-function(training.set.mes.rand,val.set,iicc){
	
	HXmax   <- iicc$HXmax
    Herror<-iicc$Herror
	Redundancia_corregida<- iicc$Redundancia_corregida

	HX<-vector("numeric",ncol(iicc$Transcriptionfactor))
	p<-vector("numeric",length(val.set))
	p[val.set=="A"]<-1;p[val.set=="T"]<-2
	p[val.set=="C"]<-3;p[val.set=="G"]<-4	
	
	for (i in c (1:ncol(iicc$Transcriptionfactor))){
		HX[i]<-iicc$Entropy[[p[[i]]]][i]
		}
	
	out_det <- diff.instructions(training.set.mes.rand, HX, HXmax,Herror, Redundancia_corregida)
	
	out<-(1/(out_det+.Machine$double.eps))
	}
