\name{divergence.Shannon}
\alias{divergence.Shannon}
\title{
Divergencia.Shannon: Mutual Information
}
\description{
This function calculates Mutual Information (Renyi Order equal 1) by means of Kullback-Leibler divergence}
\usage{
divergence.Shannon(training.set, H, HXY,correction)
}
\arguments{
  \item{training.set}{A set of aligned nucleotide sequences}
  \item{H}{Entropy}
  \item{HXY}{Joint Entropy}
  \item{correction}{Correction of the Finite Sample Size Effect}
}
\details{Renyi Order has to be equal 1.}

\references{ J. Maynou, M. Vallverdu, F. Claria, J.J. Gallardo-Chacon, P. Caminal and A. Perera, Transcription Factor Binding Site Detection through Position Cross-Mutual Information variability analysis. 31st Annual International Conference of the IEEE Engineering in Medicine and Biology Society.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
divergence.Renyi, PredictDivergence, kfold.divergence
}
\examples{
data(BackgroundOrganism)
data(iicc)
HXmax<-iicc$HXmax
H<-iicc$Entropy[[1]]
q<-1
training.set<-iicc$Transcriptionfactor
correction<-correction.entropy(q,p=nrow(training.set),long=1,iicc)
pmX<-probability(training.set,Prob,missing.fun=TRUE)
prob_parella<-probability.couple(Prob)
pmXY<-joint.probability(training.set, Prob, prob_parella)
HXY<-entropy.joint(pmXY,q,iicc)
divergence.Shannon(training.set,H,HXY,correction)
}

