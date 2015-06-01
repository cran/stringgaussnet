\name{SpADEGenes}
\alias{SpADEGenes}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
75 DE genes analysis results from LIMMA.
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
The example data provided in our package are transcriptomic profiles of MD-DCs from 9 patients with AS and 10 healthy controls. DE gene statistics group 75 genes identified by LIMMA. Samples description is also provided.
}
\usage{data("SpADEGenes")}
\format{
  A data frame with 75 observations on the following 5 variables.
  \describe{
    \item{\code{GeneSymbol}}{HGNC gene symbol}
    \item{\code{EnsemblId}}{Gene Ensembl ID}
    \item{\code{P.Value}}{Given by LIMMA}
    \item{\code{Fold.Change}}{Given by LIMMA}
    \item{\code{logFC}}{log2(Fold.Change)}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
This matrix groups the fold changes of p-values given by LIMMA for each gene, between patients and controls adjusted for all LPS time stimulations.
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Talpin, A. et al. Monocyte-derived dendritic cells from HLA-B27+ axial spondyloarthritis (SpA) patients display altered functional capacity and deregulated gene expression. Arthritis Res. Ther. 16, 417 (2014).
}
\examples{
data(SpADEGenes)
head(SpADEGenes)
}
\keyword{datasets}
\keyword{internal}
