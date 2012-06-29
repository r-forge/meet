\name{kfold.MATCH}
\alias{kfold.MATCH}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
MATCH training process
}
\description{
For a vector of Core cut values this function calculates returns a matrix of Similarities and labels indicating if a sequence position is a binding site or not. To calculate the Similartiy a leave-one-out cross training model is used. With the utput of this function a ROC curve can be calculated for each Core Similarity and the results can be compared.
}
\usage{
kfold.MATCH(iicc, Seqin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{iicc}{
List of options described in the MEET program
}
  \item{Seqin}{
DNA sequence }
}

\value{
For each num
}
\references{
A.E. Kel , E. Gößling , I. Reuter , E. Cheremushkin , O.V. Kel-Margoulis , and E. Wingender
MATCHTM: a tool for searching transcription factor binding sites in DNA sequences 
Nucl. Acids Res. 31: 3576-3579.}
\author{
Erola Pairó <epairo@ibecbarcelona.eu>
}
\seealso{
Match, MEET
}
\examples{
data(iicc)
data(TranscriptionFactor)
iicc$method<-"MATCH"

iicc$vector<-c(0.5, 0.8)
library(seqinr)
#writing sequences to model in fasta format
write.fasta <- get("write.fasta",pos="package:seqinr")
write.fasta(sequences=TranscriptionFactor,names=c(1:length(TranscriptionFactor)),file.out="Sq.fa",open="w") 
kfold.MATCH(iicc, "Sq.fa")

}
