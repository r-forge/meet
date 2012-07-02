\name{detector_2nOrdre_init}
\alias{detector_2nOrdre_init}
\title{  Detection of Transcription Factor Binding Sites Through Parametric PredictDivergence
}
\description{
This detection algorithm is based on Information Theory.  Specifically, this method uses a parametric divergence.  This algorithm evaluates the variation on the total Renyi entropy of a set of sequences assuming correlation between positions in the bindng sequence.  When a candidate sequence is assumed to be a a true binding site belonging to the set.The measurement of the variation of the total redundancy when the candidate sequence is added to the set has been computed by using the difference between the redundancy profile.
}
\usage{
detector_2nOrdre_init(training.set, val.set, iicc)
}
\arguments{
  \item{training.set}{A set of aligned nucleotide sequences}
  \item{val.set}{A candidate sequence}
  \item{iicc}{A set of initial conditions for the MEET-package (mode,
  		 method, background,alignment,threshold,parameters,TranscriptionFactor,nummotif,lenmotif,sentit,position,missing,vector,
		 gapopen,maxiters,gapextend).
}
  
}
\details{
This function calculates of initials conditions for divergence method.
}

\references{ J. Maynou, M. Vallverdu, F. Claria, J.J. Gallardo-Chacon, P. Caminal and A. Perera,Transcription Factor Binding Site Detection through Position Cross-Mutual Information variability analysis. 31st Annual International Conference of the IEEE Engineering in Medicine and Biology Society.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
detector_1rOrdre_diff
}
\examples{
data(iicc)
data(TranscriptionFactor)
data(BackgroundOrganism)
training.set<-TranscriptionFactor
val.set<-sample(c('A','T','C','G'),ncol(TranscriptionFactor), replace=TRUE,Prob)

detector_2nOrdre_init(training.set, val.set, iicc)}
