\name{kfold.MDscan}
\alias{kfold.MDscan}
\title{
Leave-one-out cross-training for MDscan.
}
\description{
Given a training sequence set, the optimal length and number motif has been estimated by means of leave-one-out cross-training from length and number motif set.  From each value, the ROC curve has been calculated.  From this results, the optimal value has been considered according to the area under conver surface maximum
}
\usage{
kfold.MDscan(iicc, TF)
}

\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package (mode, method, background, alignment, threshold, parameters, Transcriptionfactor, nummotif, lenmotif, sentit, position, missing, vector, gapopen, maxiters, gapextend)}
  \item{TF}{ A set of nucleotide sequences}
}

\references{
X. S. Liu, D. L. Brutlag, and J. S. Liu, “An algorithm for finding proteindna binding sites with applications to chromatin-immunopre- cipitation microarray experiments,” Nat. Biotechnol. vol. 20, no. 8, pp. 835–839, Aug. 2002 [Online]. Available: http://dx.doi.org/10.1038/ nbt717
}
\author{
Erola Pairó <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}

\seealso{
kfold.Divergence, kfold.Entropy, kfold.MEME, kfold.MATCH and kfold.PCA
}
\examples{
data(iicc)
pathMEET<-system.file("data",package="MEET")
kfold.MDscan(iicc,TF=paste(pathMEET,"AP1.fa",sep="/"))
}

