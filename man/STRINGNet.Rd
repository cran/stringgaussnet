\name{STRINGNet}
\alias{STRINGNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Generic function for objects of class STRINGNet.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Generic function for objects of class STRINGNet. See other functions for more details.
}
\usage{
STRINGNet(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Default parameter for generic functions
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{STRINGNet.default}}, \code{\link{getSTRINGNet}}, \code{\link{print.STRINGNet}}, \code{\link{summary.STRINGNet}}, \code{\link{export.STRINGNet}}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
