\name{as.igraph.stringgaussnet}
\alias{as.igraph.stringgaussnet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Convert stringgaussnet network into igraph
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function converts any network object from the package stringgaussnet into an igraph object (package igraph). 
}
\usage{
\method{as.igraph}{stringgaussnet}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{Network} here~~
A network object from stringgaussnet package. Can be of class STRINGNet, ShortPathSTRINGNet, SIMoNeNet or WGCNANet.
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters. Not used here
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This function is used in this package to convert a network into an igraph object, and then into a json object in order to import the network into Cytoscape. But you can use this function anywhere in your R script if you wish to manipulate your network with the igraph package.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An igraph object with non-directed edges (can be multiple).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addGraphToCytoscape}}
}
\examples{
data(SpADataExpression)
data(SpADEGenes)
SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)
NodesForSIMoNe<-rownames(SpADEGenes)[1:17]
GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])
GlobalSIMoNeNet<-getSIMoNeNet(GaussianSpAData,AddAnnotation=FALSE)
iGraphSpAObj<-as.igraph.stringgaussnet(GlobalSIMoNeNet)
}
