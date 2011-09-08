\name{PredictMEME}
\alias{PredictMEME}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
MEME algorithm to detect TFBS in a sequence
}
\description{ MEME constructed motif is used to run MAST to find TFBS into the query sequence. 

}
\usage{
PredictMEME(iicc)
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
Erola Pairó <epeiro@ibec.pcb.ub.es>}

\seealso{
MEET, kfold.MEME, ModelMEME}
\examples{
data(iicc)
data(TranscriptionFactor)
iicc$method<-"MEME"
ModelTFBs<-ModelMEME(iicc)
DetectedSequences<-PredictMEME(iicc)

}
