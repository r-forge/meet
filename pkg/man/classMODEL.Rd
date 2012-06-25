\name{classMODEL}
\alias{classMODEL}
\title{
classMODEL: To choose the model}
\description{
This function uses transcription factor name, organism and method to choose the model.
}
\usage{
classMODEL(org,method,nameTF)
}
\arguments{
  \item{org}{Organism}
  \item{method}{Method}
   \item{nameTF}{Transcription Factor name}
}

\details{
	The needed iicc is the vector of parameters to study }
\author{
Erola Pairó <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>}

\seealso{
MEET,EntropyDROSOPHILA,EntropyHOMO,EntropyMUS,EntropyRATTUS,DivergenceHOMO,DivergenceMUS,DivergenceRATTUS,DivergenceMUS}
\examples{
data(iicc)
classMODEL(org=iicc$organism,method=iicc$method,nameTF=iicc$nameTF)}
