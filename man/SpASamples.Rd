\name{SpASamples}
\alias{SpASamples}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
Samples description for SpA example data.
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
The example data provided in our package are transcriptomic profiles of MD-DCs from 9 patients with AS and 10 healthy controls. DE gene statistics group 75 genes identified by LIMMA. Samples description is also provided.
}
\usage{data("SpASamples")}
\format{
  A data frame with 57 observations on the following 6 variables.
  \describe{
    \item{\code{chipnum}}{The sample ID}
    \item{\code{status}}{Indicates whether the sample comes from an AS patient (Patient) or control (Control)}
    \item{\code{LPStime}}{LPS stimulation duration before MD-DCs differenciation: no stimulation (H0), 6 hours (H6) or 24 hours (H24)}
    \item{\code{b27}}{Indicates whether the sample comes from an HLA-B27 positive (B27+) or negative (B27-) individual}
    \item{\code{subject}}{Identifier indicating sample duplicates}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
This matrix describes factors attributed to each sample in SpADataExpression, and is used to generate multiple gaussian networks in our package.
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Talpin, A. et al. Monocyte-derived dendritic cells from HLA-B27+ axial spondyloarthritis (SpA) patients display altered functional capacity and deregulated gene expression. Arthritis Res. Ther. 16, 417 (2014).
}
\examples{
data(SpASamples)
head(SpASamples)
}
\keyword{datasets}
\keyword{internal}
