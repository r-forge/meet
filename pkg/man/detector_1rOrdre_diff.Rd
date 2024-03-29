\name{detector_1rOrdre_diff}
\alias{detector_1rOrdre_diff}
\title{Detection of Transcription Factor Binding Sites Through Differential Renyi Entropy}
\description{
This detection algorithm is based on Information Theory.  Specifically, entropy algorithm uses a parametric uncertainty measurement called Renyi entropy.  This computational method evaluates the variation on the total Renyi entropy of a set of sequences when a candidate sequence is assumed to be a a true binding site belonging to the set.The measurement of the variation of the total redundancy when the candidate sequence is added to the set has been computed by using the difference between the redundancy profile. This technique assumes independecy between positions in the binding sequence. 
}
\usage{
detector_1rOrdre_diff(training.set, val.set, iicc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{training.set}{A set of aligned nucleotide sequences}
  \item{val.set}{A candidate sequence}
  \item{iicc}{A set of inicial conditions for the MEET-package: mode, method,		  background,alignment,threshold,parameters,Transcriptionfactor,
  		 nummotif,lenmotif,sentit,position,missing,vector,gapopen,maxiters,gapextend}
}
\details{Options parameter has to contain the next arguments: maximum entropy (HXmax), correction entropy and redundancy from the Finite 
		 Sample Size Effect(correction, Redundancia_corregida, Herror and		  ErrorHX)}

\references{
J. Maynou, J.-J. Gallardo-Chacon, M. Vallverdu, P. Caminal, and A. Perera, Computational detection of transcription factor binding sites through differential renyi entropy, Information Theory, IEEE Transactions on, vol. 56, no. 2, pp. 734, feb. 2010.
}
\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
detector_2Ordre, MEME, MDscan, Q-residuals and MATCH
}
\examples{
data(iicc)
data(TranscriptionFactor)
data(BackgroundOrganism)
training.set<-TranscriptionFactor
k<-1000
training.set_x<-sample(c('A','T','C','G'),k, replace=TRUE,Prob)
seq.rand<-NULL
Resultat<-(sapply(X=c(1:(k-ncol(training.set)+1)),
            FUN = function(X, training.set, training.set_x,iicc) {
       	    seq.rand <-training.set_x[X:(X+ncol(training.set)-1)]
	    detector_1rOrdre_diff(training.set=training.set, val.set= seq.rand,
 	    iicc)}, training.set=training.set, iicc=iicc,
	     training.set_x=training.set_x))
}

