\name{redundancy}
\alias{redundancy}

\title{To calculate redundancy
}
\description{
This function calculates the redundancy of random variable X with N possibles states
}
\usage{
redundancy(HX, HXmax, Herror, finite, correction = TRUE)
}
\arguments{
  \item{HX}{A entropy vector}
  \item{HXmax}{Maximum entropy}
  \item{Herror}{Error entropy}
  \item{finite}{Finite Sample Size}
  \item{correction}{If TRUE, considers correction of the finite Sample size}}
\details{
This function depends the correction.redundancy}

\author{
Joan Maynou <joan.maynou@upc.edu>
}
\seealso{
correction.redundancy, correction.entropy, entropy}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)
data(iicc)
HXmax<-iicc$HXmax
HX<-iicc$entropy[[1]]
Factortrans<-iicc$Transcriptionfactor
correction<-correction.entropy(q,p=nrow(Factortrans),long=1,iicc)
Herror<-slot(correction,"Herror")
prob<-probability(TranscriptionFactor,Prob,missing.fun=TRUE)
redundancy(HX,HXmax,Herror,finite=nrow(Factortrans),correction=TRUE)}

