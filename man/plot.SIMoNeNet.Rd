\name{plot.SIMoNeNet}
\alias{plot.SIMoNeNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Plot SIMoNeNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function plots an object of class SIMoNeNet. The same function as in simone package is used.
}
\usage{
\method{plot}{SIMoNeNet}(x, name = x[["name"]], ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
An object of class SIMoNeNet
}
  \item{name}{
%%     ~~Describe \code{name} here~~
The name to be displayed as title in the plot
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from the generic plot function. Not used here.
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{getSIMoNeNet}}
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
