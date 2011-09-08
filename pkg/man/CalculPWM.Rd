\name{CalculPWM}
\alias{CalculPWM}
\title{CalculPWM: To calculate Position Weight Matrix}
\description{
This function calculates the PWM (Position Weigth Matrix) from set of aligned nucleotide sequences.
}
\usage{CalculPWM(matriu)}
\arguments{
  \item{matriu}{A set of aligned nucleotide sequences}
}

\value{ A matrix of characters}

\author{
Erola Pairó <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>
}

\examples{
data(TranscriptionFactor)
matriu<-TranscriptionFactor
resul<-CalculPWM(matriu)
}

