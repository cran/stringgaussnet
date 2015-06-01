\name{computeSimilarities}
\alias{computeSimilarities}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Compute similarities for WGCNA
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function computes spearman's rhos from an expression data matrix and transforms it into similarity score. This function is used in getWGCNANet().
}
\usage{
computeSimilarities(DEGeneExpr)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
Object of class DEGeneExpr
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The similarity score S = (1+rho) / 2. In this way, S is always positive while still keeping the correlation sign.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A matrix of similarity scores.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{getWGCNANet}}
}
