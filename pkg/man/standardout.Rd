\name{standardout}
\alias{standardout}
\title{Standard output detector}
\description{
This function writes output detector (ITEME, MEME, transMEME and MDscan) in standard format.
}
\usage{
standardout(Rdetector, iicc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Rdetector}{Output detector for ITEME, MEME, transMEME and MDscan}
  \item{iicc}{Set of initial conditions for the MEET-package: mode, method, background,alignment,threshold,parameters,Transcriptionfactor,nummotif,lenmotif,sentit,position,missing,vector,gapopen,maxiters,gapextend}
}
\details{Rdetector is a list of numerical vectors.}

\author{
Joan Maynou <joan.maynou@upc.edu>
}
\examples{
data(iicc)
pathMEET<-system.file("exdata",package="MEET")
Rdetector<-kfold.PCA(iicc,TF=paste(pathMEET,"AP1.fa",sep="/"))
standardout(Rdetector,iicc)}
