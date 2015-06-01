\name{getWGCNANet}
\alias{getWGCNANet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Infer WGCNA network from expression data
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function infers a WGCNA network from expression data. This gives a gaussian network simply by filtering on correlations between expressions of each pair of genes. Dissimilarities and modules computations are not implemented, because the main purpose is to compare with SIMoNe results.
}
\usage{
getWGCNANet(DEGeneExpr, SoftThreshold = 8, AThreshold = 0.85, AddAnnotations = F,
	MartDataset = "hsapiens_gene_ensembl")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
Object of class DEGeneExpr. See DEGeneExpr.default() for more details.
}
  \item{SoftThreshold}{
%%     ~~Describe \code{SoftThreshold} here~~
Soft threshold parameter (alpha) used for adjacency computation by sigmoid function. See pickWGCNAParam() for some help.
}
  \item{AThreshold}{
%%     ~~Describe \code{AThreshold} here~~
Threshold on adjacency score for edges inference. Generally it is 0.85.
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
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class WGCNANet. See WGCNANet.default() for more details.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{WGCNANet}}, \code{\link{WGCNANet.default}}, \code{\link{print.WGCNANet}}, \code{\link{summary.WGCNANet}}, \code{\link{export.WGCNANet}}, \code{\link{pickWGCNAParam}}, \code{\link{compareGaussNetworks}}
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
