\name{GetLikeDI}
\alias{GetLikeDI}

\title{
Calculate the Likelihood function value provide a certain intervention model
}
\description{
Likelihood function value is calcuated for the intervention
}
\usage{
GetLikeDI(delta, z, T, xint = NA, itype = c("step", "pulse"), ...)
}

\arguments{
  \item{delta}{
The specific number for Intervention Level estimated
}
  \item{z}{
The time series we fit into the model
}
  \item{T}{
The start of the Intervention  in the series
}
  \item{xint}{
The covariate considered in the model
}
  \item{itype}{
The type of intervention fitting in the model:"Step"(Default),"Step"
}
  \item{\dots}{
Supported argment for arima function
}
}

\value{
Likelihood value is provided

}

\author{
Jinkun Xiao and A. I. McLeod
}




\examples{
###Likelihood Test for Casualties with null:delta=1###
###Constrained Model Likelihood####
(LLRestricted<-GetLikeDI(delta=0,z=casualties[,1],T=70,xint=scale(casualties[,2]),
 itype="s",order=c(1,0,0),seasonal=list(order=c(0,0,1),period=12)))
###Full Model Likelihood###
(LLFull <- optimize(f = GetLikeDI, interval = c(0.1, 2),  maximum = TRUE, 
 z = casualties[,1], T = 70, xint = scale(casualties[,2]), itype = "s", 
 order=c(1,0,0),seasonal=list(order=c(0,0,1),period=12)))
X <- 2 * (LLFull$objective - LLRestricted)
###P-VLUE For Likelihood Test###
(pval <- 1 - pchisq(X, 1))
GetPV(delta0=1,z=casualties[,1],T=70,xint=scale(casualties[,2]),itype="s",order=c(1,0,0),
  seasonal=list(order=c(0,0,1),period=12))

######################################################
###Likelihood Test for Nile Flow with null:delta=1####
LLRestricted <- GetLikeDI(delta=1,z=Nile,T=34,itype="p",order=c(1,0,0))
ans <- optimize(f = GetLikeDI, interval = c(0.1, 2), maximum = TRUE,z=Nile,T=33
                ,itype="p",order=c(1,0,0)) 
LLFull <- ans$objective
X <- 2 * (LLFull - LLRestricted)
(pval <- 1 - pchisq(X, 1))
GetPV(delta0=0,z=Nile,T=34,itype="p",order=c(1,0,0))


}



\keyword{ ts }

