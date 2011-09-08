\name{joint.probability}
\alias{joint.probability}

\title{
Joint Porbability
}
\description{

This function calculates the joint probability of each base-couple  among two positions of the training.set
}
\usage{
joint.probability(training.set, Prob, prob_parella)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{training.set}{ A set of aligned nucleotide sequence}
  \item{Prob}{ Background probability of each base within genome}
  \item{prob_parella}{Background probability of correlation among bases within genome}
}

\author{Joan Maynou <joan.maynou@upc.edu>}

\seealso{ probability, probIdem, probtransicio}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)

training.set<-TranscriptionFactor

prob_parella<-probabilitat.conjunta(Prob)
pmXY<-joint.probability(training.set, Prob, prob_parella)}





