\name{WGCNANet}
\alias{WGCNANet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Generic function for objects of class WGCNANet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Generic function for objects of class WGCNANet. See other functions for more details.
}
\usage{
WGCNANet(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Default parameter for generic functions
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{WGCNANet.default}}, \code{\link{getWGCNANet}}, \code{\link{print.WGCNANet}}, \code{\link{summary.WGCNANet}}, \code{\link{export.WGCNANet}}, \code{\link{pickWGCNAParam}}, \code{\link{compareGaussNetworks}}
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
