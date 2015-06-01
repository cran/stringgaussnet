\name{addNetworkStyle}
\alias{addNetworkStyle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add network style to Cytoscape
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to add pre-defined styles to properly display networks from package stringgaussnet in Cytoscape.
}
\usage{
addNetworkStyle(style.name, style.class, Annotations = F, points.size.map = "PValue",
	min.points.value = 0.05, max.points.value = 0, points.fill.map = "FC",
	min.points.fill = -2, max.points.fill = 2, port.number = 1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{style.name}{
%%     ~~Describe \code{style.name} here~~
The name you want to give to the style
}
  \item{style.class}{
%%     ~~Describe \code{style.class} here~~
The class of network used for edge mapping. Can be either "STRINGNet", "ShortPathSTRINGNet", "SIMoNeNet" or "WGCNANet". It depends on the class of network you wish to import.
}
  \item{Annotations}{
%%     ~~Describe \code{Annotations} here~~
Does the style must include gene annotations? It depends if you wanted to add annotations during your network construction.
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
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape. By default it uses 1234.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This function only adds a pre-defined style to the Cytoscape session, and does not import a network object. Cytoscape must be running with the plugin cyREST installed. This is much advised to use this function before importing your networks into the Cytoscape session, excepted for addMultiGraphToCytoscape().
The node size mapping is inversely proportional to the selected attribute. This is in the aim to preferably see genes with lowest p-values. The node color is blue for under-expressed genes, and red for over-expressed genes, depending on the fold change in DE genes analysis results. The node mapping is common for all network classes in the stringgaussnet package, whereas the edge mapping is more specific.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addGraphToCytoscape}}, \code{\link{checkCytoscapeRunning}}, \code{\link{addSTRINGNetMappings}}, \code{\link{addShortPathSTRINGNetMappings}}, \code{\link{addSIMoNeNetMappings}}, \code{\link{addWGCNANetMappings}}
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
