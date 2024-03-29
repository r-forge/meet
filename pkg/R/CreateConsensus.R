CreateConsensus <- function(alignedSequences,iicc){
	
	if (iicc$alignment!="MEME"){
		alignedSequences<-as.matrix(alignedSequences)
	    SeqCons<-con(alignedSequences, method= c("IUPAC"))
	}else{
		num_motif<-iicc$nummotif;len_motif<-iicc$lenmotif
		call.meme=iicc$call.meme
		system(paste(paste(paste(paste(call.meme,alignedSequences,sep=" "),"-oc memeout -dna -mod anr -w", len_motif,sep=" "), "-nmotifs", sep=" "),num_motif,sep=" "))
		
		resultat<-readLines(paste(getwd(),"/memeout/meme.txt", sep="", collapse=NULL))
		y <- readMEME(resultat, num_motif)
		SeqCons<-consensus<-y[[length(y)]]
	}
	
  SeqCons
}

