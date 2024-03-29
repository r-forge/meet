\name{writeMEME}
\alias{writeMEME}

\title{
Write a training matrix in a MEME/MAST format
}
\description{
This function rewrites a training matrix (a set of aligned nucleotide sequences) in a MEME/MAST format.
}
\usage{
writeMEME(matriu, m)
}

\arguments{
  \item{matriu}{A set of aligned nucleotide sequences}
  \item{m}{Number of TFBS sequence used on leave-one-out cross-training}
}


\author{
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
MEME,transMEME,DMEME,DtransMEMEME
}
\examples{
data(TranscriptionFactor)
matriu<-TranscriptionFactor
writeMEME(matriu, m=1)
}

