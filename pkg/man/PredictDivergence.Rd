\name{PredictDivergence}
\alias{PredictDivergence}
\title{
A set of functions for detection of Transcription Factor Binding Sites by means of Divergence}
\description{
PredictDivergence contains a set of functions for detection of Transcription Factor Binding sites through parametric divergence.  This algorithm evaluates the variation on the total Rényi entropy of a set of sequences assuming correlation between positions in the bindng sequence.  
}
\usage{
PredictDivergence(iicc, TF)
}
\arguments{
  \item{iicc}{A set of inicial conditions for the MEET-package (mode, method, background, alignment, threshold, parameters, Transcriptionfactor, nummotif, lenmotif, sentit, position, missing, vector, gapopen, maxiters, gapextend)}
  \item{TF}{A set of nucleotide sequences in FASTA format}
}
\details{ This function integrates the Mutual Information (Rényi order equal 1) and parametric divergence (Rényi order different 1)
}
\references{ J. Maynou, M. Vallverdú, F. Clarià, J.J. Gallardo-Chacón, P. Caminal and A. Perera," Transcription Factor Binding Site Detection through Position Cross-Mutual Information variability analysis". 31st Annual International Conference of the IEEE Engineering in Medicine and Biology Society.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}
\seealso{
PredictEntropy, PredictMEME, PredictMDscan, PredictPCA and PredictMATCH
}
\examples{
data(iicc)
pathMEET<-system.file("data",package="MEET")
PredictDivergence(iicc,TF=paste(pathMEET,"AP1.fa",sep="/"))
}

