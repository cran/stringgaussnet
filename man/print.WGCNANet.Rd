\name{print.WGCNANet}
\alias{print.WGCNANet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Print function for object of class WGCNANet.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically object of class WGCNANet, with previews of edge and node attributes.
}
\usage{
\method{print}{WGCNANet}(x, nlimit = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Object of class WGCNANet
}
  \item{nlimit}{
%%     ~~Describe \code{nlimit} here~~
Which number of lines to preview for data frames
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from generic print function
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{WGCNANet}}, \code{\link{WGCNANet.default}}, \code{\link{getWGCNANet}}, \code{\link{summary.WGCNANet}}, \code{\link{export.WGCNANet}}, \code{\link{pickWGCNAParam}}, \code{\link{compareGaussNetworks}}
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
