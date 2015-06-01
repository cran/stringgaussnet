\name{checkCytoscapeRunning}
\alias{checkCytoscapeRunning}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Check Cytoscape running
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function checks if Cytoscape is running in your os. It is used in any function to import network into Cytoscape. This communication with Cytoscape is done with the plugin cyREST.
}
\usage{
checkCytoscapeRunning(port.number = 1234)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{port.number}{
%%     ~~Describe \code{port.number} here~~
The local port number used by cyREST plugin to communicate with Cytoscape. By default it uses 1234.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
If you wish to download Cytoscape, please go here: http://www.cytoscape.org/download.php
If you wish to install the Cytoscape plugin cyREST, please go here: http://apps.cytoscape.org/apps/cyrest
cyREST works as a local API to communicate with Cytoscape through the use of URIs.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Returns TRUE in case of success, or an error message in case of failure.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{addGraphToCytoscape}}
}
\examples{
# checkCytoscapeRunning()
}
