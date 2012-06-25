\name{Alignment}
\alias{Alignment}
\title{To line up Transcription Factor Binding sites through Multiple Sequence Alignment (MSA)}
\description{This function, Alignment, lines up Transcription Factor Binding Sites, TFBS, through MSA. There are different kinds of MSA: MEME, Clustalw and Muscle}

\usage{Alignment(TF,iicc)}
\arguments{
\item{TF}{Transcription Factor}
\item{iicc}{A set of inicial conditions for the MEET-package}
}

\author{
Joan Maynou <joan.maynou@upc.edu> and Erola Pairó  <epeiroibec.pcb.ub.es>
}
\examples{
data(iicc)
Alignment(TF="Ap1.fa",iicc)
}

