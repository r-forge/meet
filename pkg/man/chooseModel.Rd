\name{chooseModel}
\alias{chooseModel}
\title{
ChooseModel: Choose the best model}
\description{
This function uses AUC and its variation to choose the best parameters.
}
\usage{
chooseModel(AUC, iicc)
}
\arguments{
  \item{AUC}{List of Areas under ROC curve produced by the studied method. Each AUC element of the list is a vector.}
   \item{iicc}{options of the MEET program}
}
\value{
y: list with the best parameter and the index of the position of this parameter in the studied range
}
\details{
	The needed iicc is the vector of parameters to study }
\author{
Erola Pairo <epairo@ibecbarcelona.eu> and Joan Maynou <joan.maynou@upc.edu>}

\seealso{
MEET, training}
\examples{
data(iicc)
detection(iicc)}
