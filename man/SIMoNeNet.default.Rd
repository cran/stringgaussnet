\name{SIMoNeNet.default}
\alias{SIMoNeNet.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function to create object of class SIMoneNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is used by getSIMoNeNet() to convert results from the SIMoNe inference.
}
\usage{
\method{SIMoNeNet}{default}(x, DEGeneExpr, GenesAnnotations = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{SIMoNeGraph} here~~
The non-formatted SIMoNe network obtained by getSIMoNeNetwork
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
- Edge attributes, with theta scores, spearman's rhos and p-values.
- Node attributes given by DE genes analysis results.
A third data frame giving gene annotations can be added if it is not null when calling the function.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{SIMoNeNet}}, \code{\link{getSIMoNeNet}}, \code{\link{print.SIMoNeNet}}, \code{\link{summary.SIMoNeNet}}, \code{\link{export.SIMoNeNet}}, \code{\link{FilterEdges.SIMoNeNet}}, \code{\link{pickSIMoNeParam}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# NodesForSIMoNe<-rownames(SpADEGenes)[1:17]
# GaussianSpAData<-DEGeneExpr(t(SpADataExpression[NodesForSIMoNe,]),SpADEGenes[NodesForSIMoNe,])

# pickSIMoNeParam(GaussianSpAData)

# GlobalSIMoNeNet<-getSIMoNeNet(GaussianSpAData)
# GlobalSIMoNeNet<-FilterEdges(GlobalSIMoNeNet,0.4)
# print(GlobalSIMoNeNet,5)
# summary(GlobalSIMoNeNet)
# plot(GlobalSIMoNeNet)

# export(GlobalSIMoNeNet,"GlobalSIMoNeNet",T)
}
