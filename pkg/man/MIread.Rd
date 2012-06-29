\name{MIread}
\alias{MIread}
\title{To read PredictDivergence values
}
\description{ This function reads divergence values saved in memory.  From the divergence values, MIread calculates the variation of the total divergence
when the candidate sequence is added to the set.}
\usage{
MIread(training.set,val.set,iicc)
}

\arguments{
\item{training.set}{ A set of nucleotide sequences}
\item{val.set}{A candidate sequence}
\item{iicc}{A set of inicial conditions for the MEET-package}
 
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
MImemory}

\examples{
library(seqinr)
write.fasta <- get("write.fasta",pos="package:seqinr")
read.fasta <- get("read.fasta",pos="package:seqinr")
data(iicc)
pathMEET<-system.file("inst/exdata",package="MEET")
TF=paste(pathMEET,"AP1.fa",sep="/")	
x<-read.fasta(file=TF)
m<-1
if (iicc$alignment!="NONE"){ 	
   y<-x[-m]
   write.fasta(sequences=y,names=c(1:length(x)),file.out="factor.fa",open="w")
   training.set<-switch(iicc$alignment, "CLUSTALW"=align.clustalw(filein="factor.fa", fileout="background.fa",call=iicc$call.clustalw), "MUSCLE"=align.muscle(filein="factor.fa", fileout="background.fa", gapopen=iicc$gapopen, maxiters=iicc$maxiters, gapextend=iicc$gapextend,call=iicc$call.muscle),"MEME"=align.MEME(filein="factor.fa",fileout="background.fa",iicc),"NONE"=Read.aligned(TF), stop("Alignment method not included"))
    if(iiccs$alignment=="MEME"){
		factor<-factor[[1]]
		}
}else{
	x<-factor[-m,]
	training.set<-x
}
iicc <- detector_2nOrdre_init(training.set, val.set=seq.rand, iicc,i)
MImemory(iicc,training.set)
val.set<-c("A","T","C","C","G","T","A","T","T","A","C","G")
MIread(training.set, val.set, iicc)
}

