\name{run.read.MDscan}
\alias{run.read.MDscan}
\title{
Run and read MDscan on training 
}
\description{
This function runs and reads MDscan on training mode.}
\usage{
run.read.MDscan(input, k, len_motif, num_motif,call.MDscan)
}
\arguments{
  \item{input}{DNA sequence}
  \item{k}{Length DNA candidate seqeunce}
  \item{len_motif}{Length motif}
  \item{num_motif}{Number motif}
  \item{call.MDscan}{Path MDscan}
}
\details{
This function needs seqinr-Package and MDscan software.}

\references{
X. S. Liu, D. L. Brutlag, and J. S. Liu, “An algorithm for finding proteindna binding sites with applications to chromatin-immunopre- cipitation microarray experiments,” Nat. Biotechnol. vol. 20, no. 8, pp. 835–839, Aug. 2002 [Online]. Available: http://dx.doi.org/10.1038/ nbt717
}
\author{Erola Pairó <epairo@ibecbarcelona.eu>  and Joan Maynou <joan.maynou@upc.edu>}


\seealso{MEET, kfold.PredictInformationTheory, MEME, kfold.PredictDivergence, kfold.PCA}
\examples{
data(iicc)
run.read.MDscan(input=iicc$DNA,k=length(iicc$DNA),
len_motif=c(10,11,12), num_motif=2. call.MDscan)}

