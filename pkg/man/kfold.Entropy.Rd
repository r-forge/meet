\name{kfold.Entropy}
\alias{kfold.Entropy}

\title{
Leave-one-out cross-training for Renyi entropy (ITEME)
}
\description{
Given a training sequence set, the optimal value for Renyi entropy has been estimated by means of leave-one-out cross-training from q-value set. For each q-value, the ROC curve has been calculated. From this results, the optimal q-value has been considered according to the area under convex surface maximum.
}
\usage{
kfold.Entropy(iicc, TF)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package (mode, method, background, alignment, threshold, parameters, Transcriptionfactor, nummotif, lenmotif, sentit, position, missing, vector, gapopen, maxiters, gapextend)}
  \item{TF}{ A set of nucleotide sequences}
}
\details{
 This function integrates the Shannon entropy for Renyi Order equal 1. Moreover, it contains a set of function for the detection of transcription factor binding sites:correction.entropy.R, correction.redundancy.R, entropy.R entropy.max.R, entropy.corrected.R, probability.R, CalculRedundancy.R, diff.ructions.R, redundancy.R, missing.fun.R, ROC.R, detector_1rOrdre_diff.R, pvalue.R.
}

\references{
J. Maynou, J.-J. Gallardo-Chacon, M. Vallverdu, P. Caminal, and A. Perera, Computational detection of transcription factor binding sites through differential renyi entropy, Information Theory, IEEE Transactions on, vol. 56, no. 2, pp. 734, feb. 2010.
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
kfold.Divergence, kfold.MEME, kfold.MDscan, kfold.MATCH and kfold.PCA
}
\examples{ 
data(iicc)
pathMEET<-system.file("exdata",package="MEET")
kfold.Entropy(iicc,TF=paste(pathMEET,"AP1.fa",sep="/"))
}

