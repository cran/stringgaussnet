\name{summary.ShortPathSTRINGNet}
\alias{summary.ShortPathSTRINGNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Summary function for object of class ShortPathSTRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically a summary object of class ShortPathSTRINGNet, with summary of distance and other edge attributes.
}
\usage{
\method{summary}{ShortPathSTRINGNet}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
%%     ~~Describe \code{x} here~~
Object of class ShortPathSTRINGNet
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from generic summary function
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{ShortPathSTRINGNet}}, \code{\link{ShortPathSTRINGNet.default}}, \code{\link{getShortestPaths}}, \code{\link{print.ShortPathSTRINGNet}}, \code{\link{export.ShortPathSTRINGNet}}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
