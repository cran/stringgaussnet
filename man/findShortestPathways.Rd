\name{findShortestPathways}
\alias{findShortestPathways}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Find shortest pathways between selected nodes
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This functions finds shortest pathways between selected nodes in a distance matrix.
}
\usage{
findShortestPathways(BetweenNodesDistances, SelectedNodes)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{BetweenNodesDistances}{
%%     ~~Describe \code{BetweenNodesDistances} here~~
A distance matric computed by convertToDistGraph()
}
  \item{SelectedNodes}{
%%     ~~Describe \code{SelectedNodes} here~~
The selected nodes to keep after shortest paths conversion
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The Dijkstra's algorithm from the igraph package is used to compute shortest paths.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A list with distances, intermediates and number of intermediates given by the igraph package
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{getShortestPaths}}, \code{\link{convertToDistGraph}}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
