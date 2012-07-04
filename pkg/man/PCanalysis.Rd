\name{PCanalysis}
\alias{PCanalysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
PC analysis on numerical DNA sequences
}
\description{
Performs a PC analysis of numerical DNA sequences, using the pcaMethods package and projects the studied DNA sequence to the subspace. The Q-residuals (euclidean distance between the sequences and the modeled subspace) of the DNA studied sequence are returned as output.
}
\usage{
PCanalysis(TFBS, nPCs, Sequences)
}

\arguments{
  \item{TFBS}{
DNA numerical matrix of known TFBS
}
  \item{nPCs}{
Number of principal components used to build the model
}
  \item{Sequences}{
numerical matrix of DNA sequences to study (converted as a numerical matrix)
}
}

\value{
residus: Euclidean distance from the studied sequences to the modeled motif
}
\references{
  Jolliffe I.T. Principal Component Analysis, Series: Springer Series in Statistics, 2nd ed., Springer, NY, 2002, XXIX, 487 p. 28 illus. ISBN 978-0-387-95442-4

Stacklies, Wolfram, Redestig, Henning, Scholz, Matthias, Walther, Dirk, and Selbig, Joachim: pcaMethods a bioconductor package providing PCA methods for incomplete data, Bioinformatics 23(9), 1164, 2007
}
\author{
Erola Pairo <epairo@ibecbarcelona.eu>
}


\seealso{
PCA, kfold.PCA
}
\examples{
data(numericalTF)
nPCs<-3
solution<-PCanalysis(TFBS=numericalDNA, nPCs=nPCs, numericalDNA)

}
