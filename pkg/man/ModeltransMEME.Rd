\name{ModeltransMEME}
\alias{ModeltransMEME}
\title{To create Model transMEME}
\description{ From the best parameter, this function, ModeltransMEME, calculates the best MEME model of the set of aligned nucleotide sequences.}
\usage{
ModeltransMEME(iicc)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package}
}

\author{
Joan Maynou <joan.maynou@upc.edu> and Erola Pairó <epeiroibec.pcb.ub.es>
}
\examples{
data(iicc)
ModeltransMEME(iicc)
}

