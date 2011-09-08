\name{ConstructModel}
\alias{ConstructModel}
\title{To create Detection Model}
\description{ From the best parameter, this function,ConstructModel, calculates the detection model of the set of aligned nucleotide sequences. There are different kinds of models: Entropy, Divergence, PCA, MEME, MDscan, MATCH and transMEME}
\usage{
ContructModel(iicc)
}
\usage{ModelEntropy(iicc), ModelDivergence(iicc), ModelPCA(iicc) , ModelMEME(iicc), ModelMDscan(iicc), ModelMATCH(iicc), ModeltransMEME(iicc)}
\arguments{
\item{iicc}{A set of inicial conditions for the MEET-package}
}

\author{
Joan Maynou <joan.maynou@upc.edu> and Erola Pairó  <epeiroibec.pcb.ub.es>
}
\examples{
data(iicc)
ConstructModel(iicc)
}

