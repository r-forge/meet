\name{MIread}
\alias{MIread}
\title{To read PredictDivergence values
}
\description{ This function reads divergence values saved in memory.  From the divergence values, MIread calculates the variation of the total divergence
when the candidate sequence is added to the set.}
\usage{
MIread(training.set,val.set,iicc)
}

\arguments{
\item{training.set}{ A set of nucleotide sequences}
\item{val.set}{A candidate sequence}
\item{iicc}{A set of inicial conditions for the MEET-package}
 
}

\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
MImemory}



