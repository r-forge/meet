\name{numericalDNA}
\alias{numericalDNA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Conversion of nucleotides to numerical vectors
}
\description{
Convert a nucleotide to a numerical vector, using a representation where each nucleotide is placed at the vertex of a regular tetrahedron. 
}
\usage{
numericalDNA(background)
}
\arguments{
  \item{background}{ Corresponding point in the tetrahedron of the
  input nucleotide}
}

\references{
Silverman, B.D., and Linske, R.: A measure of DNA periodicity, Journal of Theoretical Biology 118, volume 118,p. 295, 1986
}
\author{
Erola Pairo <epairo@ibecbarcelona.eu>}

\seealso{
convertDNA
}

\examples{
background<-c(0.25, 0.25, 0.25, 0.25)
numericA<-numericalDNA(background)
}
