\name{addSIMoNeNetMappings}
\alias{addSIMoNeNetMappings}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add Cytoscape mapping for SIMoNeNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to add edge mapping in a pre-defined Cytoscape style. This function is called in addNetworkStyle().
}
\usage{
addSIMoNeNetMappings(mappings)
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
The edge colors depend on spearman's rho values. This is red for positive correlations, and blue for negative correlations. The edge width is inversely proportionnal to the spearman's test p-value.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
The mappings list updated, containing added JSON-like lists (converted to JSON objects by the addNetworkStyle function).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addNetworkStyle}}
}
