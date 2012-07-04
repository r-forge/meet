\name{PredictMDscan}
\alias{PredictMDscan}

\title{
MDscan algorithm to detect TFBS in a sequence
}
\description{ MDscan constructed motif is used to find TFBS into the query sequence. 

}
\usage{
PredictMDscan(iicc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{iicc}{options of the MEET program}
}
\details{
Uses the MEME constructed motif}
\value{
     output: the detected sequences and its position within the sequence.
  \item{Detected Factors }{factors detected}
  \item{P-value }{Similarity Score}
  \item{Position}{Position of the detected BS within the large DNA sequence}
  
}


\author{
Erola Pairo <epairo@ibecbarcelona.eu>}

\seealso{
MEET, kfold.MDscan, ModelMDscan}
\examples{
##not Run
data(iicc)
data(TranscriptionFactor)
#DetectedSequences<-PredictMDscan(iicc)
}
