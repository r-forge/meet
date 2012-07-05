\name{correctionaprox}
\alias{correctionaprox}
\title{Correction Entropy Approximate from the Finite Sample Size Effect.}
\description{
Each training matrix is formed by a finite number of samples. The probability estimation error using the nucleotide frequency causes a bias on the uncertainty measurement The approximation method is used for sample size is more than or equal  to 50.}

\usage{
correctionaprox(x, matriu, s)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Maximum entropy}
  \item{matriu}{A set of aligned nucleotide sequences.}
  \item{s}{Number of symbols}
}
\details{Sample size has to be > 50.}
\references{
T. D. Schneider, G. Stormo, L. Gold, and A. Ehrenfeuch, The information content of binding sites on nucleotide sequences, J. Mol. Biol., vol. 188, Nov. 1986.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}




\seealso{
entropy, redundancy, correction.redundancy, correction.entropy
}
\examples{
data(iicc)
s<-4
correctionaprox(x=iicc$HXmax,matriu=iicc$Transcriptionfactor,s) 
}

