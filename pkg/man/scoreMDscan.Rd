\name{scoreMDscan}
\alias{scoreMDscan}
\title{
Output MDscan method
}
\description{
This function writes the output MDscan method. The output contains the next fields:sequence, direction, score MDscan.}
\usage{
scoreMDscan(input, k, matriu, direction)
}
\arguments{
  \item{input}{Score MDscan}
  \item{k}{Length DNA sequence}
  \item{matriu}{A set of aligned nucleotide sequence}
  \item{direction}{Direction of DNA sequence}
}
\details{
Output's run.read.MDscan is input's scoreMDscan}

\author{
Erola Pairó <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}


\seealso{
run.read.MDscan
}
\examples{
data(iicc)
data(TranscriptioFactor)
matriu<-TranscriptionFactor
scoreMDscan(input=resultatsMDscan,k=length(iicc$DNA),matriu,direction="b")
}
