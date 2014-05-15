\name{print.dynia}
\alias{print.dynia}
\title{
Print the class of dynia
}
\description{
Print the output with class of dynia
}
\usage{
\method{print}{dynia}(x, ...)
}

\arguments{
  \item{x}{
x is the value with class of dynia
}
  \item{\dots}{
Optional Argument
}
}

\value{
A output includes optimal delta,intervention model and p-value for the 
 null hypothesis:delta=delta0
}

\author{
Ken Jinkun Xiao and A.Ian McLeod
}

\examples{
data(casualties)
fitdi(z=casualties[,1],T=70,xint=casualties[,2],itype="s",delta0=1,
 order=c(1,0,0),seasonal=list(order=c(0,0,1),period=12))
}
\keyword{ ts }


