\name{ShortPathSTRINGNet.default}
\alias{ShortPathSTRINGNet.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function to create object of class ShortPathSTRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is used by getShorthestPaths() to convert results from the computation of shortest paths from STRING network.
}
\usage{
\method{ShortPathSTRINGNet}{default}(x, DEGenes, GenesAnnotations = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{ShortPathsNetwork} here~~
The non-formatted shortest paths STRING network obtained by getShortestPaths.
}
  \item{DEGenes}{
%%     ~~Describe \code{DEGenes} here~~
DE genes analysis results, which are used for primary node attributes.
}
  \item{GenesAnnotations}{
%%     ~~Describe \code{GenesAnnotations} here~~
Gene annotations got by biomaRt if it was requested by getSTRINGNetwork(). Those will be used as secondary node attributes.
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters. Not used here.
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A list with at least two data frames:
- Edge attributes, with distances, intermediate nodes separated by commas, and number of intermediate nodes.
- Node attributes given by DE genes analysis results.
A third data frame giving gene annotations can be added if it is not null when calling the function.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{ShortPathSTRINGNet}}, \code{\link{getShortestPaths}}, \code{\link{print.ShortPathSTRINGNet}}, \code{\link{summary.ShortPathSTRINGNet}}, \code{\link{export.ShortPathSTRINGNet}}
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
