\name{print.MultiDEGeneExpr}
\alias{print.MultiDEGeneExpr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Print function for object of class MultiDEGeneExpr
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function displays specifically object of class MultiDEGeneExpr, with previews of expression data and results from DE genes analysis for each item.
}
\usage{
\method{print}{MultiDEGeneExpr}(x, nlimit = Inf, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
Object of class MultiDEGeneExpr
}
  \item{nlimit}{
%%     ~~Describe \code{nlimit} here~~
Which number of lines to preview for data frames
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
Additional parameters from generic print function
}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{MultiDEGeneExpr}}, \code{\link{MultiDEGeneExpr.default}}
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
# print(MultiSpAData)
# MultiSpANetworks<-MultiNetworks(MultiSpAData,
#	SelectInteractionsSTRING=c("coexpression","experimental","knowledge"),STRINGThreshold=0.9,
#	FilterSIMoNeOptions=list(Threshold=0.4),Factors=StatusFactor,
#	STRINGOptions=list(AddAnnotations=FALSE),SIMoNeOptions=list(AddAnnotations=FALSE),
#	WGCNAOptions=list(AddAnnotations=FALSE))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
