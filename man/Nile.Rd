\name{Nile}
\alias{Nile}
\docType{data}
\title{
Annual FLow of Nile River at Aswan, 1871-1945
}
\description{
This is average annual flow of the Nile River below the Aswan Dam. 
The units are CMS (cubicmeters per second).
}
\usage{data(Nile)}
\format{
The format is: Time-Series [1:75] from 1870 to 1944: 3958 3370 3485 3438 3702 ...
}


\references{
Keith W. Hipel and A. Ian McLeod(2005) 
Time Series Modelling of Water Resources and Environmental Systems. 
http://www.stats.uwo.ca/faculty/aim/1994Book/default.htm
}
\examples{
data(Nile)
plot(Nile, type="b",xlab="year", ylab="Nile Flow River")
lines(window(Nile,start=c(1870),end=c(1902)), lwd=2, col="black")
segments(1903,0,1902,5000,col="red",lty=1, lwd=3)
}
\keyword{datasets}
