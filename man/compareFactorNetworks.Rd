\name{compareFactorNetworks}
\alias{compareFactorNetworks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Compare levels of FactorNetworks
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function draws a series of plots to compare different levels of a factor used to infer multiple gaussian networks, with an object of class FactorNetworks.
}
\usage{
compareFactorNetworks(Networks, Colors = rainbow(length(Networks)), interactiveMode = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Networks}{
%%     ~~Describe \code{Networks} here~~
An object of class FactorNetworks
}
  \item{Colors}{
%%     ~~Describe \code{Colors} here~~
Colors to plot for each level of factor
}
  \item{interactiveMode}{
%%     ~~Describe \code{interactiveMode} here~~
Boolean variable indicating whether the plots are in interactive mode. If false, it is useful for automatically saving plots in a single pdf file.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The first plot shows the absolute values of spearman's rho in the different level groups. The second one shows p-values in those different groups. The third displays the respective numbers of edges. The last one shows node connectivities.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{FactorNetworks.default}}
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

# GlobalSIMoNeNetNF<-getSIMoNeNet(GaussianSpAData)
# GlobalSIMoNeNet<-FilterEdges(GlobalSIMoNeNetNF,0.4)

# StatusFactorSIMoNeNet<-FactorNetworks(GaussianSpAData,StatusFactor,"SIMoNe")
# StatusFactorSIMoNeNet<-FilterEdges(StatusFactorSIMoNeNet,0.4)
# compareFactorNetworks(StatusFactorSIMoNeNet)
}
