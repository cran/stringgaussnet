\name{summary.SIMoNeNet}
\alias{summary.SIMoNeNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Summary function for object of class SIMoNeNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically a summary object of class SIMoNeNet, with summary of theta scores, spearman's rhos and p-values.
}
\usage{
\method{summary}{SIMoNeNet}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
%%     ~~Describe \code{x} here~~
Object of class SIMoNeNet
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from generic summary function
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{SIMoNeNet}}, \code{\link{SIMoNeNet.default}}, \code{\link{getSIMoNeNet}}, \code{\link{print.SIMoNeNet}}, \code{\link{export.SIMoNeNet}}, \code{\link{FilterEdges.SIMoNeNet}}, \code{\link{pickSIMoNeParam}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# NodesForSIMoNe<-rownames(SpADEGenes)[1:17]
# GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])

# pickSIMoNeParam(GaussianSpAData)

# GlobalSIMoNeNet<-getSIMoNeNet(GaussianSpAData)
# GlobalSIMoNeNet<-FilterEdges(GlobalSIMoNeNet,0.4)
# print(GlobalSIMoNeNet,5)
# summary(GlobalSIMoNeNet)
# plot(GlobalSIMoNeNet)

# export(GlobalSIMoNeNet,"GlobalSIMoNeNet",T)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
