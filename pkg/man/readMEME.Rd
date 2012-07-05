\name{readMEME}
\alias{readMEME}
\title{
Read MEME motifs and consensus sequences
}
\description{
 DNA discovered motifs and consensus sequences were read from the MEME results file
}
\usage{
readMEME(resultat, num_motif)
}
\arguments{
  \item{resultat}{
 MEME results file 
}
  \item{num_motif}{
  number of MEME  motifs
}
  
}

\details{
This function works with MEME<=4.3.0
}

\references{
Bailey, T.L., and Elkan, C.: MEME:discovering and analizing DNA and protein sequence motifs, Nucleic acids research 34, volume 34, W369, 2006

}
\author{
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
align.MEME
}
\examples{

#num_motif=2
#readMEME(result_MEME, num_motif)
}

