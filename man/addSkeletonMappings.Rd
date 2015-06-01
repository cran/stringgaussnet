\name{addSkeletonMappings}
\alias{addSkeletonMappings}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Add default mappings for Cytoscape styles
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function adds common node mappings during the call of addNetworkStyle() for all network classes of the stringgaussnet package.
}
\usage{
addSkeletonMappings(mappings, Annotations, points.size.map, min.points.value,
	max.points.value, points.fill.map, min.points.fill, max.points.fill)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mappings}{
%%     ~~Describe \code{mappings} here~~
A list where will be added the mapping attributes
}
  \item{Annotations}{
%%     ~~Describe \code{Annotations} here~~
A boolean variable indicating whether gene annotations were added to the network and then to account this in the node style
}
  \item{points.size.map}{
%%     ~~Describe \code{points.size.map} here~~
Node attribute for which the node size mapping is done
}
  \item{min.points.value}{
%%     ~~Describe \code{min.points.value} here~~
Maximum value of node attribute for which the size is minimal
}
  \item{max.points.value}{
%%     ~~Describe \code{max.points.value} here~~
Minimum value of node attribute for which the size is maximal
}
  \item{points.fill.map}{
%%     ~~Describe \code{points.fill.map} here~~
Node attribute for which the node color mapping is done
}
  \item{min.points.fill}{
%%     ~~Describe \code{min.points.fill} here~~
Minimum value for which the color mapping is done
}
  \item{max.points.fill}{
%%     ~~Describe \code{max.points.fill} here~~
Maximum value for which the color mapping is done
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
If annotations were added, then the node border color depends on the cellular localization of the gene product.
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
\code{\link{addSkeletonDefaults}}, \code{\link{addNetworkStyle}}
}
