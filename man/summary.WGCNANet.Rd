\name{summary.WGCNANet}
\alias{summary.WGCNANet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Summary function for object of class WGCNANet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically a summary object of class WGCNANet, with summary of spearman's rhos and p-values.
}
\usage{
\method{summary}{WGCNANet}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
%%     ~~Describe \code{x} here~~
Object of class WGCNANet
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from generic summary function
}
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{WGCNANet}}, \code{\link{WGCNANet.default}}, \code{\link{getWGCNANet}}, \code{\link{print.WGCNANet}}, \code{\link{export.WGCNANet}}, \code{\link{pickWGCNAParam}}, \code{\link{compareGaussNetworks}}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
