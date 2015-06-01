\name{STRINGNet.default}
\alias{STRINGNet.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function to create an object of class STRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is used by getSTRINGNet() to convert results from the STRING API into object of class STRINGNet.
}
\usage{
\method{STRINGNet}{default}(x, DEGeneExpr, GenesAnnotations = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{STRINGNonFormNet} here~~
The non-formatted STRING network obtained by getSTRINGNet.
}
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
DE genes analysis results contained in an object of class DEGeneExpr. Those will be used as primary node attributes.
}
  \item{GenesAnnotations}{
%%     ~~Describe \code{GenesAnnotations} here~~
Gene annotations got by biomaRt if it was requested by getSTRINGNet(). Those will be used as secondary node attributes.
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
- Edge attributes, with confidence scores given by STRING and multiple edges.
- Node attributes given by DE genes analysis results.
A third data frame giving gene annotations can be added if it is not null when calling the function.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{STRINGNet}}, \code{\link{getSTRINGNet}}, \code{\link{print.STRINGNet}}, \code{\link{summary.STRINGNet}}, \code{\link{export.STRINGNet}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

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
