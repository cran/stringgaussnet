\name{MultiDEGeneExpr.default}
\alias{MultiDEGeneExpr.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function to create an object of class MultiDEGeneExpr
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to create an object of class MultiDEGeneExpr from multiple DEGeneExpr objects.
}
\usage{
\method{MultiDEGeneExpr}{default}(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Objects of class DEGeneExpr to gather in the new object of class MultiDEGeneExpr
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class MultiDEGeneExpr, which is a list of DEGeneExpr objects
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{MultiDEGeneExpr}}, \code{\link{print.MultiDEGeneExpr}}, \code{\link{MultiNetworks.default}}
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
