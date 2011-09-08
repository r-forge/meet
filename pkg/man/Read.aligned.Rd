\name{Read.aligned}
\alias{Read.aligned}
\title{
Read nucleotide sequences}
\description{
This function reads nucleotide sequences in format .fasta.
}
\usage{
Read.aligned(file)
}
\arguments{
  \item{file}{ A set of nucleotide sequences}}
\details{
The file has to be in format .fasta}

\author{
Erola Pairó <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
ReadSequence, ReadTF
}
\examples{
Read.aligned(file="SqDNA.fa")
}
