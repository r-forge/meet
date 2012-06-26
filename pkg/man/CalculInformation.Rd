\name{CalculInformation}
\alias{CalculInformation}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Information content in each position of a set of aligned DNA sequences
}
\description{
Using as an input the set of aligned DNA sequences, information content in each position is calculated, taking into account background probability for each nucleotide. The first row of the returned sequence is the information in each postion, and the others are the loggods matrix.
}
\usage{
CalculInformation(matriu, Prob)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{matriu}{
Aligned DNA sequences
}
  \item{Prob}{
Background Probability for the studied individual. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
matriu_inf: a matrix with a first row that is the information content in each position and the next ones the logodds matrix using information content.

}
\references{
T. D. Schneider, G. Stormo, L. Gold, and A. Ehrenfeuch, “The infor- mation content of binding sites on nucleotide sequences,” J. Mol. Biol., vol. 188, pp. 415–431, Nov. 1986.
}
\author{
Erola Pairó <epairo@ibecbarcelona.eu>
}

\seealso{
kfold.MATCH, CalculScores.
}
\examples{
data(TranscriptionFactor)
data(BackgroundOrganism)
CalculInformation(matriu=TranscriptionFactor, Prob=Prob)


  }


