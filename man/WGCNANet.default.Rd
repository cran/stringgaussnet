\name{WGCNANet.default}
\alias{WGCNANet.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function to create an object of class WGCNANet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is used by getWGCNANet() to convert results from the WGCNA inference.
}
\usage{
\method{WGCNANet}{default}(x, SoftThreshold, AThreshold, Correlations, PValues, DEGeneExpr,
	GenesAnnotations = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{AdjacencyScores} here~~
Computed adjacency matrix by getWGCNANet()
}
  \item{SoftThreshold}{
%%     ~~Describe \code{SoftThreshold} here~~
Soft threshold parameter (alpha) used for adjacency computation by sigmoid function
}
  \item{AThreshold}{
%%     ~~Describe \code{AThreshold} here~~
Threshold on adjacency score for edges inference
}
  \item{Correlations}{
%%     ~~Describe \code{Correlations} here~~
Correlations (spearman's rho) matrix between all pairs of genes
}
  \item{PValues}{
%%     ~~Describe \code{PValues} here~~
Spearman's p-value computed between all pairs of genes
}
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
DE genes analysis results contained in an object of class DEGeneExpr. Those will be used as primary node attributes.
}
  \item{GenesAnnotations}{
%%     ~~Describe \code{GenesAnnotations} here~~
Gene annotations got by biomaRt if it was requested by getSIMoNeNet(). Those will be used as secondary node attributes.
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
A list with at least two data frames:
- Edge attributes, with spearman's rhos and p-values.
- Node attributes given by DE genes analysis results.
A third data frame giving gene annotations can be added if it is not null when calling the function.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{WGCNANet}}, \code{\link{getWGCNANet}}, \code{\link{print.WGCNANet}}, \code{\link{summary.WGCNANet}}, \code{\link{export.WGCNANet}}, \code{\link{pickWGCNAParam}}, \code{\link{compareGaussNetworks}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# NodesForSIMoNe<-rownames(SpADEGenes)[1:17]
# GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])

# pickWGCNAParam(GaussianSpAData)
# GlobalWGCNANet<-getWGCNANet(GaussianSpAData)
# print(GlobalWGCNANet,5)
# summary(GlobalWGCNANet)
# plot(GlobalWGCNANet)
# export(GlobalWGCNANet,"GlobalWGCNANet",T)

# compareGaussNetworks(GlobalSIMoNeNet,GlobalWGCNANet,c("SIMoNe","WGCNA"))
}
