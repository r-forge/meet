\name{entropy.joint}
\alias{entropy.joint}
\title{ To calculate joint entropy}
\description{
This function calculates the joint entropy between two variables X and Y with N possible state. 
}
\usage{
entropy.joint(pmXY,q,iicc)
}

\arguments{
  \item{pmXY}{ Joint probability}
  \item{q}{Renyi Order}
  \item{iicc}{ A list of options}
}
\details{If q is equal 1, Renyi joint entropy converges to Shannon joint entropy}
\author{Joan Maynou <joan.maynou@upc.edu>}
\seealso{entropy}
\examples{
data(BackgroundOrganism)
data(RenyiOrder)
data(iicc)
training.set<-iicc$Transcriptionfactor
prob_parella<-probability.couple(Prob)
pmXY<-joint.probability(training.set, Prob, prob_parella)
entropy.joint(pmXY,q,iicc)
}

