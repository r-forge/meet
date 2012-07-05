\name{diffInstructions}
\alias{diffInstructions}
\title{The measurement of the variation of the total redundancy
}
\description{
This function measures the variation of the total redundancy.}
\usage{
diffInstructions(training.set, HX, HXmax, Herror, Redundancia_corregida)
}
\arguments{
  \item{training.set}{A set of aligned nucleotide sequences}
  \item{HX}{Entropy}
  \item{HXmax}{Maximum entropy}
  \item{Herror}{Entropy error.  Correction of the Finite Sample Size Effect}
  \item{Redundancia_corregida}{ Redundancy correction of the Finite Sample Size Effect}
}
\details{This function depends on detector_1erOrdre_diff}

\references{
J. Maynou, J.-J. Gallardo-Chacon, M. Vallverdu, P. Caminal, and A. Perera, Computational detection of transcription factor binding sites through differential renyi entropy, Information Theory, IEEE Transactions on, vol. 56, no. 2, pp. 734, feb. 2010.
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\examples{
data(iicc)
training.set<-iicc$Transcriptionfactor
q<-1
correction<-correction.entropy(q,p=nrow(training.set),long=1,iicc)
Herror<-slot(correction,"Herror")
HXmax<-iicc$HXmax
prob<-probability(training.set,Prob,missing.fun=NULL)
HX<-iicc$Entropy[[1]]
Redundancia_corregida<-CalculRedundancy(training.set,q,iicc)
diffInstructions (training.set,HX,HXmax,Herror,Redundancia_corregida)
}

