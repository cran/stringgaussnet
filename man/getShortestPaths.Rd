\name{getShortestPaths}
\alias{getShortestPaths}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Get shortest paths between given nodes in STRING network.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is dedicated to compute shortest paths and to shrink a STRING network between genes selected by the user.
}
\usage{
getShortestPaths(Network, SelectedGenes = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Network}{
Object of class STRINGNet
}
  \item{SelectedGenes}{
Genes to keep after computation of shortest paths. If equals to 0, initial nodes from DE genes analysis results are selected.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Shortest paths are computed with the Dijkstra's algorithm from the package igraph.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class ShortPathSTRINGNet.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{ShortPathSTRINGNet}}, \code{\link{ShortPathSTRINGNet.default}}, \code{\link{print.ShortPathSTRINGNet}}, \code{\link{summary.ShortPathSTRINGNet}}, \code{\link{export.ShortPathSTRINGNet}}, \code{\link{FilterEdges.ShortPathSTRINGNet}}
}
\examples{
data(SpADataExpression)
data(SpADEGenes)
SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# SpASTRINGNet<-getSTRINGNet(SpAData)
# Can be longer.

# SpASTRINGNet<-getSTRINGNet(SpAData,AddAnnotations=FALSE)
# print(SpASTRINGNet,5)
# summary(SpASTRINGNet)
# PPISpASTRINGNet<-selectInteractionTypes(SpASTRINGNet,
#	c("coexpression","experimental","knowledge"),0.9)

# shortPathSpANet<-getShortestPaths(PPISpASTRINGNet)
# shortPathSpANet<-FilterEdges(shortPathSpANet,2.2)
# print(shortPathSpANet,5)
# summary(shortPathSpANet)
}
