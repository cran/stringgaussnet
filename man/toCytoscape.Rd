\name{toCytoscape}
\alias{toCytoscape}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Converts from igraph to Cytoscape object
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is provided by cyREST developpers and converts an igraph object into a JSON object for Cytoscape.
}
\usage{
toCytoscape(igraphobj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{igraphobj}{
%%     ~~Describe \code{igraphobj} here~~
An object of class igraph
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A JSON object compatible for Cytoscape
}
\references{
%% ~put references to the literature/web site here ~
https://github.com/idekerlab/cy-rest-R/blob/develop/toCytoscape.R
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addGraphToCytoscape}}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
