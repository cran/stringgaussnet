\name{saveCytoscapeSession}
\alias{saveCytoscapeSession}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Save Cytoscape session
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to save all networks and styles from a Cytoscape session in a file.
}
\usage{
saveCytoscapeSession(filepath = "stringgaussnet_networks", overwrite = F, absolute = F,
	port.number = 1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filepath}{
%%     ~~Describe \code{filepath} here~~
Where will be saved the Cytoscape session
}
  \item{overwrite}{
%%     ~~Describe \code{overwrite} here~~
A boolean variable indicating whether the file must be overwritten
}
  \item{absolute}{
%%     ~~Describe \code{absolute} here~~
A boolean variable indicating whether filepath is an absolute path. If not, the R work directory is added before filepath.
}
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape. By default it uses 1234.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The file extension .cys is automatically added in the file path. The variable absolute is important because the work directories for cyREST and R are not the same.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addGraphToCytoscape}}
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
# saveCytoscapeSession("SIMoNeNet")
}
