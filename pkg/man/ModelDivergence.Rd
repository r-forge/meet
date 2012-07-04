\name{ModelDivergence}
\alias{ModelDivergence}
\title{To create Model Divergence}
\description{ From the best parameter, this function, ModelDivergence, calculates the divergence matrix of the set of aligned nucleotide sequences.}
\usage{
ModelDivergence(iicc)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package}
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}
\examples{
data(iicc)
data(BackgroundOrganism)
training.set<-iicc$Transcriptionfactor
val.set<-sample(c('A','T','C','G'),ncol(training.set), replace=TRUE,Prob)
res<-detector_2nOrdre_init(training.set, val.set, iicc)
iicc<-c(iicc,res)
iicc$parametersIdeal<-1
ModelDivergence(iicc)
}

