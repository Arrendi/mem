% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimum.by.inspection.R
\name{optimum.by.inspection}
\alias{optimum.by.inspection}
\title{Inspection calcultation of the optimum}
\usage{
optimum.by.inspection(i.data, i.detection.values = seq(1.5, 4.5, 0.1))
}
\arguments{
\item{i.data}{Data frame of input data.}

\item{i.detection.values}{values to use in the i.param value of \code{memtiming}.}
}
\value{
\code{optimum.by.inspection} returns a list.
An object of class \code{mem} is a list containing at least the following components:
  \item{optimum}{optimum value.}
  \item{optimum.data}{Data related to the optimum value.}
  \item{summary.data}{Data for all values tested.}
  \item{inspection.data}{Detailed results of each iteration.}
}
\description{
Function \code{optimum.by.inspection} perform an analysis of mem parameters
to find the one that fits better a panel of experts inspection criterium.
}
\details{
To be written
}
\examples{
# Castilla y Leon Influenza Rates data
data(flucyl)
# Inspection. It runs interactively (uncomment to run)
#opt.ins<-optimum.by.inspection(flucyl,i.detection.values=seq(2.0,3.0,0.1))
#opt.ins$optimum.data

}
\references{
Vega Alonso, Tomas, Jose E Lozano Alonso, Raul Ortiz de Lejarazu, and Marisol Gutierrez Perez. 2004. 
Modelling Influenza Epidemic: Can We Detect the Beginning and Predict the Intensity and Duration? 
International Congress Series, Options for the Control of Influenza V. Proceedings of the International 
Conference on Options for the Control of Influenza V, 1263 (June): 281-83. doi:10.1016/j.ics.2004.02.121.\cr
Vega, Tomas, Jose Eugenio Lozano, Tamara Meerhoff, Rene Snacken, Joshua Mott, Raul Ortiz de Lejarazu, and 
Baltazar Nunes. 2013. Influenza Surveillance in Europe: Establishing Epidemic Thresholds by the Moving 
Epidemic Method. Influenza and Other Respiratory Viruses 7 (4): 546-58. doi:10.1111/j.1750-2659.2012.00422.x.\cr
Vega, Tomas, Jose E. Lozano, Tamara Meerhoff, Rene Snacken, Julien Beaute, Pernille Jorgensen, Raul Ortiz 
de Lejarazu, et al. 2015. Influenza Surveillance in Europe: Comparing Intensity Levels Calculated Using 
the Moving Epidemic Method. Influenza and Other Respiratory Viruses 9 (5): 234-46. doi:10.1111/irv.12330.
}
\author{
Jose E. Lozano \email{lozalojo@gmail.com}
}
\keyword{influenza}
