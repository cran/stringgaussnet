\name{selectInteractionTypes}
\alias{selectInteractionTypes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Select interaction sources in STRINGNet object
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to select specific interaction sources in an object of class STRINGNet, for example coexpression or experimental. This is also possible to filter on confidence score with this function.
}
\usage{
selectInteractionTypes(Network, InteractionTypes = "All", Threshold = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Network}{
%%     ~~Describe \code{Network} here~~
Object of class STRINGNet
}
  \item{InteractionTypes}{
%%     ~~Describe \code{InteractionTypes} here~~
Character vector indicating which interaction sources you are looking for. See details for possible values. If "All", no selection is made and only filtering on Threshold is processed.
}
  \item{Threshold}{
%%     ~~Describe \code{Threshold} here~~
Numeric. Minimum threshold of confident score for selecting edges.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Interaction sources can be coexpression, cooccurence, experimental, knowledge, neighborhood or textmining. Search for STRING DB help page to know what mean those interaction sources.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A new object of class STRINGNet after edge filtering.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{STRINGNet}}, \code{\link{STRINGNet.default}}, \code{\link{getSTRINGNet}}, \code{\link{print.STRINGNet}}, \code{\link{summary.STRINGNet}}, \code{\link{export.STRINGNet}}
}
\examples{
data(SpADataExpression)
data(SpADEGenes)
SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# SpASTRINGNet<-getSTRINGNet(SpAData)
# Can be longer.

# SpASTRINGNet<-getSTRINGNet(SpAData,AddAnnotations=FALSE)
# print(SpASTRINGNet,5)
# summary(SpASTRINGNet)
# PPISpASTRINGNet<-selectInteractionTypes(SpASTRINGNet,
#	c("coexpression","experimental","knowledge"),0.9)

# shortPathSpANet<-getShortestPaths(PPISpASTRINGNet)
# shortPathSpANet<-FilterEdges(shortPathSpANet,2.2)
# print(shortPathSpANet,5)
# summary(shortPathSpANet)
}
