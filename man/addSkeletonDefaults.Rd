\name{addSkeletonDefaults}
\alias{addSkeletonDefaults}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add default values for Cytoscape styles
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is called by addNetworkStyle() to add common default values for styles of all network classes in the stringaussnet package.
}
\usage{
addSkeletonDefaults(defaults, Annotations)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{defaults}{
%%     ~~Describe \code{defaults} here~~
A list where will be added the default attributes
}
  \item{Annotations}{
%%     ~~Describe \code{Annotations} here~~
A boolean variable indicating whether gene annotations were added to the network and then to account this in the node style
}
}
\details{
If annotations were added, then the node border is a little wider.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
The defaults list updated, containing added JSON-like lists (converted to JSON objects by the addNetworkStyle function).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addSkeletonMappings}}, \code{\link{addNetworkStyle}}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
