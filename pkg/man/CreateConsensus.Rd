\name{CreateConsensus}
\alias{CreateConsensus}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 Consensus Sequence for a DNA motif
}
\description{
Using seqinr R package, constructs a consensus DNA sequences from a set of aligned Sequences
}
\usage{
CreateConsensus(alignedSequences,iicc)
}

\arguments{
  \item{alignedSequences}{
Aligned DNA sequences}
	\item{iicc}{Initial options}
}
\details{
package "seqinr" is required
}
\value{
SeqCons: Consensus sequence (if gaps a "Na" is returned)
}
\references{
https://r-forge.r-project.org/projects/seqinr/
}
\author{
Erola Pairó <epeiro@ibec.ub.pcb.es>
}


\seealso{
align.clustalw, align.MEME, read.aligned, align.muscle
}
\examples{
data(TranscriptionFactor)
data(iicc)
SeqCons<-CreateConsensus(TranscriptionFactor,iicc)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
