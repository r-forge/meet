\name{PredictMATCH}
\alias{PredictMATCH}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
MATCH algorithm to detect TFBS in a sequence
}
\description{ The model constructed using the MATCH algorithm and the specific parameters for this method are used to detect TFBS within a sequence

}
\usage{
PredictMATCH(iicc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{iicc}{options of the MEET program}
}
\details{
Uses the MATCH constructed motif, and as a parameter the chosen corecut}
\value{
     output: the detected sequences and its position within the sequence.
  \item{Detected Factors }{factors detected}
  \item{P-value }{Similarity Score}
  \item{Position}{Position of the detected BS within the large DNA sequence}
  
}


\author{
Erola Pairo <epairo@ibecbarcelona.eu>}

\seealso{
MEET, kfold.MATCH, ModelMATCH}
\examples{
data(iicc)
data(TranscriptionFactor)
iicc$method<-"MATCH"
iicc$parametersIdeal<-0.8
iicc$model<-ModelMATCH(iicc)
DetectedSequences<-PredictMATCH(iicc)

}
