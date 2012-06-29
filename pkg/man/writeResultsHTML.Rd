\name{writeResultsHTML}
\alias{writeResultsHTML}

\title{Writes the results of a MEET detection to HTML.}
\description{This function writes the results of a MEET detection step into an HTML file.}
\usage{writeResultsHTML(resultsMEET, fileName='index.html')}

\arguments{
  \item{resultsMEET}{The results previously got from a detection performed using MEET.}
  \item{fileName}{The name of the file to where write the HTML content. By default it is initialized to index.html}
}

\details{This function creates the HTML file in the working directory.}

\author{Marco Paulo Seco <marco.paulo.seco@estudiant.upc.edu>}

\seealso{MEET, detection}

\examples{
pathMEET<-system.file("inst/exdata",package="MEET")
results<-MEET(org="Homo sapiens", nameTF='CREB1', seqin=paste(pathMEET,"DNAmeet.afa",sep="/"), method="Entropy", system="detection", direction="f", threshold=0.01, optionsFile='.optionsmeet')
writeResultsHTML(results)
}

