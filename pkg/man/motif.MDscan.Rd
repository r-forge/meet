\name{motif.MDscan}
\alias{motif.MDscan}
\title{
Input Motif MDscan.
}
\description{
Given a training sequence set, candidate sequence and length DNA,  motif has been estimated by means of output MDscan. 
}
\usage{
motif.MDscan(input,Factortrans,k,m)
}

\arguments{
\item{input}{Output MDscan}
 \item{Factortrans}{A set of nucleotide sequences aligned}
 \item{k}{Length DNA sequence}
 \item{m}{candidate sequence}
}

\references{
X. S. Liu, D. L. Brutlag, and J. S. Liu, “An algorithm for finding proteindna binding sites with applications to chromatin-immunopre- cipitation microarray experiments,” Nat. Biotechnol. vol. 20, no. 8, pp. 835–839, Aug. 2002 [Online]. Available: http://dx.doi.org/10.1038/ nbt717
}
\author{
Erola Pairó <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
ModelMDscan.R
}
\examples{
data(iicc)
MDscan(input,Factortrans,k=length(iicc$DNA[[1]],m=1))
}

