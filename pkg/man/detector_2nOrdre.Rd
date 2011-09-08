\name{detector_2nOrdre}
\alias{detector_2nOrdre}
\title{Detection of Transcription Factor Binding Sites Through Parametric PredictDivergence}
\description{
This detection algorithm is based on Information Theory.  Specifically, this method uses a parametric divergence.  This algorithm evaluates the variation on the total Rényi entropy of a set of sequences assuming correlation between positions in the bindng sequence.  When a candidate sequence is assumed to be a a true binding site belonging to the set.The measurement of the variation of the total redundancy when the candidate sequence is added to the set has been computed by using the difference between the redundancy profile.
}
\usage{
detector_2nOrdre(training.set, val.set, options)
}

\arguments{
  \item{training.set}{A set of aligned nucleotide sequences
}
  \item{val.set}{A candidate sequence}
  \item{iicc}{A set of inicial conditions for the MEET-package (mode, method, background, alignment, threshold, parameters, Transcriptionfactor, nummotif, lenmotif, sentit, position, missing, vector, gapopen, maxiters, gapextend) and the initial conditions for the divergence method (PredictDivergence, correction 1rOrdre, Exterior product entropic profile (Mperfil), maximun entropy, entropy and Rényi order)

}
}
\details{Options parameter has to contain the initial conditions for the divergence method: divergence matrix (D), maximum entropy (HXmax),  correction entropy and redundancy from the Finite Sample Size Effect, exterior product entropic profile (Mperfil), entropy (HX) and the Rényi order.}

\references{J. Maynou, M. Vallverdú, F. Clarià, J.J. Gallardo-Chacón, P. Caminal and A. Perera," Transcription Factor Binding Site Detection through Position Cross-Mutual Information variability analysis". 31st Annual International Conference of the IEEE Engineering in Medicine and Biology Society.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}
\seealso{
detector_1rOrdre_diff, MEME, MDscan, Q-residuals and MATCH
}
\examples{
data(iicc)
data(TranscriptionFactor)
data(BackgroundOrganism)
training.set<-TranscriptionFactor
val.set<-sample(c('A','T','C','G'),ncol(training.set), replace=TRUE,Prob)
options<-detector_2nOrdre_init(training.set, val.set, iicc,i=1)
out<-detector_2nOrdre(training.set, val.set, iicc)
}

