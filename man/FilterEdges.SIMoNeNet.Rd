\name{FilterEdges.SIMoNeNet}
\alias{FilterEdges.SIMoNeNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Filter edges in SIMoNeNet
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Function to filter on theta score or spearman's statistics in a SIMoNeNet object.
}
\usage{
\method{FilterEdges}{SIMoNeNet}(x, Threshold, Superior = T, AttributeFilter = "Rho",
	Absolute = T, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{SIMoNeNetwork} here~~
Object of class SIMoNeNet
}
  \item{Threshold}{
%%     ~~Describe \code{Threshold} here~~
Threshold used to filter on edge attribute
}
  \item{Superior}{
%%     ~~Describe \code{Superior} here~~
Boolean variable indicating whether values must be superior or inferior to the threshold
}
  \item{AttributeFilter}{
%%     ~~Describe \code{AttributeFilter} here~~
Character indicating on which edge attribute to filter. Can be "Rho", "P.Value" or "Theta".
}
  \item{Absolute}{
%%     ~~Describe \code{Absolute} here~~
Boolean indicating whether the attribute must be transformed into absolute values before filtering
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters. Not used here
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Object of class SIMoNeNet with filtered edges
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{SIMoNeNet}}, \code{\link{SIMoNeNet.default}}, \code{\link{getSIMoNeNet}}, \code{\link{print.SIMoNeNet}}, \code{\link{summary.SIMoNeNet}}, \code{\link{export.SIMoNeNet}}, \code{\link{pickSIMoNeParam}}
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
