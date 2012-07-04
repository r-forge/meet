\name{Hread}
\alias{Hread}
\title{To read Entropy values
}
\description{ This function reads entropy values saved in memory.  From the entropy values, Hread calculates the variation of the total entropy
when the candidate sequence is added to the set.}
\usage{
Hread(training.set.mes.rand,val.set,iicc)
}

\arguments{
\item{training.set.mes.rand}{ A set of nucleotide sequences}
\item{val.set}{A candidate sequence}
\item{iicc}{A set of inicial conditions for the MEET-package}
 
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
Hmemory}

\examples{
require(MEET)
data(TranscriptionFactor)
data(iicc)
training.set.mes.rand<-TranscriptionFactor
   val.set<-c("A","T","C","C","G","T","A","T","T","A","C","G")
   Resultat<-Hread(training.set.mes.rand, val.set, iicc)
}

