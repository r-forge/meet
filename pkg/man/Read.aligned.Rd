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
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
ReadSequence, ReadTF
}
\examples{
pathMEET<-system.file("exdata",package="MEET")
Read.aligned(file=paste(pathMEET,"AP1.fa",sep="/"))
}
