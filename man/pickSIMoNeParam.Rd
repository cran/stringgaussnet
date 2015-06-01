\name{pickSIMoNeParam}
\alias{pickSIMoNeParam}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Pick SIMoNe parameters
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function to help in choosing the SIMoNe parameter, and most particularly which model criterion, with a series of plot.
}
\usage{
pickSIMoNeParam(DEGeneExpr, ClusterMethod = F, NEdges = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
Object of class DEGeneExpr
}
  \item{ClusterMethod}{
%%     ~~Describe \code{ClusterMethod} here~~
Boolean variable indicating whether using clustering constraint or not
}
  \item{NEdges}{
%%     ~~Describe \code{NEdges} here~~
If clustering constraint is used, on which number of edges to do it. If it is set to NA, the function chooses the number of edges by computing the mean between those with maximal AIC and BIC scores from network without clustering constraint.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
The series of plots are directly taken from the function plot() of simone package.
}
\references{
%% ~put references to the literature/web site here ~
Chiquet, J. et al. SIMoNe Statistical Inference for MOdular NEtworks. Bioinforma. Oxf. Engl. 25, 417 (2009).
}
\note{
%%  ~~further notes~~
A precaution must be taken by choosing the parameters, and the expression data matrix dimensions.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{SIMoNeNet}}, \code{\link{SIMoNeNet.default}}, \code{\link{getSIMoNeNet}}, \code{\link{print.SIMoNeNet}}, \code{\link{summary.SIMoNeNet}}, \code{\link{export.SIMoNeNet}}, \code{\link{FilterEdges.SIMoNeNet}}
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
