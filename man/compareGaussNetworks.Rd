\name{compareGaussNetworks}
\alias{compareGaussNetworks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Compare gaussian networks
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function to compare gaussian networks. It was originally created to compare between SIMoNe and WGCNA networks, but you can compare any network with nodes in common.
}
\usage{
compareGaussNetworks(Network1, Network2, Names = c("Network1", "Network2"),
	Colors = c("yellow", "blue", "green"), interactiveMode = T, RhoThreshold = 0.4,
	PValueThreshold = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Network1}{
%%     ~~Describe \code{Network1} here~~
First gaussian network to compare
}
  \item{Network2}{
%%     ~~Describe \code{Network2} here~~
Second gaussian network to compare
}
  \item{Names}{
%%     ~~Describe \code{Names} here~~
Names attributed to networks
}
  \item{Colors}{
%%     ~~Describe \code{Colors} here~~
Colors attributed to first, second and common networks
}
  \item{interactiveMode}{
%%     ~~Describe \code{interactiveMode} here~~
Boolean variable indicating whether the plots are in interactive mode. If false, it is useful for automatically saving plots in a single pdf file.
}
  \item{RhoThreshold}{
%%     ~~Describe \code{RhoThreshold} here~~
Threshold to display vertical dashed line in the last plot
}
  \item{PValueThreshold}{
%%     ~~Describe \code{PValueThreshold} here~~
Threshold to display horizontal dashed line in the last plot
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Firstly, the function plots a venn diagram to compare network connectivities. Then we can see a series of boxplots displaying absolute values of rhos and spearman's p-values in the first network, the second network and the common network. Afterwards, we see mean node connectivities in each network, and finally a plot of spearman's p-values as a function of rhos.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{compareFactorNetworks}}
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
