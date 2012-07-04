\name{PredictPCA}
\alias{PredictPCA}
\title{ Q-residuals detection of TFBS, using a principal components model}
\description{Performs the detection of a modeled motif in a chormosomics sequence}
\usage{PredictPCA(iicc)}

\arguments{
  \item{iicc}{options described in the MEET program}
}
\details{
The specific options for this program are the model constructed for the motif, the background probability for the studied organism and the DNA query sequence
}
\value{
 output:list of the TFBS found in the studied DNA sequence: Sequence (BS found), pvalue (Pvalue of the given BS) and position (Position within the studied DNA sequence).
}

\references{
Stacklies, Wolfram, Redestig, Henning, Scholz, Matthias, Walther, Dirk, and Selbig, Joachim: pcaMethods a bioconductor package providing PCA methods for incomplete data, Bioinformatics 23(9), volume 23, 2007
}
\author{
Erola Pairo <epairo@ibecbarcelona.eu>
}

\seealso{
ModelPCA, biol.PCA, MEET, detection}
\examples{
data(iicc)
iicc$method<-"PCA"
iicc$parameterIdeal<-2
iicc$model<-ModelPCA(iicc)
iicc$threshold<-0.1
DetectedSequences<-PredictPCA(iicc)
}