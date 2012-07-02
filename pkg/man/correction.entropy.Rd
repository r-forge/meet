\name{correction.entropy}
\alias{correction.entropy}
\title{Correction entropy from the Finite Sample Size Effect}
\description{Each training matrix is formed by a finite number of samples. The probability estimation error using the nucleotide frequency causes a bias on the uncertainty measurement }
\usage{
correction.entropy(q, p, long, iicc)}

\arguments{
  \item{q}{Renyi Order}
  \item{p}{Sample size}
  \item{long}{Length of the binding site}
  \item{iicc}{A list of options}
}
\details{Sample size has to be =< 50.}

\references{
T. D. Schneider, G. Stormo, L. Gold, and A. Ehrenfeuch, The information content of binding sites on nucleotide sequences, J. Mol. Biol., vol. 188, Nov. 1986.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
correctionaprox,entropy, redundancy, correction.redundancy
}
\examples{
data(TranscriptionFactor)
data(iicc)
data(BackgroundOrganism)
data(RenyiOrder)
correction.entropy(q,p=nrow(TranscriptionFactor),long=1,iicc)}
