\name{PredicttransMEME}
\alias{PredicttransMEME}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
MAST algorithm to detect TFBS in a sequence
}
\description{ PWM in transfac format is used to find TFBS into a query sequence. 

}
\usage{
PredicttransMEME(iicc,TF)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{iicc}{options of the MEET program}
 \item{TF}{Transcription Factor}
}
\details{
Uses the transMEME constructed motif}
\value{
     output: the detected sequences and its position within the sequence.
  \item{Detected Factors }{factors detected}
  \item{P-value }{Similarity Score}
  \item{Position}{Position of the detected BS within the large DNA sequence}
  
}


\author{
Erola Pairó <epeiro@ibec.pcb.ub.es>}

\seealso{
MEET, kfold.transMEME, ModeltransMEME}
\examples{
data(iicc)
data(TranscriptionFactor)
iicc$method<-"transMEME"
ModelTFBs<-ModeltransMEME(iicc)
DetectedSequences<-PredicttransMEME(iicc, TF="Ap1.fa")

}
