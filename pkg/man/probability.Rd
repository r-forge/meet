\name{probability}
\alias{probability}
\title{
Probability
}
\description{
This function calculates the probability of random varible with N states considering missing values.
}
\usage{
probability(wind, Prob, missing.fun)
}
\arguments{
  \item{wind}{A set of nucleotide aligned sequences}
  \item{Prob}{Probability of each base within genome}
  \item{missing.fun}{TRUE Missing values}
  }

\author{
Joan Maynou <joan.maynou@upc.edu>}

\seealso{
joint.probability, probIdem, probtransicio
}
\examples{

data(TranscriptionFactor)
data(BackgroundOrganism)
wind<-TranscriptionFactor
missing.fun<-TRUE
probability(wind,Prob,missing.fun)
}

