\name{EntropyDROSOPHILA}
\alias{EntropyDROSOPHILA}
\title{
EntropyDROSOPHILA: Given a Transcription factor chooses the model for a specific organism and method.}
\description{
This function uses transcription factor name to choose the model for the Drosophila organism and Entropy algorithm.
}
\usage{
EntropyDROSOPHILA(nameTF)
}
\arguments{
   \item{nameTF}{Transcription Factor name}
}

\details{
	The needed iicc is the vector of parameters to study }
\author{
Erola Pairó <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>}

\seealso{
MEET,EntropyHOMO,EntropyDROSOPHILA,EntropyMUS,EntropyRATTUS,DivergenceHOMO,DivergenceMUS,DivergenceRATTUS,DivergenceMUS}
\examples{
data(iicc)
EntropyDROSOPHILA(nameTF=iicc$nameTF)}
