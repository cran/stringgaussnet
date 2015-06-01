\name{mergeGaussEdges}
\alias{mergeGaussEdges}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Merge gaussian networks edges
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is called by compareGaussNetworks() to merge all edges from two gaussian networks.
}
\usage{
mergeGaussEdges(Edges1, Edges2, Names)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Edges1}{
%%     ~~Describe \code{Edges1} here~~
First gaussian network to merge
}
  \item{Edges2}{
%%     ~~Describe \code{Edges2} here~~
Second gaussian network to merge
}
  \item{Names}{
%%     ~~Describe \code{Names} here~~
Names attributed to networks
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A matrix will all edges from the both networks
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{compareGaussNetworks}}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
