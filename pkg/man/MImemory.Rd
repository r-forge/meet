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
data(iicc)
data(BackgroundOrganism)
training.set<-iicc$Transcriptionfactor
val.set<-sample(c('A','T','C','G'),ncol(training.set), replace=TRUE,Prob)
res<-detector_2nOrdre_init(training.set, val.set, iicc)
iicc<-c(iicc,res)
iicc$parametersIdeal<-1
MImemory(iicc,training.set)}


