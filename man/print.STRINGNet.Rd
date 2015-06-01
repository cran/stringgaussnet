\name{print.STRINGNet}
\alias{print.STRINGNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Print function for object of class STRINGNet.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically object of class STRINGNet, with previews of edge and node attributes.
}
\usage{
\method{print}{STRINGNet}(x, nlimit = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Object of class STRINGNet
}
  \item{nlimit}{
%%     ~~Describe \code{nlimit} here~~
Which number of lines to preview for data frames
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from generic print function
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{STRINGNet}}, \code{\link{STRINGNet.default}}, \code{\link{getSTRINGNet}}, \code{\link{summary.STRINGNet}}, \code{\link{export.STRINGNet}}
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
\keyword{internal}
