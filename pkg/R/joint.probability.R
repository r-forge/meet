joint.probability <-function(training.set,Prob,prob_parella){
	Probtrans<-prob_parella
	yyy<-lapply(c(1:ncol(training.set)), function(i){
				 lapply(c(1:ncol(training.set)), function(ii){
						
						y<-table(paste(training.set[,i],training.set[,ii],sep=""))
						AA<-as.numeric(y["AA"]);AT<-as.numeric(y["AT"]);AC<-as.numeric(y["AC"]);AG<-as.numeric(y["AG"]);
						TA<-as.numeric(y["TA"]);TT<-as.numeric(y["TT"]);TC<-as.numeric(y["TC"]);TG<-as.numeric(y["TG"]);
						CA<-as.numeric(y["CA"]);CT<-as.numeric(y["CT"]);CC<-as.numeric(y["CC"]);CG<-as.numeric(y["CG"]);
						GA<-as.numeric(y["GA"]);GT<-as.numeric(y["GT"]);GC<-as.numeric(y["GC"]);GG<-as.numeric(y["GG"]);
						RA<-as.numeric(y["-A"]);RT<-as.numeric(y["-T"]);RC<-as.numeric(y["-C"]);RG<-as.numeric(y["-G"]);
						AR<-as.numeric(y["A-"]);TR<-as.numeric(y["T-"]);CR<-as.numeric(y["C-"]);GR<-as.numeric(y["G-"]);
						
						
						symbols <- c(AA,AT,AC,AG,TA,TT,TC,TG,CA,CT,CC,CG,GA,GT,GC,GG)
						gaps<-c(RA,AR,RT,TR,RC,CR,RG,GR)
						names(symbols) <-c('AA','AT','AC','AG','TA','TT','TC','TG','CA','CT','CC','CG','GA','GT','GC','GG')
						names(gaps) <- c('RA','AR','RT','TR','RC','CR','RG','GR')
						names(Prob)<-c("A","T","C","G")
						symbols[which(is.na(symbols))] <- 0
						gaps[which(is.na(gaps))] <- 0
						R<-(nrow(training.set)-(sum(symbols)+sum(gaps)))
						
						if ((nrow(training.set)-sum(symbols))==0){
						rr<-as.numeric((symbols/sum(symbols)))
						}else{
						rr<-sapply(names(symbols),function (w) {
								   as.numeric(((1/nrow(training.set))*(as.numeric(symbols[w])+gaps[paste(strsplit(w, "")[[1]][1],"R",sep="")]*Prob[strsplit(w, "")[[1]][2]]+gaps[paste("R",strsplit(w,"")[[1]][2],sep="")]*Prob[strsplit(w, "")[[1]][1]]+(R*Probtrans[w]))))
								   })
						}
						
						yy<-matrix(data = rr, nrow = 4, ncol = 4, byrow = TRUE, dimnames=NULL)
						
						})
				 })
	return(yyy)
	
}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



