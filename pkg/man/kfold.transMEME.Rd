\name{transMEME}
\alias{transMEME}
\title{
Leave-one-out cross-validation for MEME/MAST through training.matrix aligned with MUSCLE or CLUSTALW.
}
\description{
This function does leave-one-out cross-validation for MEME/MAST.  In this case, a set of nucleotide sequences is lined up MUSCLE and CLUSTALW.  This is main difference between transMEME and MEME.
}
\usage{
transMEME(iicc, TF)
}

\arguments{
  \item{iicc}{
Set of initial conditions for the MEET-package: mode, method, background,alignment,threshold,parameters,Transcriptionfactor,nummotif,lenmotif,sentit,position,missing,vector,gapopen,maxiters,gapextend}
  \item{TF}{A set of nucleotide sequence}
}
\details{
This function needs MEME/MAST software.
}

\references{
T. Bailey and C. Elkan, “Fitting a mixture model by expectation max- imization to discover motifs in biopolymers,” in Proc. 2nd Int. Conf. Intelligent Systems for Molecular Biology, Aug. 1994, pp. 28–36.
}
\author{
Erola Pairó <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{MEET, kfold.PredictInformationTheory, transMEME,MEME, kfold.PredictDivergence, kfold.PCA}
\examples{
data(iicc)
transMEME(iicc,TF="SqDNA.fa")}

