\name{align.MEME}
\alias{align.MEME}
\title{
Multiple sequence alignment by means of MEME.}
\description{ DNA sequences are aligned by means of MEME Version 4.4.0. (Multiple Expectation-Maximization for Motif Elicitation)}
\usage{align.MEME(filein, fileout = "Sq.fa", iicc)}
\arguments{
  \item{filein}{ A set of nucleotide sequences in FASTA format.}
  \item{fileout}{ Output file in FASTA format}
  \item{iicc}{ A list of argument input.}
}
\details{ This function needs aaMI-package.
	  This funtions works with meme<=4.3.0}
\value{Output is a file in FASTA format with aligned nucleotide sequences.}
\references{
T. Bailey and C. Elkan, Fitting a mixture model by expectation maximization to discover motifs in biopolymers, in Proceedings of the Second International Conference on Intelligent Systems for Molecular Biology.	AAAI Press, August 1994, 

}
\author{
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>
}
\seealso{align.clustalw, align.MUSCLE}
\examples{
iicc<-vector(mode="list",length=4)
iicc$nummotif<-c(1,2)
iicc$lenmotif<-c(10,11,12)
iicc$call.meme<-"./meme"
pathMEET<-system.file("exdata",package="MEET")
#align.MEME(filein=paste(pathMEET,"AP1.fa",sep="/"),fileout="Sq.fa",iicc)
}

