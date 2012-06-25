\name{MEET}
\alias{MEET}
\title{
MEET: Motif Elements Estimation Toolkit}
\description{
MEET (Motif Elements Estimation Toolkit) is a R-package that integrates a set of computational algorithms for the detection of Transcription Factor Binding Sites (TFBS)}
\usage{
MEET(TF, seqin, alg, method, system, org, vector, num_motif, len_motif, direction, threshold, order, model,position, mv, gapopen, maxiters, gapextend,optionsFile)
}

\arguments{
  \item{TF}{ A set of nucleotide sequences}
  \item{nameTF}:{Transcription Factor name}
  \item{seqin}{Candidate sequence}
  \item{alg}{A set of Multiple Sequence Alignment}
  \item{method}{A set of motif discovery algorithms}
  \item{system}{Training or detection}
  \item{org}{Background organism}
  \item{vector}{Characteristic parameters methodfor leave-one-out cross-validation.}
  \item{num_motif}{Number of motif}
  \item{len_motif}{Length of motif}
  \item{direction}{Forward, reverse or both}
  \item{threshold}{P-value}
  \item{order}{Rényi Order}
  \item{model}{model}
  \item{position}{Binding site position for training}
  \item{mv}{missing values}
  \item{gapopen}{The gap open score}
  \item{maxiters}{Maximum number of iterations}
  \item{gapextend}{The gap extend score}
  \item{optionsFile}{Path for MEME/MAST, clustalx and muscle}
}
 


\details{
This function need the next packages: seqinr, fields, pcaMethods, Matrix, ROCR, Hmisc, KernSmooth. Moreover, it needs the next software: MEME/MAST Version 4.4.0, MATCH Version 1.0, MDscan, ClustalW and Muscle Version 3.8.}


\examples{
data(organism)
results<-MEET(TF="SqDNA.fa",seqin="DNA4.afa",alg="CLUSTALW",method="entropy",system="detection",org="Saccharomyces cerevesiae",vector=1,num_motif=2,len_motif=12,sentit="b",threshold=0.001,order=1,model=NULL,position=501,mv=NULL,gapopen=NULL,maxiters=NULL,gapextend=NULL,optionsFile)}
