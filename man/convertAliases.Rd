\name{convertAliases}
\alias{convertAliases}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Convert aliases
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function is called in getSTRINGNetwork() in order to convert aliases into HGNC symbols, because STRING can give aliases sometimes. This function imports the limma package.
}
\usage{
convertAliases(FormatInteractions)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{FormatInteractions}{
%%     ~~Describe \code{FormatInteractions} here~~
Network obtained in getSTRINGNetwork
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Network obtained in getSTRINGNetwork with aliases converted into HGNC symbols.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{getSTRINGNet}}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
