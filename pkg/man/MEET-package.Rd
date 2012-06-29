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
  \item{vector}{ A set of Rényi Order (ITEME method) for leave-one-out cross-training}
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

\author{
Erola Pairó <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}

\examples{

pathMEET<-system.file("data",package="MEET")
TrainingResult<-MEET(TF=paste(pathMEET,"AP1.fa",sep="/"), seqin=paste(pathMEET,"DNAhomo.fa",sep="/"),alg="NONE",mode="training",org="Homo sapiens", method="Qresiduals",vector=c(1:8)) }
