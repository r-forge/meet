\name{entropy.Shannon}
\alias{entropy.Shannon}
\title{
Shannon Entropy
}
\description{
This function calculates the Shannon's entropy of the variable X with N possible states
}
\usage{
entropy.Shannon(wind)
}

\arguments{
  \item{wind}{Probability matrix (4xm).}}
\details{ wind parameter is calculated by means of probability function}

\author{
Joan Maynou <joan.maynou@upc.edu>}
\seealso{
entropy.max, entropy. conjunta, probability, entropy.corrected }
\examples{
 data(TranscriptionFactor)
 data(BackgroundOrganism)
 training.set<-TranscriptionFactor
 wind<-probability(training.set,Prob,missing.fun=TRUE)
 entropy.Shannon(wind)}

