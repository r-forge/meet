\name{CalculPSSM}
\alias{CalculPSSM}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 Position Specific Scoring Matrices from a set of aligned sequences
}
\description{ Calculate a PSSM of a set of DNA aligned sequences, taking into account background probabilities. The output is the logodds matrix.
}
\usage{
CalculPSSM(matriu, Prob)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{matriu}{ Set of DNA aligned sequences}
  \item{Prob}{ Probability distribution of the nucleotides in the background model}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
logodds: logodds matrix calculated as a log2 of the frequency matrix
}
\references{
  Gary D. Stormo. DNA binding sites: representation and discovery. Bioinformatics (2000) 16(1): 16-23 doi:10.1093/bioinformatics/16.1.16
}

\author{
Erola Pairó <epairo@ibecbarcelona.eu>
}



\seealso{
CalculInformation
}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)
CalculPSSM(matriu=TranscriptionFactor, Prob=Prob)
}
