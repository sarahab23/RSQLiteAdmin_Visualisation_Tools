\name{ecoplot}
\alias{ecoplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Economics plot
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
A time-series line chart plot of personal savings rate and median duration of unemployment throughout the years.
}
\usage{
ecoplot(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
}
\details{
 Using the US economics time series dataset, a time-series line chart plot of personal savings rate and median duration of unemployment throughout the years.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Sarah Abraham
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
eg:ecoplot()
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(){
library(ggplot2)
theme_set(theme_minimal())

# For data preparation
library("tidyverse")
df <- economics%>%select(date, psavert, uempmed)%>%gather(key = "variables", value = "value", -date)

# Data Visualization
p<-ggplot(df, aes(x = date, y = value)) + geom_line(aes(color = variables)) + scale_color_manual(values = c("yellow", "green")) + ggtitle("Yearly plot showing personal savings rate and median duration of unemployment")
p
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
