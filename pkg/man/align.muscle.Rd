\name{align.muscle}
\alias{align.muscle}
\title{
Multiple sequence alignment by means of Muscle (MUltiple Sequence Comparison by Log-Expectation)
}
\description{
 DNA sequences are aligned by means of Muscle Version 3.8. (Multiple Sequences Alignment)
}
\usage{
align.muscle(filein, fileout = "Sq.fa", gapopen , maxiters, gapextend , call)
}
\arguments{
  \item{filein}{
 A set of nucleotide sequences in FASTA format.
}
  \item{fileout}{
  Output file in FASTA format.
}
  \item{gapopen}{Gap open score.}
  \item{maxiters}{Maximum number of iterations.}
  \item{gapextend}{Gap extend score.}
  \item{call}{string of characters needed to call Muscle from the working directory}


}
\details{
Gapopen and gapextend must be negative. Output is a file in FASTA format with aligned nucleotide sequences. This function needs aaMI-package.
}

\references{
R. C. Edgar, MUSCLE: multiple sequence alignment with high accuracy and high throughput. Nucleic Acids Res, vol. 32, no. 5, 2004. [Online]. Available: http://dx.doi.org/10.1093/nar/ gkh340

}
\author{
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
align.clustalw, align.MEME
}
\examples{
pathMEET<-system.file("exdata",package="MEET")
#align.muscle(filein=paste(pathMEET,"AP1.fa",sep="/"), fileout="Sq.fa", gapen=-12, maxiters=16, gapextend=-1, call="muscle")
}

