% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/memtrend.R
\name{memtrend}
\alias{memtrend}
\title{Methods for influenza trend calculation}
\usage{
memtrend(i.flu, i.type = 1, i.level = 0.95, i.type.boot = "norm",
  i.iter.boot = 10000)
}
\arguments{
\item{i.flu}{An object of class \code{mem}.}

\item{i.type}{Type of confidence interval to calculate the trend thresholds.}

\item{i.level}{Level of confidence interval to calculate the trend thresholds.}

\item{i.type.boot}{Type of bootstrap technique.}

\item{i.iter.boot}{Number of bootstrap iterations.}
}
\value{
\code{memtrend} returns a list with two objects, the first one is the parameter used in
the calculations (\code{param.seasons}) and the second one (\code{trend.thresholds}) is
a matrix 1x2 with the Ascending (Delta) and Descending parameters (Eta).
\tabular{rlll}{
\tab \code{1} \tab Delta - Ascending parameter.\cr
\tab \code{2} \tab Eta - Descending parameter.\cr
}
}
\description{
Function \code{memtrend} is used to calculate the two parameters for defining the
current influenza trend.\cr
This method is based on the Moving Epidemics Method (MEM) used to monitor influenza
activity in a weekly surveillance system.
}
\details{
Input data is a data frame containing rates that represent historical influenza surveillance
data. It can start and end at any given week (tipically at week 40th), and rates can be
expressed as per 100,000 inhabitants (or per consultations, if population is not
available) or any other scale.\cr
The \code{i.seasons} parameter indicates how many seasons are used for calculating
thresholds. A value of -1 indicates the program to use as many as possible. If there
are less than this parameter, the program used all seasons avalaible.\cr
There are three different states for trend, to determine the state, the current rate
and the difference of the current and last weekly rate are needed:\cr
\tabular{rlll}{
\tab \code{2} \tab Ascending - When the weekly rate is above the epidemic threshold and
the difference of the current and last weekly rate is higher than Delta OR this is the
first time the rate is above the epidemic threshold.\cr
\tab \code{3} \tab Descending - When the weekly rate is above the epidemic threshold
and the difference of the current and last weekly rate is lower than Eta OR this is the
first time the rate is below the epidemic threshold after having been above it.\cr
\tab \code{1} \tab Stable - Otherwise.\cr
}
}
\examples{
# Castilla y Leon Influenza Rates data
data(flucyl)
# mem model
flucyl.mem<-memmodel(flucyl)
# Calculates trend thresholds
trend<-memtrend(flucyl.mem)
trend

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
