\name{CalculRedundancy}
\alias{CalculRedundancy}
\title{
CalculRedundancy: To calculate the redundancy 
}
\description{
This function calculates the redundancy (order) of a random variable X with N possible states.}
\usage{
CalculRedundancy(Factortrans, Prob, q, Herror, HXmax)
}
\arguments{
  \item{Factortrans}{ A set of aligned nucleotide sequences}
  \item{q}{Rényi Order}
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
correction<-correction.entropy(q,p=nrow(Factortrans),long=1,Prob)
iicc$Herror<-iicc$HXmax<-iicc<-classentropy<-NULL
iicc$Herror<-slot(correction,"Herror")
iicc$classentropy<-"Shannon"
iicc$HXmax<-H<-switch(iicc$classentropy, "Shannon"=entropy.Shannon(iicc$background),"Renyi"=entropy.Renyi(iicc$background,q))
CalculRedundancy(Factortrans,q,iicc)}
