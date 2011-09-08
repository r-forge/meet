probability.couple <-function(Prob){
	
	rownames<-c('AA','AT','AC','AG','TA','TT','TC','TG','CA','CT','CC','CG','GA','GT','GC','GG')
	Probtrans<-matrix(,length(rownames),1)
	names(Probtrans)<-rownames
	Probtrans[1:2,1]<-Probtrans[5:6,1]<-(Prob[1])*(Prob[1]);
	Probtrans[3:4,1]<-Probtrans[7:10,1]<-Probtrans[13:14,1]<-(Prob[1])*(Prob[3]);
	Probtrans[11:12,1]<-Probtrans[15:16,1]<-(Prob[3])*(Prob[3]);
	return(Probtrans)
	}

