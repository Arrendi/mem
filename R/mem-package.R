#' Moving Epidemic Method R Package
#'
#' This package creates the model described in the \emph{Moving Epidemics Method} (MEM),
#' used to monitor influenza activity during the seasonal surveillance.
#'
#' \tabular{ll}{
#' Package: \tab mem\cr
#' Type: \tab Package\cr
#' Title: \tab Moving Epidemics Method R Package.\cr
#' Version: \tab 1.4\cr
#' Date: \tab 2014-07-10\cr
#' Author: \tab Jose E. Lozano Alonso <lozalojo@jcyl.es>\cr
#' Maintainer: \tab Jose E. Lozano Alonso <lozalojo@jcyl.es>\cr
#' Depends: \tab R (>= 3.2.0)\cr
#' Description: \tab Modelization of influenza epidemics in order to monitor future
#' activity.\cr
#' License: \tab GPL (>= 2)\cr
#' }
#' Functions to calculate the optimal timing of the epidemic and a threshold to give an
#' early alert of the upcoming epidemic.
#'
#' @name mem-package
#'
#' @docType package
#'
#' @aliases mem
#'
#' @return \code{NULL}
#'
#' @examples
#' # Castilla y Leon Influenza Rates data
#' data(flucyl)
#' # Optimal timing of an epidemic
#' tim<-memtiming(flucyl[1])
#' print(tim)
#' summary(tim)
#' plot(tim)
#' # Threshold calculation
#' epi<-memmodel(flucyl[1:7])
#' print(epi)
#' summary(epi)
#' plot(epi)
#' # Intensity thresholds
#' intensity<-memintensity(epi)
#' intensity
#' # Trend parameters
#' trend<-memtrend(epi)
#' trend
#' # Epidemic thresholds
#' e.thr<-epi$epidemic.thresholds
#' # Intensity threhsolds
#' i.thr<-epi$intensity.thresholds
#' # Surveillance
#' memsurveillance(flucyl[8],e.thr,i.thr,i.graph.file=FALSE)
#' @author Jose E. Lozano \email{lozalojo@@gmail.com}
#'
#' @references
#' Vega Alonso, Tomas, Jose E Lozano Alonso, Raul Ortiz de Lejarazu, and Marisol Gutierrez Perez. 2004. 
#' Modelling Influenza Epidemic: Can We Detect the Beginning and Predict the Intensity and Duration? 
#' International Congress Series, Options for the Control of Influenza V. Proceedings of the International 
#' Conference on Options for the Control of Influenza V, 1263 (June): 281-83. doi:10.1016/j.ics.2004.02.121.\cr
#' Vega, Tomas, Jose Eugenio Lozano, Tamara Meerhoff, Rene Snacken, Joshua Mott, Raul Ortiz de Lejarazu, and 
#' Baltazar Nunes. 2013. Influenza Surveillance in Europe: Establishing Epidemic Thresholds by the Moving 
#' Epidemic Method. Influenza and Other Respiratory Viruses 7 (4): 546-58. doi:10.1111/j.1750-2659.2012.00422.x.\cr
#' Vega, Tomas, Jose E. Lozano, Tamara Meerhoff, Rene Snacken, Julien Beaute, Pernille Jorgensen, Raul Ortiz 
#' de Lejarazu, et al. 2015. Influenza Surveillance in Europe: Comparing Intensity Levels Calculated Using 
#' the Moving Epidemic Method. Influenza and Other Respiratory Viruses 9 (5): 234-46. doi:10.1111/irv.12330.
#'
#' @keywords package
NULL
