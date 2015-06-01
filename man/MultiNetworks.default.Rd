\name{MultiNetworks.default}
\alias{MultiNetworks.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function to create an object of class MultiNetworks
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to create an object of class MultiNetworks from an object of class MultiDEGeneExpr. This is a wrapper of all methods available in the stringgaussnet package.
}
\usage{
\method{MultiNetworks}{default}(x, Methods = c("STRING", "SIMoNe", "WGCNA"), STRINGOptions = NULL,
	SIMoNeOptions = NULL, WGCNAOptions = NULL, SelectInteractionsSTRING = NULL,
	STRINGThreshold = 0, FilterShortPathOptions = NULL, FilterSIMoNeOptions = NULL,
	Factors = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{MultiObj} here~~
An object of class MultiDEGeneExpr
}
  \item{Methods}{
%%     ~~Describe \code{Methods} here~~
A character vector indicating which network construction methods to use, among "STRING", "SIMoNe" and "WGCNA"
}
  \item{STRINGOptions}{
%%     ~~Describe \code{STRINGOptions} here~~
List with parameters available in the function getSTRINGNet()
}
  \item{SIMoNeOptions}{
%%     ~~Describe \code{SIMoNeOptions} here~~
List with parameters available in the function getSIMoNeNet()
}
  \item{WGCNAOptions}{
%%     ~~Describe \code{WGCNAOptions} here~~
List with parameters available in the function getWGCNANet()
}
  \item{SelectInteractionsSTRING}{
%%     ~~Describe \code{SelectInteractionsSTRING} here~~
A character vector indicating which interaction sources to select in STRINGNet. Please see selectInteractionTypes() for more details.
}
  \item{STRINGThreshold}{
%%     ~~Describe \code{STRINGThreshold} here~~
Confidence score threshold for edge filtering in STRINGNet
}
  \item{FilterShortPathOptions}{
%%     ~~Describe \code{FilterShortPathOptions} here~~
List with parameters available in the function FilterEdges.ShortPathSTRINGNet()
}
  \item{FilterSIMoNeOptions}{
%%     ~~Describe \code{FilterSIMoNeOptions} here~~
List with parameters available in the function FIlterEdges.SIMoNeNet()
}
  \item{Factors}{
%%     ~~Describe \code{Factors} here~~
A vector of factors attributed to samples. Must gather all samples present in x.
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters. Not used here.
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class MultiNetworks, which is a list of different network objects. If STRING method is used, shortest paths between initial nodes are computed.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{MultiNetworks}}, \code{\link{print.MultiNetworks}}, \code{\link{MultiDEGeneExpr.default}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# data(SpASamples)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# StatusFactor<-paste(SpASamples$status,SpASamples$b27,sep=".")
# names(StatusFactor)=SpASamples$chipnum

# NodesForSIMoNe<-rownames(SpADEGenes)[1:17]
# GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])

# MultiSpAData<-MultiDEGeneExpr(GaussianSpAData,DEGeneExpr(t(SpADataExpression[18:34,]),
#	SpADEGenes[18:34,]),DEGeneExpr(t(SpADataExpression[35:51,]),SpADEGenes[35:51,]))
# MultiSpANetworks<-MultiNetworks(MultiSpAData,
#	SelectInteractionsSTRING=c("coexpression","experimental","knowledge"),STRINGThreshold=0.9,
#	FilterSIMoNeOptions=list(Threshold=0.4),Factors=StatusFactor,
#	STRINGOptions=list(AddAnnotations=FALSE),SIMoNeOptions=list(AddAnnotations=FALSE),
#	WGCNAOptions=list(AddAnnotations=FALSE))
}
