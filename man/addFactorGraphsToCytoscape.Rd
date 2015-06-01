\name{addFactorGraphsToCytoscape}
\alias{addFactorGraphsToCytoscape}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add FactorNetworks object to Cytoscape
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to import an object of class FactorNetworks into a Cytoscape session.
}
\usage{
addFactorGraphsToCytoscape(FactorNets, Name=deparse(substitute(FactorNets)),
	LayoutNames=rep("force-directed",length(FactorNets)),
	StyleNames=sapply(FactorNets,function(x) class(x[["Network"]])), port.number=1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{FactorNets}{
%%     ~~Describe \code{FactorNets} here~~
An object of class FactorNetworks
}
  \item{Name}{
%%     ~~Describe \code{Name} here~~
The name of the added network in each collection
}
  \item{LayoutNames}{
%%     ~~Describe \code{LayoutNames} here~~
The layout name to display the network in Cytoscape. By default it is "force-directed".
}
  \item{StyleNames}{
%%     ~~Describe \code{StyleNames} here~~
The style name to display the network in Cytoscape. We advice you to use addNetworkStyle() before this function. By default it is the network object class.
}
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape. By default it uses 1234.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This function creates a collection for each level of factor, and adds the corresponding network in this collection. Cytoscape must be running during the use of this function.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{checkCytoscapeRunning}}, \code{\link{addNetworkStyle}}, \code{\link{FactorNetworks.default}}
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
#	points.fill.map="logFC")
# addFactorGraphsToCytoscape(StatusFactorSIMoNeNet)
}
