\name{QresidualsRATTUS}
\alias{QresidualsRATTUS}
\title{
QresidualsRATTUS: Given a Transcription factor chooses the model for a specific organism and method.}
\description{
This function uses transcription factor name to choose the model for the Rattus organism and Qresiduals algorithm.
}
\usage{
QresidualsRATTUS(nameTF)
}
\arguments{
   \item{nameTF}{Transcription Factor name}
}

\details{
	The needed iicc is the vector of parameters to study }
\author{
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>}

\seealso{
MEET,EntropyHOMO,EntropyDROSOPHILA,EntropyMUS,EntropyRATTUS,DivergenceHOMO,DivergenceMUS,DivergenceRATTUS,DivergenceMUS}
\examples{
data(iicc)
QresidualsRATTUS(nameTF=iicc$nameTF)}
