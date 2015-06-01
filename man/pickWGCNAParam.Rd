\name{pickWGCNAParam}
\alias{pickWGCNAParam}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Pick WGCNA parameters
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function to help in choosing the WGCNA soft threshold parameter parameter, with a series of plot.
}
\usage{
pickWGCNAParam(DEGeneExpr, Alphas = c(c(1:10), seq(from = 12, to = 20, by = 2)),
	AThreshold = 0.85, interactiveMode = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
Object of class DEGeneExpr
}
  \item{Alphas}{
%%     ~~Describe \code{Alphas} here~~
The series of soft threshold parameters to test
}
  \item{AThreshold}{
%%     ~~Describe \code{AThreshold} here~~
Adjacency threshold to be displayed on plots
}
  \item{interactiveMode}{
%%     ~~Describe \code{interactiveMode} here~~
Boolean variable indicating whether the plots are in interactive mode. If false, it is useful for automatically saving plots in a single pdf file.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Firstly, this function plots adjacency scores as a function of similarity scores, with different soft threshold parameters. Secondly, it displays network connectivity with different alpha values (with horizontal dashed lines at 0.05, 0.1 and 0.25 of total number of possible edges). In the same way, the next plots display maximal p-values, mean node connectivities, minimal spearman's rhos as a function of alpha values. Next plots show distributions of spearman's rhos (absolute values) and of p-values (logarithm scale). Finally, we can see a plot displaying spearman's p-values as a function of absolute values of rhos, with an horizontal dash line representing a p-value of 0.05 and a vertical one showing the rho for which we are the nearest to a p-value of 0.05.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{WGCNANet}}, \code{\link{WGCNANet.default}}, \code{\link{getWGCNANet}}, \code{\link{print.WGCNANet}}, \code{\link{summary.WGCNANet}}, \code{\link{export.WGCNANet}}, \code{\link{compareGaussNetworks}}
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
