\name{missing.fun}
\alias{missing.fun}
\title{Missing values}
\description{
For each position within the matrix of aligned sequences, the probability corresponding to each nucleotide is estimated. Missing values are imputed to a multistate nucleotide with probabilities corresponding to the frequency of each nucleotide in the corresponding organism.
}
\usage{missing.fun(x, symbols, R, Prob)}

\arguments{
  \item{x}{Position k of the training set (a set of aligned nucleotide sequence)}
  \item{symbols}{Number of each nucleotide}
  \item{R}{Number of missing values for position}
  \item{Prob}{Probability of each base within genome}
}
\details{
This function is included on probability function.  Missing.fun has to be different NULL
}


\author{
Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
probability
}
\examples{

data(TranscriptionFactor)
data(BackgroundOrganism)

x<-TranscriptionFactor[,1]
resum<-table(x)
A<-resum["A"];T<-resum["T"];C<-resum["C"];G<-resum["G"];R<-resum["-"]
symbols <- c(A,T,C,G)
names(symbols) <- c("A","T","C","G")
symbols[which(is.na(symbols))] <- 0
if(is.na(R)) R <- 0
prepm<-missing.fun(x,symbols,R,Prob)
}

