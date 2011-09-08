\name{MEET-package}
\alias{MEET-package}
\alias{MEET}
\docType{package}
\title{MEET: Motif Elements Estimation Toolkit}
\description{
MEET (Motif Elements Estimation Toolkit) is a R-package that integrates a set of computational algorithms for the detection of Transcription Factor Binding Sites (TFBS).}
\details{
\tabular{ll}{
Package: \tab MEET\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-08-20\cr
License: \tab GPL(>=2)\cr
LazyLoad: \tab yes\cr
	  }
}

\keyword{ package, binding sites, gene regulation, motif detection, sequence analysis, transcription factor}

\arguments{
  \item{TF}{ A set of nucleotide sequences}
  \item{seqin}{Candidate sequence}
  \item{alg}{A set of Multiple Sequence Alignment}
  \item{method}{A set of motif discovery algorithms}
  \item{system}{Training or detection}
  \item{org}{Background organism}
  \item{vector}{ A set of Rényi Order (ITEME method) for leave-one-out cross-validation}
  \item{num_motif}{Number of motif}
  \item{len_motif}{Length of motif}
  \item{direction}{Forward, reverse or both}
  \item{threshold}{P-value}
  \item{order}{Rényi Order}
  \item{position}{Binding site position for training}
  \item{mv}{missing values}
  \item{gapopen}{The gap open score}
  \item{maxiters}{Maximum number of iterations}
  \item{gapextend}{The gap extend score}
 
}
\details{
This function need the next packages: seqinr, fields, pcaMethods, Matrix, ROCR, Hmisc, KernSmooth. Moreover, it needs the next software: MEME/MAST Version 4.4.0, MATCH Version 1.0, MDscan, ClustalW and Muscle Version 3.8.}


\author{
Erola Pairó <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>
}

\examples{
data(organism)
results<-MEET(TF="SqDNA.fa",seqin="DNA4.afa",alg="CLUSTALW",method="Entropy",system="detection",org="Saccharomyces cerevesiae",vector=1,num_motif=2,len_motif=12,sentit="b",threshold=0.001,order=1,position=501,mv=NULL,gapopen=NULL,maxiters=NULL,gapextend=NULL,xlim=NULL,errorbarby=NULL,avg=NULL)}
