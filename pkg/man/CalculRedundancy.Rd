\name{CalculRedundancy}
\alias{CalculRedundancy}
\title{
CalculRedundancy: To calculate the redundancy 
}
\description{
This function calculates the redundancy (order) of a random variable X with N possible states.}
\usage{
CalculRedundancy(Factortrans, q,iicc)
}
\arguments{
  \item{Factortrans}{ A set of aligned nucleotide sequences}
  \item{q}{Renyi Order}
  \item{iicc}{A list options}
  
}

\author{
Joan Maynou <joan.maynou@upc.edu>}
\seealso{
redundancy, entropy.Shannon,entropy.Renyi, correction.redundancy, correction.entropy, correctionaprox
}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)
data(RenyiOrder)
data(iicc)
Factortrans<-TranscriptionFactor
correction<-correction.entropy(q,p=nrow(Factortrans),long=1,iicc=iicc)
iicc$Herror<-iicc$HXmax<-iicc<-classentropy<-NULL
iicc$Herror<-slot(correction,"Herror")
iicc$classentropy<-"Shannon"
training.set<-TranscriptionFactor
 wind<-probability(training.set,Prob,missing.fun=NULL)
iicc$HXmax<-H<-switch(iicc$classentropy, "Shannon"=entropy.Shannon(wind),"Renyi"=entropy.Renyi(iicc$background,q))
CalculRedundancy(Factortrans,q,iicc)
}
