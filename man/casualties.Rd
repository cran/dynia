\name{casualties}
\alias{casualties}
\docType{data}
\title{Casualities time series with covariate}

\description{
Monthly casualties, January 2007 to December 2010, with covariate time series.
}

\usage{data(casualties)}

\format{
  The format is:
 mts [1:108, 1:2] 159 143 150 159 130 150 211 155 175 151 ...
 - attr(*, "dimnames")=List of 2
  ..$ : NULL
  ..$ : chr [1:2] "num" "covariate"
 - attr(*, "tsp")= num [1:3] 2002 2011 12
 - attr(*, "class")= chr [1:3] "mts" "ts" "matrix"
}

\examples{
data(casualties)
plot(casualties)
abline(v=c(2007,10), col="red")

###Intervention based on Casualties Data###
fitdi(z=casualties[,1],T=70,xint=scale(casualties[,2]),order=c(1,0,0),
 seasonal=list(order=c(0,0,1),period=12))
}
\keyword{datasets}
