\name{addShortPathSTRINGNetMappings}
\alias{addShortPathSTRINGNetMappings}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add Cytoscape mapping for ShortPathSTRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to add edge mapping in a pre-defined Cytoscape style. This function is called in addNetworkStyle().
}
\usage{
addShortPathSTRINGNetMappings(mappings)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mappings}{
%%     ~~Describe \code{mappings} here~~
A list where will be added the mapping attributes
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The edge transparency depends on the distance computed by Dijkstra's algorithm. Direct interactions are displayed by black solid lines, whereas indirect interactions are displayed by blue dashed lines.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
The mappings list updated, containing added JSON-like lists (converted to JSON objects by the addNetworkStyle() function).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addNetworkStyle}}
}
