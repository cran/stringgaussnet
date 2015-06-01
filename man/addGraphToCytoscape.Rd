\name{addGraphToCytoscape}
\alias{addGraphToCytoscape}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add network to Cytoscape
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to import a network created from the stringgaussnet package into Cytoscape, with the use of the cyREST plugin.
}
\usage{
addGraphToCytoscape(Network, Collection = class(Network),
	Name = deparse(substitute(Network)), LayoutName = "force-directed",
	StyleName = Collection, port.number = 1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Network}{
%%     ~~Describe \code{Network} here~~
A network object from the stringgaussnet package. Can be of class STRINGNet, ShortPathSTRINGNet, SIMoNeNet or WGCNANet.
}
  \item{Collection}{
%%     ~~Describe \code{Collection} here~~
The collection name used in Cytoscape. By default it is the network object class.
}
  \item{Name}{
%%     ~~Describe \code{Name} here~~
The network name used in Cytoscape
}
  \item{LayoutName}{
%%     ~~Describe \code{LayoutName} here~~
The layout name to display the network in Cytoscape. By default it is "force-directed".
}
  \item{StyleName}{
%%     ~~Describe \code{StyleName} here~~
The style name to display the network in Cytoscape. We advice you to use addNetworkStyle() before this function. By default it is the collection name.
}
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape. By default it uses 1234.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Cytoscape must be running during the use of this function, with the activation of the cyREST plugin. Please see checkCytoscapeRunning() for more details.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
The network ID in the Cytoscape session.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addNetworkStyle}}, \code{\link{checkCytoscapeRunning}}
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

# resetCytoscapeSession()
# addNetworkStyle("SIMoNeNet",class(GlobalSIMoNeNet),points.size.map="P.Value",
#	points.fill.map="logFC")
# NetId<-addGraphToCytoscape(GlobalSIMoNeNet)
}
