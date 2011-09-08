\name{ModelDivergence}
\alias{ModelEntropy}
\title{To create Model Entropy}
\description{ From the best parameter, this function, ModelEntropy, calculates the redundancy profile of the set of aligned nucleotide sequences.}
\usage{
ModelDivergence(iicc)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package}
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}
\examples{
data(iicc)
ModelEntropy(iicc)
}

