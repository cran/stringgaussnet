\name{DEGeneExpr.default}
\alias{DEGeneExpr.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Creation of DEGenesExpr object.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function allows to create an object of class DEGeneExpr from expression data and DE genes analysis results.
}
\usage{
\method{DEGeneExpr}{default}(x, y, Identifier = 0, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{DataExpression} here~~
A numeric matrix of expression data with samples as rows and genes as columns.
}
  \item{y}{
%%     ~~Describe \code{DEGenesResults} here~~
Results from DE genes analysis (for example LIMMA). Rows are genes, and columns are gene attributes. This is suggested to have at least fold changes and p-values.
}
  \item{Identifier}{
%%     ~~Describe \code{Identifier} here~~
Which column identifies genes in DEGenesResults? If equals to 0, row names are picked. Identifiers must be identical to column names in DataExpression.
}
  \item{\dots}{
%%     ~~Describe \code{Identifier} here~~
Other parameters from the generic function. Not used here.
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An object of class DEGenesExpr, which is a list containing DataExpression and DEGenesResults. This object is the basis for using all other functions in the package stringgaussnet.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{print.DEGeneExpr}}, \code{\link{DEGeneExpr}}
}
\examples{
data(SpADataExpression)
data(SpADEGenes)
SpAData<-DEGeneExpr(t(SpADataExpression),SpADEGenes)
print(SpAData)
print(SpAData,10) # Prints only 10 first lines of each matrix.
}
