\name{FilterEdges}
\alias{FilterEdges}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Filter edges on network.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Generic function to filter on edge attributes for following network objects: ShortPathSTRINGNet, SIMoNeNet and FactorNetworks.
}
\usage{
FilterEdges(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Generic network object
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters in specific functions.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
For STRINGNet, selectInteractionTypes has already an option to filter on edge attributes. WGCNANet is already a correlation filtering process.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FilterEdges.ShortPathSTRINGNet}}, \code{\link{FilterEdges.SIMoNeNet}}, \code{\link{FilterEdges.FactorNetworks}}
}
\keyword{internal}
