\name{computeCombinedScores}
\alias{computeCombinedScores}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Compute STRING combined scores
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A function to compute STRING combined scores used in selectInteractionTypes()
}
\usage{
computeCombinedScores(ScoresSTRING, hscores)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ScoresSTRING}{
%%     ~~Describe \code{ScoresSTRING} here~~
Confidence scores computed by STRING
}
  \item{hscores}{
%%     ~~Describe \code{hscores} here~~
Homology scores computed by STRING
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This method of STRING computation was used in STRING version 8.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A vector of combined scores.
}
\references{
%% ~put references to the literature/web site here ~
http://string-stitch.blogspot.fr/2010/03/combining-scores-right-way.html 
https://bitbucket.org/mkuhn/stringtools/src/dcc109191fba234d2209b617606e7668ccc1eda4/prior_correction/compute_scores.py?at=default
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{selectInteractionTypes}}
}
