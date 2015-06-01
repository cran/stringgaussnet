\name{FilterEdges.ShortPathSTRINGNet}
\alias{FilterEdges.ShortPathSTRINGNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Filter edges in ShortPathSTRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Function to filter on edge distance or number of intermediates in a ShortPathSTRINGNet object.
}
\usage{
\method{FilterEdges}{ShortPathSTRINGNet}(x, Threshold, AttributeFilter = "Distance", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{ShortPathSTRINGNetwork} here~~
Object of class ShortPathSTRINGNet
}
  \item{Threshold}{
%%     ~~Describe \code{Threshold} here~~
Maximum threshold used to filter on edge attributes
}
  \item{AttributeFilter}{
%%     ~~Describe \code{AttributeFilter} here~~
Character indicating on which edge attribute to filter. Can be "Distance" or "NIntermediates".
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
Object of class ShortPathSTRINGNet with filtered edges.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FilterEdges}}, \code{\link{FilterEdges.SIMoNeNet}}, \code{\link{FilterEdges.FactorNetworks}}
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
