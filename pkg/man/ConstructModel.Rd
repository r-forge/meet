\name{ConstructModel}
\alias{ConstructModel}
\title{
A set of functions for training of motif discovery algorithms.
}
\description{
This function contains a set of functions for training of motif discovery algorithms. Specifically, the motif discovery algorithms are ITEME, MEME, MDscan, MATCH and Qresiduals.}
\usage{
ConstructModel(iicc, TF)
}

\arguments{
  \item{iicc}{Set of initial conditions for the MEET-package: mode, method, background,alignment,threshold,parameters,Transcriptionfactor,nummotif,lenmotif,sentit,position,missing,vector,gapopen,maxiters,gapextend}
  \item{TF}{A set of nucleotide sequences}
}

\details{This function has two output: training scores and ROC curve.}

\author{
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>}
\seealso{
MEET, detection}
\examples{
data(iicc)
pathMEET<-system.file("exdata",package="MEET")
ConstructModel(iicc,TF=paste(pathMEET,"AP1.fa",sep="/"))}

