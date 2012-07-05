\name{divergence.Renyi}
\alias{divergence.Renyi}
\title{Renyi divergence}
\description{
This function calculates parametric divergence (Renyi Order different 1)
}
\usage{
divergence.Renyi(training.set, pmX, pmXY, q, correction)
}
\arguments{
  \item{training.set}{ A set of aligned nucleotide sequences}
  \item{pmX}{ Relative frequency of a nucleotide at a motif position (position independency model) as an estimation of the probability of this fact.}
  \item{pmXY}{To extend to pmX to include of correlated positions (position dependency model)}
 
  \item{q}{Renyi Order}
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
data(iicc)
q<-0.5
training.set<-TranscriptionFactor
correction<-correction.entropy(q,p=nrow(training.set),long=1,iicc)
HXmax<-iicc$HXmax
pmX<-probability(training.set,Prob,missing.fun=TRUE)
prob_parella<-probability.couple(Prob)
pmXY<-joint.probability(training.set, Prob, prob_parella)
HXY<-entropy.joint(pmXY,q,iicc)
divergence.Renyi(training.set,pmX,pmXY,q,correction)
}

