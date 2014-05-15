\name{GetIntMod}
\alias{GetIntMod}

\title{
Find the intervention model with necessary covariates
}
\description{
Fit the intervention model with some covariates
}
\usage{
GetIntMod(delta, z, T, xint = NA, itype = c("step", "pulse"), ...)
}

\arguments{
  \item{delta}{
The optimization process will be incorporated if the specific delta is not 
provided.
}
  \item{z}{
The series which we intend to fit the intervention model
}
  \item{T}{
T denotes the start of the intervention in the model
}
  \item{xint}{
xint denotes for the possible covariates included in the model
}
  \item{itype}{
itype includes the type of the intervention:"step" and "pulse" intervention
}
  \item{\dots}{
Any supported argments for arima function could be put here.
}
}

\value{
Intervention Model is provided
}

\author{
Jinkun Xiao and A. I. McLeod
}



\examples{
GetIntMod(delta=1.033,z=casualties[,1],T=70,xint=scale(casualties[,2]),itype="s",
 order=c(1,0,0),seasonal=list(order=c(0,0,1),period=12))
}

\keyword{ts }

