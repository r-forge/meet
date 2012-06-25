\name{divergence.Renyi}
\alias{divergence.Renyi}
\title{Rényi divergence}
\description{
This function calculates parametric divergence (Rényi Order different 1)
}
\usage{
divergence.Renyi(training.set, pmX, pmXY, q, correction)
}
\arguments{
  \item{training.set}{ A set of aligned nucleotide sequences}
  \item{pmX}{ Relative frequency of a nucleotide at a motif position (position independency model) as an estimation of the probability of this fact.}
  \item{pmXY}{To extend to pmX to include of correlated positions (position dependency model)}
 
  \item{q}{Rényi Order}
  \item{correction}{Correction of the Finite Sample Size Effect}
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
divergence.Shannon, PredictDivergence
}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)
data(RenyiOrder)

training.set<-TranscriptionFactor
correction<-correction.entropy(q,p=nrow(training.set),long=1,Prob)
HXmax<-entropy.max(Prob,q)
pmX<--probability(training.set,Prob,missing.fun=NULL)
prob_parella<-probabilitat.conjunta(Prob)
entropy<-get("entropy",pos="package:MEET") 
H<-entropy(pmX,q)
pmXY<-joint.probability(training.set, Prob, prob_parella)
HXY<-entropy.joint(pmXY,q)
divergence.Renyi(training.set,pmX,pmXY,q,correction)
}

