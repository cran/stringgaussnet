\name{applyStyle}
\alias{applyStyle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Apply style to a network in Cytoscape
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function helps to apply an existing style to particular network in a Cytoscape session, with the use of the cyREST plugin.
}
\usage{
applyStyle(style.name, network.suid, port.number = 1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{style.name}{
%%     ~~Describe \code{style.name} here~~
The name of the existing style
}
  \item{network.suid}{
%%     ~~Describe \code{network.suid} here~~
The network ID in the cytoscape session
}
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The style must exist in the Cytoscape session. This function is already included in addGraphToCytoscape().
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addGraphToCytoscape}}, \code{\link{addNetworkStyle}}
}
