\name{DivergenceDROSOPHILA}
\alias{DivergenceDROSOPHILA}
\title{
DivergenceDROSOPHILA: Given a Transcription factor chooses the model for a specific organism and method.}
\description{
This function uses transcription factor name to choose the model for the Drosophila organism and Divergence algorithm.
}
\usage{
DivergenceDROSOPHILA(nameTF)
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
DivergenceDROSOPHILA(nameTF=iicc$nameTF)}
