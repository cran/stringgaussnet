\name{addMultiGraphToCytoscape}
\alias{addMultiGraphToCytoscape}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add MultiNetworks to Cytoscape
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to import an object of class MultiNetworks into a Cytoscape session. This function automatically adds network styles for each class.
}
\usage{
addMultiGraphToCytoscape(MultiNets, points.size.map = "PValue", min.points.value = 0.05,
	max.points.value = 0, points.fill.map = "FC", min.points.fill = -2,
	max.points.fill = 2, LayoutName = "force-directed", port.number = 1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{MultiNets}{
%%     ~~Describe \code{MultiNets} here~~
An object of class MultiNetworks
}
  \item{points.size.map}{
%%     ~~Describe \code{points.size.map} here~~
Node attribute for which the node size mapping is done. By default it is "PValue", which is the p-value from DE genes analysis results.
}
  \item{min.points.value}{
%%     ~~Describe \code{min.points.value} here~~
Maximum value of node attribute for which the size is minimal. By default it is 0.05.
}
  \item{max.points.value}{
%%     ~~Describe \code{max.points.value} here~~
Minimum value of node attribute for which the size is maximal. By default it is 0.
}
  \item{points.fill.map}{
%%     ~~Describe \code{points.fill.map} here~~
Node attribute for which the node color mapping is done. By default it is the fold change.
}
  \item{min.points.fill}{
%%     ~~Describe \code{min.points.fill} here~~
Minimum value for which the color mapping is done. By default it is -2.
}
  \item{max.points.fill}{
%%     ~~Describe \code{max.points.fill} here~~
Maximum value for which the color mapping is done. By default it is 2.
}
  \item{LayoutName}{
%%     ~~Describe \code{LayoutName} here~~
The layout name used to display the network in Cytoscape. By default it is "force-directed".
}
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape. By default it uses 1234.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Cytoscape must be running during the use of this function, with the activation of the cyREST plugin. Please see checkCytoscapeRunning() for more details.
This function adds network for each item in the network list, and a collection is attributed for each network class and factor level if used. This also adds automatically pre-defined styles for each network class.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addNetworkStyle}}, \code{\link{addGraphToCytoscape}}, \code{\link{MultiNetworks.default}}, \code{\link{checkCytoscapeRunning}}
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

# MultiSpAData<-MultiDEGeneExpr(GaussianSpAData,DEGeneExpr(t(SpADataExpression[18:34,]),
#	SpADEGenes[18:34,]),DEGeneExpr(t(SpADataExpression[35:51,]),SpADEGenes[35:51,]))
# MultiSpANetworks<-MultiNetworks(MultiSpAData,
#	SelectInteractionsSTRING=c("coexpression","experimental","knowledge"),STRINGThreshold=0.9,
#	FilterSIMoNeOptions=list(Threshold=0.4),Factors=StatusFactor,
#	STRINGOptions=list(AddAnnotations=F),SIMoNeOptions=list(AddAnnotations=F),
#	WGCNAOptions=list(AddAnnotations=F))

# resetCytoscapeSession()
# addMultiGraphToCytoscape(MultiSpANetworks,points.size.map="P.Value",points.fill.map="logFC")
}
