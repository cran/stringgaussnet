\name{print.DEGeneExpr}
\alias{print.DEGeneExpr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Print function for object of class DEGeneExpr.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically object of class DEGeneExpr, with previews of expression data and results from DE genes analysis.
}
\usage{
\method{print}{DEGeneExpr}(x, nlimit = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Object of class DEGeneExpr
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{DEGeneExpr}}, \code{\link{DEGeneExpr.default}}
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
