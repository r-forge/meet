\name{probability}
\alias{probability}
\title{
Probability
}
\description{
This function calculates the probability of random varible with N states considering missing values.
}
\usage{
probability(wind, Prob, missing.fun = NULL)
}
\arguments{
  \item{wind}{A set of nucleotide aligned sequences}
  \item{Prob}{Probability of each base within genome}
  \item{missing.fun}{TRUE Missing values}
  }

\author{
Joan Maynou <joan.maynou@upc.edu>}

\seealso{
joint.probability, probIdem, probtransicio
}
\examples{

data(TranscriptionFactor)
data(BackgroundOrganism)

wind<-TranscriptionFactor
probability(wind,Prob,missing.fun=NULL){

pm<-apply(wind,2,function (x){
	resum<-table(x)
	A<-resum["A"];T<-resum["T"];C<-resum["C"];G<-resum["G"];R<-resum["-"]
	symbols <- c(A,T,C,G)
	names(symbols) <- c("A","T","C","G")
	symbols[which(is.na(symbols))] <- 0
	if(is.na(R)) R <- 0
	prepm<-missing.fun(x,symbols,R,Prob)
	prepm})
pm
	}
}

