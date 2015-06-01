\name{FilterEdges.FactorNetworks}
\alias{FilterEdges.FactorNetworks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Filter edges in FactorNetworks
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Function to filter on edge attribute in an FactorNetworks object.
}
\usage{
\method{FilterEdges}{FactorNetworks}(x, Threshold, Superior = T, AttributeFilter = "Rho",
	Absolute = T, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
An object of class FactorNetworks
}
  \item{Threshold}{
%%     ~~Describe \code{Threshold} here~~
Threshold used to filter on edge attribute
}
  \item{Superior}{
%%     ~~Describe \code{Superior} here~~
Boolean variable indicating whether values must be superior or inferior to the threshold
}
  \item{AttributeFilter}{
%%     ~~Describe \code{AttributeFilter} here~~
Character indicating on which edge attribute to filter
}
  \item{Absolute}{
%%     ~~Describe \code{Absolute} here~~
Boolean indicating whether the attribute must transformed into absolute values before filtering
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters. Not used here
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Object of class FactorNetworks with filtered edges
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FactorNetworks}}, \code{\link{FactorNetworks.default}}, \code{\link{print.FactorNetworks}}
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
}
