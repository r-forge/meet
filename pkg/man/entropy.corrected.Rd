\name{entropy.corrected}
\alias{entropy.corrected}
\title{
Correction of the Finite Sample Size Effect
}
\description{
Each training matrix is formed by a finite number of samples. The probability estimation error using the nucleotide frequency causes a bias on the uncertainty measurement 
}
\usage{entropy.corrected(H, ErrorHX, HXmax)}

\arguments{
  \item{H}{Entropy}
  \item{ErrorHX}{Error Entropy}
  \item{HXmax}{Maximum Entropy}}
\details{
This function uses the results of correction.entropy and correctionaprox functions.
}

\references{
T. D. Schneider, G. Stormo, L. Gold, and A. Ehrenfeuch, The infor- mation content of binding sites on nucleotide sequences, J. Mol. Biol., vol. 188, pp. 415 Nov. 1986.

}
\author{
Joan Maynou <joan.maynou@upc.edu>
}
\seealso{
correctionaprox, correction.entropy
}
\examples{
data(iicc)
data(RenyiOrder)
Factortrans<-iicc$Transcriptionfactor
HXmax<-iicc$HXmax
H<-iicc$Entropy[[1]]
correction<-correction.entropy(q,p=nrow(Factortrans),long=1,iicc)
ErrorHX<-slot(correction,"sderror")[nrow(Factortrans)]
entropy.corrected(H,ErrorHX,HXmax)
}

