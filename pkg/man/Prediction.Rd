\name{Prediction}
\alias{Prediction}
\title{To detect Transcription Factor Binding sites by means of a model}
\description{This function, Prediction, detects Transcription Factor Binding Sites, TFBS, from the model. There are different kinds of model: Entropy, Divergence, PCA, MEME, MDscan, MATCH and transMEME.  This model is obtained from ConstructModel function.}
\usage{
Prediction(iicc)
}
\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package}
}

\author{
Joan Maynou <joan.maynou@upc.edu> and Erola Pairo  <epairo@ibecbarcelona.eu>
}
\examples{
data(iicc)
iicc$threshold<-0.001
Prediction(iicc)
}

