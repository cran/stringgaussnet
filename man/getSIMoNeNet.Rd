\name{getSIMoNeNet}
\alias{getSIMoNeNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Infer SIMoNe network from expression data
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function infers a SIMoNe network from expression data. This gives a non-supervised gaussian network with partial correlation computations.
}
\usage{
getSIMoNeNet(DEGeneExpr, NEdges = NA, ClusterMethod = "both", AddAnnotations = F,
	MartDataset = "hsapiens_gene_ensembl")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
Object of class DEGeneExpr
}
  \item{NEdges}{
%%     ~~Describe \code{NEdges} here~~
Criter selection of SIMoNe model. Can be the number of edges, 'BIC' or 'AIC'. If it is set to NA, the function chooses the number of edges by computing the mean between those with maximal AIC and BIC scores.
}
  \item{ClusterMethod}{
%%     ~~Describe \code{ClusterMethod} here~~
Can be TRUE, FALSE, or 'both'. If it is set to 'both', the function computes networks with and without clustering constraints, and pick common edges between the both.
}
  \item{AddAnnotations}{
%%     ~~Describe \code{AddAnnotations} here~~
Boolean variable indicating whether gene annotations must be added through biomaRt
}
  \item{MartDataset}{
%%     ~~Describe \code{MartDataset} here~~
Which mart dataset to use for querying gene annotations through biomaRt. See getMartDatasets() for some help.
}
}
\note{
%%  ~~ If necessary, more details than the description above ~~
A precaution must be taken by choosing the parameters, and the expression data matrix dimensions. You can use pickSIMoNeParam() to help in the choice of parameters.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class SIMoNeNet. See SIMoNeNet.default() for more details.
}
\references{
%% ~put references to the literature/web site here ~
Chiquet, J. et al. SIMoNe Statistical Inference for MOdular NEtworks. Bioinforma. Oxf. Engl. 25, 417 (2009).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{SIMoNeNet}}, \code{\link{SIMoNeNet.default}}, \code{\link{print.SIMoNeNet}}, \code{\link{summary.SIMoNeNet}}, \code{\link{export.SIMoNeNet}}, \code{\link{FilterEdges.SIMoNeNet}}, \code{\link{pickSIMoNeParam}}
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
