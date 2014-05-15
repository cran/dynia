\name{fitdi}
\alias{fitdi}
\title{
Fit Dynamic Intervention Model
}
\description{
The function FitDI will fit the dynamic Intervention Model based on the 
optimized likelihood value and corresponding delta in the function.
}
\usage{
fitdi(z, T, xint, itype = c("step", "pulse"), delta = NA, delta0=NA,...)
}

\arguments{
  \item{z}{
The series which we intend to fit the intervention model.
}
  \item{T}{
T denotes the start of the intervention in the model.
}
  \item{xint}{
xint denotes for the possible covariates included in the model.By default,xint=NA
}
  \item{itype}{
itype includes the type of the intervention:"step" and "pulse" intervention
}
  \item{delta}{
The optimization process will be incorporated if the specific delta is not 
provided.
}

  \item{delta0}{
Optional with default=NA.P-value for null hypothesis:delta=delta0 will be provided 
 when delta0 get value.
}
  \item{\dots}{
the supported argments for arima function could be put here
}
}

\value{
Fixed delta or specific delta provided.
Intervention output for the model
}

\author{
Jinkun Xiao and A. I. McLeod
}



\examples{
####Casualties Intervention####
fitdi(z=casualties[,1],T=70,xint=scale(casualties[,2]),itype="s",order=c(1,0,0),
 seasonal=list(order=c(0,0,1),period=12),delta0=0)

####Nile River Intervention####
fitdi(z=Nile,T=34,itype="p",order=c(0,0,1),delta=1)

}
\keyword{ ts }

