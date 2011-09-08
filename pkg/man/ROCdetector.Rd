\name{ROCdetector}
\alias{ROCdetector}
\title{To choose the best paramater for a model}
\description{This function selects the best paramater for a model.  Output's ROCdetector are: Area under curve Roc, Roc curve performance, the best parameters and the model.
}
\usage{
ROCdetector(Scores, labels, iicc)
}

\arguments{
  \item{Scores}{Output Scores validation}
  \item{labels}{Output Labels validation}
  \item{iicc}{ Set of initial conditions for the MEET-package: mode, method, background,alignment,threshold,parameters,Transcriptionfactor,nummotif,lenmotif,sentit,position,missing,vector,gapopen,maxiters,gapextend.}
}
\details{
This functions needs the ROCR package.}

\author{
Erola Pairo <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>
}

\examples{
data(iicc)
ROCdetector(Scores, labels, iicc)
}

