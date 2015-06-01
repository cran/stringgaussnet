\name{plot.FactorNetworks}
\alias{plot.FactorNetworks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Plot FactorNetworks
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function plots an object of class FactorNetworks for each level. The same function as in simone package is used.
}
\usage{
\method{plot}{FactorNetworks}(x, interactiveMode = T, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
An object of class FactorNetworks
}
  \item{interactiveMode}{
%%     ~~Describe \code{interactiveMode} here~~
Boolean variable indicating whether the plots are in interactive mode. If false, it is useful for automatically saving plots in a single pdf file.
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from the generic plot function. Not used here.
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FactorNetworks.default}}
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
# plot(StatusFactorSIMoNeNet)
}
