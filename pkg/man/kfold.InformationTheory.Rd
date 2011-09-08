\name{kfold.PredictInformationTheory}
\alias{kfold.PredictInformationTheory}

\title{
Leave-one-out cross-validation for Rényi entropy (ITEME)
}
\description{
Given a training sequence set, the optimal value for Rényi entropy has been estimated by means of leave-one-out cross-validation from q-value set. For each q-value, the ROC curve has been calculated. From this results, the optimal q-value has been considered according to the area under convex surface maximum.
}
\usage{
kfold.PredictInformationTheory(iicc, TF)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package (mode, method, background, alignment, threshold, parameters, Transcriptionfactor, nummotif, lenmotif, sentit, position, missing, vector, gapopen, maxiters, gapextend)}
  \item{TF}{ A set of nucleotide sequences}
}
\details{
 This function integrates the Shannon entropy for Rényi Order equal 1. Moreover, it contains a set of function for the detection of transcription factor binding sites:correction.entropy.R, correction.redundancy.R, entropy.R entropy.max.R, entropy.corrected.R, probability.R, CalculRedundancy.R, diff.instructions.R, redundancy.R, missing.fun.R, ROC.R, detector_1rOrdre_diff.R, pvalue.R.
}

\references{
J. Maynou, J.-J. Gallardo-Chacon, M. Vallverdu, P. Caminal, and A. Perera, “Computational detection of transcription factor binding sites through differential rényi entropy,” Information Theory, IEEE Transactions on, vol. 56, no. 2, pp. 734 –741, feb. 2010.
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
kfold.PredictDivergence, MEME, MDscan, kfold.MATCH and kfold.PCA
}
\examples{ 
data(iicc)
kfold.PredictInformationTheory(iicc,TF="SqDNA.fa")}

