\name{ReadSequence}
\alias{ReadSequence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Convert a DNA sequence in a numerical DNA matrix
}
\description{
Convert a DNA symbolical sequence to a DNA numerical matrix of length m, using a conversion where each nucleotide is placed at the vertex of a numerical tetrahedron
}
\usage{
ReadSequence(Seq, m)
}

\arguments{
  \item{Seq}{
Vector containing a DNA symbolical sequence
}
  \item{m}{
length of the matrix
}
}

\value{
matriuSeq:numerical matrix representing de DNA sequence. 
}
\references{
Silverman, B.D., and Linske, R.: A measure of DNA periodicity, Journal of Theoretical Biology 118, volume 118, 295–300, 1986
}
\author{
Erola Pairó <epeiro@ibec.pcb.ub.es>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
convertDNA, numericalDNA, readTF
}
\examples{
data(DNAsequence)
m<-12
numericalMatrix<-ReadSequence(DNASequence, m)
}
