\name{Alignment}
\alias{Alignment}
\title{To line up Transcription Factor Binding Sites through Multiple Sequence Alignment (MSA)}
\description{This function, Alignment, lines up Transcription Factor Binding Sites, TFBS, through MSA. There are different kinds of MSA: MEME, Clustalw and Muscle}

\usage{Alignment(TF,iicc)}
\arguments{
\item{TF}{Transcription Factor}
\item{iicc}{A set of inicial conditions for the MEET-package}
}

\author{
Joan Maynou <joan.maynou@upc.edu> and Erola Pairó  <epairo@ibecbarcelona.eu>
}
\examples{
data(iicc)
pathMEET<-system.file("data",package="MEET")
Alignment(TF=paste(pathMEET,"AP1.fa",sep="/"),iicc)
}

