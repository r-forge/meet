\name{entropy.joint}
\alias{entropy.joint}
\title{ To calculate joint entropy}
\description{
This function calculates the joint entropy between two variables X and Y with N possible state. 
}
\usage{
entropy.joint(pmXY, q)
}

\arguments{
  \item{pmXY}{ Joint probability}
  \item{q}{ Rényi Order}
  \item{q}{ A list of options}
}
\details{If q is equal 1, Rényi joint entropy converges to Shannon joint entropy}
\author{Joan Maynou <joan.maynou@upc.edu>}
\seealso{entropy}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)
data(RenyiOrder)
data(iicc)

training.set<-TranscriptionFactor

prob_parella<-probabilitat.conjunta(Prob)
pmXY<-joint.probability(training.set, Prob, prob_parella)

entropy.joint(pmXY,q,iicc)}

