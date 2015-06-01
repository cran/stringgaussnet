\name{DEGeneExpr}
\alias{DEGeneExpr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Generic function for objects of class DEGeneExpr.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Generic function for objects of class DEGeneExpr. See other functions for more details.
}
\usage{
DEGeneExpr(x, ...)
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
\code{\link{print.DEGeneExpr}}, \code{\link{DEGeneExpr.default}}
}
\examples{
data(SpADataExpression)
data(SpADEGenes)
SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)
print(SpAData)
print(SpAData,10) # Prints only 10 first lines of each matrix.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
