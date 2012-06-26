\name{motif.mast}
\alias{motif.mast}
\title{Read output mast}
\description{This function reads the output of MAST}
\usage{
read.mast(input, Factortrans, k, m)
}

\arguments{
  \item{input}{ Output MAST}
  \item{Factortrans}{A set of aligned nucleotide sequences}
  \item{k}{Length DNA candidate sequence}
  \item{m}{Number of TFBS sequence used on leave-one-out cross-validation}
}

\author{
Erola Pairó <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>}

\examples{
data(TranscriptionFactor)
data(iicc)
Factortrans<-TranscriptionFactor
read.mast(input,Factortrans,k=length(iicc$DNA),m=1)}
