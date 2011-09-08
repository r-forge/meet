\name{kfold.PredictDivergence}
\alias{kfold.PredictDivergence}
\title{
Leave-one-out cross-validation for parametric divergence (ITEME).
}
\description{
Given a training sequence set, the optimal value for parametric divergence has been estimated by means of leave-one-out cross-validation from q-value set. For each q-value, the ROC curve has been calculated. From this results, the optimal q-value has been considered according to the area under convex surface maximum.
}
\usage{
kfold.PredictDivergence(iicc, TF)
}

\arguments{
  \item{iicc}{A set of inicial conditions for the MEET-package (mode, method, background, alignment, threshold, parameters, Transcriptionfactor, nummotif, lenmotif, sentit, position, missing, vector, gapopen, maxiters, gapextend)}
  \item{TF}{ A set of nucleotide sequences}
}
\details{
  This function integrates the Mutual information (Rényi Order equal 1) and parametric divergence (Rényi Order different 1). Moreover, it contains a set of function for the detection of transcription factor binding sites:correction.entropy.R, correction.redundancy.R, entropy.R entropy.max.R, entropy.corrected.R, probability.R, CalculRedundancy.R, diff.instructions.R, redundancy.R, missing.fun.R, ROC.R, detector_2nOrdre.R, pvalue.R.
}
\references{ J. Maynou, M. Vallverdú, F. Clarià, J.J. Gallardo-Chacón, P. Caminal and A. Perera," Transcription Factor Binding Site Detection through Position Cross-Mutual Information variability analysis". 31st Annual International Conference of the IEEE Engineering in Medicine and Biology Society.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}
\seealso{
kfold.PredictInformationTheory, MEME, MDscan, kfold.MATCH and kfold.PCA
}
\examples{
data(iicc)
kfold.PredictDivergence(iicc,TF="SqDNA.fa")
}

