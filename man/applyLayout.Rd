\name{applyLayout}
\alias{applyLayout}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Apply layout to a network in Cytoscape
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This functions allows to apply a given layout to a particular network in Cytoscape, with the use of the cyREST plugin.
}
\usage{
applyLayout(network.suid, layout.name, port.number = 1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{network.suid}{
%%     ~~Describe \code{network.suid} here~~
The network ID in the cytoscape session
}
  \item{layout.name}{
%%     ~~Describe \code{layout.name} here~~
The layout name to display the network in Cytoscape
}
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Layouts from yFiles must be set manually in Cytoscape, because it can not be used by cyREST for license use reasons.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addGraphToCytoscape}}
}
