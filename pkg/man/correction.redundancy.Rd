\name{correction.redundancy}
\alias{correction.redundancy}

\title{Correction redundancy from the Finite Sample Size Effect}
\description{Each training matrix is formed by a finite number of samples. The probability estimation error using the nucleotide frequency causes a bias on the uncertainty measurement}
\usage{
correction.redundancy(r, HXmax, Herror, finite)
}

\arguments{
  \item{r}{Length of the binding site}
  \item{HXmax}{Maximum entropy for N possible states}
  \item{Herror}{Error entropy for finit sample size effect}
  \item{finite}{Sample size}
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
redundancy, entropy,CalculRedundancy, correction.entropy, correctionaprox
}
\examples{
data(iicc)
data(TranscriptionFactor)
HXmax<-iicc$HXmax
Herror<-iicc$Herror
correction.redundancy(r=1,HXmax,Herror,finite=nrow(TranscriptionFactor))
}

