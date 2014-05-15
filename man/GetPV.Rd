\name{GetPV}
\alias{GetPV}

\title{
P-Value for a certain hypothesis for delta 
}
\description{
The chi-square test p-value is provided for the null hypothesis:delta=delta0.Delta
}
\usage{
GetPV(delta0, z, T, xint, itype = c("step", "pulse"), ...)
}

\arguments{
  \item{delta0}{
Tested value for the delta
}
  \item{z}{
The time series we fit into the model
}
  \item{T}{
The start of Intervention Time in the series
}
  \item{xint}{
The covariate considered in the model
}
  \item{itype}{
Type of intervention fitting in the model:"Step"(Default),"Step"
}
  \item{\dots}{
Supported argment for arima function
}
}

\value{
p-value for the test is provided

}

\author{
Jinkun Xiao and A. I. McLeod
}

\examples{
GetPV(delta0=1,z=Nile,T=69,itype="s",order=c(1,0,0),seasonal=list(order=c(0,0,1),period=12))
}

\keyword{ ts }

