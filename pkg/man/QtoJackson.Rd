\name{QtoJackson}
\alias{QtoJackson}
\title{
Q to Jackson: transform a Q-residual into a confidence interval
}
\description{
Given Q-residual, this function uses the parameters calculated in JAcksonParameters to convert a Q-residual into a confidence interval}
\usage{
QtoJackson(Q,h0, x1, x2, x3)

}
\arguments{
  \item{Q}{Q-residual}
  \item{h0}{h0 parameter}
  \item{x1}{x1 parameter}
  \item{x2}{x2 parameter}
  \item{x3}{x3 parameter}
 
  
}
\value{
 output:confidence interval of the given residual.
}

\author{
Erola Pairo <epairo@ibec.pcb.ub.es>}
\seealso{
kfold.PCA, Predict.PCA, JacksonParameters
}
\examples{
data(iicc)
    TFBS<-iicc$Transcriptionfactor
     Prob<-iicc$background
     missing<-iicc$missing
     NumericalMatrix<-numericalDNA(Prob)
    suma<-apply(TFBS,2,function(y){sum(y=="-")})
    threshold<-floor(nrow(TFBS)*missing/100)
    TFBS<-TFBS[, suma<=threshold]
    ncolTFBS<-ncol(TFBS)
    TFBSnum<-apply(TFBS,1,function(x){as.vector(t(NumericalMatrix[x,]))})
    TFBSnum<-t(TFBSnum)
    nPCs<-1
    model<-pca(TFBSnum, nPcs=nPCs, method="svd", center=TRUE)
    JacksonPars<-JacksonParameters(nPCs,TFBSnum)
    Qres<-3.45
    h0<-JacksonPars$h0
    x1<-JacksonPars$x1
    x2<-JacksonPars$x2
    x3<-JacksonPars$x3
    confidence<-QtoJackson(Qres,h0,x1,x2,x3)
}
