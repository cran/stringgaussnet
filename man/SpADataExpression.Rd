\name{SpADataExpression}
\alias{SpADataExpression}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
Data expression of the 75 DE genes identified by LIMMA in SpA sample data.
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
The example data provided in our package are transcriptomic profiles of MD-DCs from 9 patients with AS and 10 healthy controls. DE gene statistics group 75 genes identified by LIMMA. Samples description is also provided.
}
\usage{data("SpADataExpression")}
\format{
  A data frame with 75 observations on the following 57 variables.
  \describe{
    \item{\samp{21}}{a numeric vector}
    \item{\samp{22}}{a numeric vector}
    \item{\samp{23}}{a numeric vector}
    \item{\samp{24}}{a numeric vector}
    \item{\samp{25}}{a numeric vector}
    \item{\samp{26}}{a numeric vector}
    \item{\samp{27}}{a numeric vector}
    \item{\samp{30}}{a numeric vector}
    \item{\samp{31}}{a numeric vector}
    \item{\samp{32}}{a numeric vector}
    \item{\samp{33}}{a numeric vector}
    \item{\samp{34}}{a numeric vector}
    \item{\samp{35}}{a numeric vector}
    \item{\samp{36}}{a numeric vector}
    \item{\samp{37}}{a numeric vector}
    \item{\samp{38}}{a numeric vector}
    \item{\samp{39}}{a numeric vector}
    \item{\samp{40}}{a numeric vector}
    \item{\samp{41}}{a numeric vector}
    \item{\samp{42}}{a numeric vector}
    \item{\samp{43}}{a numeric vector}
    \item{\samp{44}}{a numeric vector}
    \item{\samp{45}}{a numeric vector}
    \item{\samp{46}}{a numeric vector}
    \item{\samp{47}}{a numeric vector}
    \item{\samp{48}}{a numeric vector}
    \item{\samp{50}}{a numeric vector}
    \item{\samp{51}}{a numeric vector}
    \item{\samp{52}}{a numeric vector}
    \item{\samp{53}}{a numeric vector}
    \item{\samp{54}}{a numeric vector}
    \item{\samp{55}}{a numeric vector}
    \item{\samp{56}}{a numeric vector}
    \item{\samp{57}}{a numeric vector}
    \item{\samp{58}}{a numeric vector}
    \item{\samp{59}}{a numeric vector}
    \item{\samp{60}}{a numeric vector}
    \item{\samp{61}}{a numeric vector}
    \item{\samp{62}}{a numeric vector}
    \item{\samp{63}}{a numeric vector}
    \item{\samp{64}}{a numeric vector}
    \item{\samp{65}}{a numeric vector}
    \item{\samp{66}}{a numeric vector}
    \item{\samp{67}}{a numeric vector}
    \item{\samp{68}}{a numeric vector}
    \item{\samp{70}}{a numeric vector}
    \item{\samp{71}}{a numeric vector}
    \item{\samp{72}}{a numeric vector}
    \item{\samp{73}}{a numeric vector}
    \item{\samp{74}}{a numeric vector}
    \item{\samp{75}}{a numeric vector}
    \item{\samp{76}}{a numeric vector}
    \item{\samp{77}}{a numeric vector}
    \item{\samp{78}}{a numeric vector}
    \item{\samp{79}}{a numeric vector}
    \item{\samp{80}}{a numeric vector}
    \item{\samp{48_49}}{a numeric vector}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
Data comes from Affymetrix HumanGene 1.0 st technology and was normalized using rma.
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Talpin, A. et al. Monocyte-derived dendritic cells from HLA-B27+ axial spondyloarthritis (SpA) patients display altered functional capacity and deregulated gene expression. Arthritis Res. Ther. 16, 417 (2014).
}
\examples{
data(SpADataExpression)
head(SpADataExpression)
}
\keyword{datasets}
\keyword{internal}
