\name{MImemory}
\alias{MImemory}
\title{Library of PredictDivergence values
}
\description{ This function calculates divergence values from all combinations possibles of a couple of nucleotides given a matrix of TFBS sequences. The divergence values is calculated only by TFBS positions correlated. }
\usage{
MImemory(iicc, training.set)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package}
  \item{training.set}{ A set of nucleotide sequences}
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
MIread}

\examples{
library(seqinr)
write.fasta <- get("write.fasta",pos="package:seqinr")
read.fasta <- get("read.fasta",pos="package:seqinr")
data(iicc)
pathMEET<-system.file("data",package="MEET")
TF=paste(pathMEET,"AP1.fa",sep="/")
x<-read.fasta(file=TF)
m<-1
if (iicc$alignment!="NONE"){ 	
   y<-x[-m]
   write.fasta(sequences=y,names=c(1:length(x)),file.out="factor.fa",open="w")
   training.set<-switch(iicc$alignment, "CLUSTALW"=align.clustalw(filein="factor.fa", fileout="background.fa",call=iicc$call.clustalw), "MUSCLE"=align.muscle(filein="factor.fa", fileout="background.fa", gapopen=iicc$gapopen, maxiters=iicc$maxiters, gapextend=iicc$gapextend,call=iicc$call.muscle),"MEME"=align.MEME(filein="factor.fa",fileout="background.fa",iicc),"NONE"=Read.aligned(TF), stop("Alignment method not included"))
    if(iicc$alignment=="MEME"){
		factor<-factor[[1]]
		}
}else{
	x<-factor[-m,]
	training.set<-x
}
iicc <- detector_2nOrdre_init(training.set, val.set=seq.rand, iicc,i)
MImemory(iicc,training.set)
}

