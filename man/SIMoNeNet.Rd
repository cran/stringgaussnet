\name{SIMoNeNet}
\alias{SIMoNeNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Generic function for objects of class SIMoNeNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Generic function for objects of class SIMoNeNet. See other functions for more details.
}
\usage{
SIMoNeNet(x, ...)
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
\code{\link{SIMoNeNet.default}}, \code{\link{getSIMoNeNet}}, \code{\link{print.SIMoNeNet}}, \code{\link{summary.SIMoNeNet}}, \code{\link{export.SIMoNeNet}}, \code{\link{FilterEdges.SIMoNeNet}}, \code{\link{pickSIMoNeParam}}
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
