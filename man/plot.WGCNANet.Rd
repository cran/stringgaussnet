\name{plot.WGCNANet}
\alias{plot.WGCNANet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Plot WGCNANet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function plots an object of class WGCNANet. The same function as in simone package is used.
}
\usage{
\method{plot}{WGCNANet}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
An object of class WGCNANet
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from the generic plot function. Not used here.
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{getWGCNANet}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# NodesForSIMoNe<-rownames(SpADEGenes)[1:17]
# GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])

# pickWGCNAParam(GaussianSpAData)
# GlobalWGCNANet<-getWGCNANet(GaussianSpAData)
# print(GlobalWGCNANet,5)
# summary(GlobalWGCNANet)
# plot(GlobalWGCNANet)
# export(GlobalWGCNANet,"GlobalWGCNANet",T)

# compareGaussNetworks(GlobalSIMoNeNet,GlobalWGCNANet,c("SIMoNe","WGCNA"))
}
