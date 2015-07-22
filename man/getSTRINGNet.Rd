\name{getSTRINGNet}
\alias{getSTRINGNet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Get STRING network from gene identifiers
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function gets PPIs interactions between given genes through the STRING API. This functions uses an URI to query STRING, then an internet connection is required.
}
\usage{
getSTRINGNet(DEGeneExpr, Identifier = 0, NAdditionalNodes = NA, Species = 9606,
	ConvertAliases = T, AddAnnotations = F, MartDataset = "hsapiens_gene_ensembl")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DEGeneExpr}{
%%     ~~Describe \code{DEGeneExpr} here~~
Object of class DEGeneExpr. See DEGeneExpr.default() for more details.
}
  \item{Identifier}{
%%     ~~Describe \code{Identifier} here~~
Which column in DE genes analysis results DEGeneExpr object is used as identifier for STRING. By default row names are taken when it equals to 0.
}
  \item{NAdditionalNodes}{
%%     ~~Describe \code{NAdditionalNodes} here~~
Number of additional nodes inserted by STRING
}
  \item{Species}{
%%     ~~Describe \code{Species} here~~
From which species come gene identifiers. By default it is homo sapiens (9606).
}
  \item{ConvertAliases}{
%%     ~~Describe \code{ConvertAliases} here~~
Boolean variable indicating whether gene symbol aliases must be converted to HGNC symbols.
}
  \item{AddAnnotations}{
%%     ~~Describe \code{AddAnnotations} here~~
Boolean variable indicating whether gene annotations must be added through biomaRt
}
  \item{MartDataset}{
%%     ~~Describe \code{MartDataset} here~~
Which mart dataset to use for querying gene annotations through biomaRt
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Gene identifiers can be Ensembl IDs or HGNC symbols.
STRING gives the number of additional nodes + 10 added nodes by default. If you don't want any additional nodes at all, you can set NAdditionalNodes = NULL. By default, when NAdditionalNodes is NA, twice the number of initial nodes + 10 are added.
Species are entered with taxon identifiers. To see correspondance, please have a look here: http://www.uniprot.org/taxonomy
Aliases are converted with the package limma. No internet connection is needed for this step.
2 kinds of annotations are added. First, stringgaussnet uses the R package biomart to get mainly genomic localization and gene description. Secondly, it adds cellular component terms with the package AnnotationDbi. A prioritization is performed to rank gene products localizations from nuclear, the most relevant, and then extracellular, plasma membrane and cytoplasm.
To know which mart dataset to use for given species, please use getMartDatasets().
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class STRINGNet. See STRINGNet.default() for more details.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{print.STRINGNet}}, \code{\link{summary.STRINGNet}}, \code{\link{export.STRINGNet}}, \code{\link{getShortestPaths}}, \code{\link{getMartDatasets}}, \code{\link{selectInteractionTypes}}
}
\examples{
# data(SpADataExpression)
# data(SpADEGenes)
# SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)

# SpASTRINGNet<-getSTRINGNet(SpAData)
# Can be longer.

# SpASTRINGNet<-getSTRINGNet(SpAData,AddAnnotations=FALSE)
# print(SpASTRINGNet,5)
# summary(SpASTRINGNet)
# PPISpASTRINGNet<-selectInteractionTypes(SpASTRINGNet,
#	c("coexpression","experimental","knowledge"),0.9)

# shortPathSpANet<-getShortestPaths(PPISpASTRINGNet)
# shortPathSpANet<-FilterEdges(shortPathSpANet,2.2)
# print(shortPathSpANet,5)
# summary(shortPathSpANet)
}
