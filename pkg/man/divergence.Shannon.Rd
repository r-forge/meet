\name{divergence.Shannon}
\alias{divergence.Shannon}
\title{
Divergencia.Shannon: Mutual Information
}
\description{
This function calculates Mutual Information (Rényi Order equal 1) by means of Kullback-Leibler divergence}
\usage{
divergence.Shannon(training.set, prob_parella, H, HXY, HXmax, q, correction)
}
\arguments{
  \item{training.set}{A set of aligned nucleotide sequences}
  \item{H}{Entropy}
  \item{HXY}{Joint Entropy}
  \item{correction}{Correction of the Finite Sample Size Effect}
}
\details{Rényi Order has to be equal 1.}

\references{ J. Maynou, M. Vallverdú, F. Clarià, J.J. Gallardo-Chacón, P. Caminal and A. Perera," Transcription Factor Binding Site Detection through Position Cross-Mutual Information variability analysis". 31st Annual International Conference of the IEEE Engineering in Medicine and Biology Society.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
divergence.Renyi, PredictDivergence, kfold.divergence
}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)
q<-1

training.set<-TranscriptionFactor
correction<-correction.entropy(q,p=nrow(training.set),long=1,Prob)
HXmax<-entropy.max(Prob,q)
pmX<--probability(training.set,Prob,missing.fun=NULL)
prob_parella<-probabilitat.conjunta(Prob)
entropy<-get("entropy",pos="package:MEET") 
H<-entropy(pmX,q)
pmXY<-joint.probability(training.set, Prob, prob_parella)
HXY<-entropy.joint(pmXY,q)
divergence.Shannon(training.set,H,HXY,correction)}

