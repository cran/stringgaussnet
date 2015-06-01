\name{summary.STRINGNet}
\alias{summary.STRINGNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Summary function for object of class STRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically a summary object of class STRINGNet, with summary of each kind of interactions, with a distinction of interactions between initial nodes or not.
}
\usage{
\method{summary}{STRINGNet}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
%%     ~~Describe \code{x} here~~
Object of class STRINGNet
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from generic summary function
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{STRINGNet}}, \code{\link{STRINGNet.default}}, \code{\link{getSTRINGNet}}, \code{\link{print.STRINGNet}}, \code{\link{export.STRINGNet}}
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
