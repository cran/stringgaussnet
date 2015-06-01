\name{convertToDistGraph}
\alias{convertToDistGraph}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Convert to distance graph from STRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function converts confidence scores into distance from a STRINGNet object, in order to compute the shortest paths. This function is called in getShortestPaths().
}
\usage{
convertToDistGraph(Network)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Network}{
%%     ~~Describe \code{Network} here~~
An object of class STRINGNet
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Combined scores S are converted to distances D for each interaction i with Di=max(S)+1-Si.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A distance matrix converted from a STRINGNet object
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{getShortestPaths}}
}
