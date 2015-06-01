\name{FactorNetworks.default}
\alias{FactorNetworks.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function to create an object of class FactorNetworks
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to infer multiple gaussian networks from a single DEGeneExpr object with a factor attributed to samples.
}
\usage{
\method{FactorNetworks}{default}(x, Factor, method = "SIMoNe", options = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{DEGeneExprObj} here~~
An object of class DEGeneExpr
}
  \item{Factor}{
%%     ~~Describe \code{Factor} here~~
A factor attributed to samples. Names must fit with sample names. If it is a character vector, it is automatically converted to a factor.
}
  \item{method}{
%%     ~~Describe \code{method} here~~
Which method for gaussian network inference to use. Can be either "SIMoNe" or "WGCNA".
}
  \item{options}{
%%     ~~Describe \code{options} here~~
A list giving options for the gaussian network inference method. Each name corresponds to the parameters of the function getSIMoNeNet() or getWGCNANet().
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters. Not used here.
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class FactorNetworks, which is a list of gaussian networks for each level of the given factor.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FactorNetworks}}, \code{\link{print.FactorNetworks}}, \code{\link{FilterEdges.FactorNetworks}}, \code{\link{addFactorGraphsToCytoscape}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# data(SpASamples)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# StatusFactor<-paste(SpASamples$status,SpASamples$b27,sep=".")
# names(StatusFactor)=SpASamples$chipnum

# NodesForSIMoNe<-rownames(SpADEGenes)[1:17]
# GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])

# GlobalSIMoNeNetNF<-getSIMoNeNet(GaussianSpAData)
# GlobalSIMoNeNet<-FilterEdges(GlobalSIMoNeNetNF,0.4)

# StatusFactorSIMoNeNet<-FactorNetworks(GaussianSpAData,StatusFactor,"SIMoNe")
# StatusFactorSIMoNeNet<-FilterEdges(StatusFactorSIMoNeNet,0.4)

# resetCytoscapeSession()
# addNetworkStyle("SIMoNeNet",class(GlobalSIMoNeNet),points.size.map="P.Value",
# points.fill.map="logFC")
# addFactorGraphsToCytoscape(StatusFactorSIMoNeNet)
}
