\name{export.STRINGNet}
\alias{export.STRINGNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Export STRINGNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Function to export a STRINGNet object to a directory in standard table file formats. Those files can be imported for example into Cytoscape.
}
\usage{
\method{export}{STRINGNet}(x, dirname, overwrite = F, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Object of class STRINGNet
}
  \item{dirname}{
%%     ~~Describe \code{dirname} here~~
Directory path where will be saved network files
}
  \item{overwrite}{
%%     ~~Describe \code{overwrite} here~~
Boolean variable indicating whether the function deletes and recreates an existing directory with the same path
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters. Not used here.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This function creates two kinds of table files: edge and node attributes. All files are writen with column names at first line and with tabulations as field separator. Primary and secondary node attributes are exported in two distinct files.
}
\note{
%%  ~~further notes~~
Please notice that this functions does not create any style for cytoscape and only network structure with attributes will be saved. To import directly your network into a Cytoscape session and to save this, please report to attributed functions of the package.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{export}}, \code{\link{export.ShortPathSTRINGNet}}, \code{\link{export.SIMoNeNet}}, \code{\link{export.WGCNANet}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# SpASTRINGNet<-getSTRINGNet(SpAData)
# Can be longer.

# SpASTRINGNet<-getSTRINGNet(SpAData,AddAnnotations=FALSE)
# print(SpASTRINGNet,5)
# summary(SpASTRINGNet)
# PPISpASTRINGNet<-selectInteractionTypes(SpASTRINGNet,
#	c("coexpression","experimental","knowledge"),0.9)
# export(PPISpASTRINGNet,"PPISpASTRINGNet",T)

# shortPathSpANet<-getShortestPaths(PPISpASTRINGNet)
# shortPathSpANet<-FilterEdges(shortPathSpANet,2.2)
# print(shortPathSpANet,5)
# summary(shortPathSpANet)
# export(shortPathSpANet,"shortPathSpANet",T)
}
