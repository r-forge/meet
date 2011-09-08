\name{Hmemory}
\alias{Hmemory}
\title{Library of entropy values
}
\description{ This function calculates entropy  values from all combinations possibles of nucleotides given a matrix of TFBS sequences. }
\usage{
Hmemory(iicc, training.set)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package}
  \item{training.set}{ A set of nucleotide sequences}
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
Hread}

\examples{
library(seqinr)
write.fasta <- get("write.fasta",pos="package:seqinr")
read.fasta <- get("read.fasta",pos="package:seqinr")
data(iicc)
filein="setTF.fa" 	

 factor<-switch(iicc$alignment, "CLUSTALW"=align.clustalw(filein="setTF.fa", fileout="Sq.fa", call=iicc$call.clustalw), "MUSCLE"=align.muscle(filein="setTF.fa", fileout="Sq.fa", gapopen=iicc$gapopen, maxiters=iicc$maxiters, gapextend=iicc$gapextend, call=iicc$call.muscle),"MEME"=align.MEME(filein="setTF.fa",fileout="Sq.fa",iicc),"NONE"=Read.aligned("setTF.fa"), stop("Alignment method not included"))
		
q<-iicc$q<-iicc$correction_1rOrdre<-iicc$Herror<-iicc$HXmax<-iicc$Redundancia_corregida<-iicc$ErrorHX<-iicc$classentropy<-iicc$Entropy<-NULL
q<-iicc$q<-iicc$vector[i]					  
if (q==1) {iicc$classentropy<-"Shannon"
		}else{
		iicc$classentropy<-"Renyi"  
	  }
   iicc$correction_1rOrdre <- correction.entropy(q,length(x),1,iicc)
   iicc$Herror<-slot(iicc$correction_1rOrdre,"Herror")
   iicc$HXmax<-	 iicc$Herror[length(x)]
   iicc$Redundancia_corregida<-CalculRedundancy(factor,q,iicc)
   iicc$ErrorHX<-slot(iicc$correction_1rOrdre,"sderror")[length(x)]
Hmemory(iicc,factor)
}

