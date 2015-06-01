\name{getGenesInformations}
\alias{getGenesInformations}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Get gene annotations
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function uses biomaRt and AnnotationDbi to add gene annotations as node attributes in a network from stringgaussnet package.
}
\usage{
getGenesInformations(Identifiers, ensembl)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Identifiers}{
%%     ~~Describe \code{Identifiers} here~~
Can be Ensembl IDs or HGNC symbols. Ensembl IDs are recommended.
}
  \item{ensembl}{
%%     ~~Describe \code{ensembl} here~~
A mart dataset object
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Firstly, this function adds cellular localizations of gene products. A prioritization is performed to rank gene products localizations from nuclear, the most relevant, and then extracellular, plasma membrane and cytoplasm. Secondly, those annotations are added from biomaRt: chromosome name, band, strand, start and end positions, and gene descriptions.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A matrix of node attributes with annotations.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{getSTRINGNet}}, \code{\link{getSIMoNeNet}}, \code{\link{getWGCNANet}}
}
