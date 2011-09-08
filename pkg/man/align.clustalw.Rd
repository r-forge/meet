\name{align.clustalw}
\alias{align.clustalw}
\title{Multiple sequence alignment by means of ClustalW}
\description{ DNA sequences are aligned by means of ClustalW (Multiple Sequence Alignment).}
\usage{
align.clustalw(filein = TF, fileout = "Sq.fa", call=call.clustalw)
}
\arguments{
  \item{filein}{ A set of nucleotide sequences in FASTA format.}
  \item{fileout}{ Output file in FASTA format.}
  \item{call}{string of characters needed to call Clustalw from the working directory}
}
\details{This function needs aaMI-package}
\value{ Fileout is a file in FASTA format with aligned nucleotide sequences.}
\references{
J. Thompson, D. Higgins, and T. Gibson, “Clustal w: improving the sensitivity of progressive multiple sequence alignment through sequence weighting, positions-specific gap penalties and weight matrix choice,” Nucleic Acids Res., vol. 22, pp. 4673–4680, 1994.
}
\author{Erola Pairó <epeiroibec.pcb.ub.es> and Joan Maynou <joan.maynou@upc.edu>.}
\seealso{align.MEME, align.MUSCLE}
\examples{
align.clustalw(filein="SqDNA.fa", fileout="Sq.fa", call="clustalw2")}

