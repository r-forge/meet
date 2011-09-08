\name{ModelMDscan}
\alias{ModelMDscan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
MDscan algortihm to detect TFBS within a sequence
}
\description{ MDscan algorithm is used to construct a PWM model of the intput TFBS sequences. The returned values is the file with the motif

}
\usage{
ModelMscan(iicc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{iicc}{options of the MEET program}
}
\details{
The output is the name of the file where the results are writen}
\value{
    output: 
  \item{nameMDscan }{name of the MDscan file}
  
  
}


\author{
Erola Pairó <epeiro@ibec.pcb.ub.es>}

\seealso{
MEET, kfold.MDscan}
\examples{
data(iicc)
iicc$parameterIdeal<-iicc$parameter
model<-ModelMscan(iicc)
}
