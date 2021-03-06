#' Stability of indicators
#'
#' Function \code{memstability} perform an analisys of stability of estimators
#'
#' To be written
#'
#' @name memstability
#'
#' @param i.data Data frame of input data.
#' @param ... other parameters passed to memmodel.
#'
#' @return
#' \code{memstability} returns a list.
#' A list containing at least the following components:
#'   \item{stability.data}{data for each value analysed.}
#'   \item{stability.seasons}{seasons used for each iteration.}
#'
#' @examples
#' # Castilla y Leon Influenza Rates data
#' data(flucyl)
#' # Stability
#' stability<-memstability(flucyl)
#' stability$stability.data
#'
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
#' @keywords influenza
#'
#' @export
memstability<-function(i.data, ...){
  anios<-dim(i.data)[2]
  semanas<-dim(i.data)[1]
  stability.data<-numeric()
  stability.seasons<-logical()

  if (anios<2){
    stability.data<-NULL
    stability.seasons<-NULL
  }else{
    for (i in 2:anios){
      indices.modelo<-(anios-i+1):anios
      datos.modelo<-memmodel(i.data[indices.modelo], i.seasons=NA, ...)
      stability.data.i<-c(datos.modelo$n.seasons,
        datos.modelo$ci.length[1,],
        datos.modelo$ci.start[1,],
        datos.modelo$ci.percent,
        datos.modelo$epidemic.thresholds,
        datos.modelo$intensity.thresholds)
      stability.data<-rbind(stability.data,stability.data.i)
      stability.seasons<-rbind(stability.seasons,1:anios %in% indices.modelo)
    rm("stability.data.i")
    }
    stability.data<-data.frame(stability.data, row.names=NULL, stringsAsFactors = F)
    names(stability.data)<-c("number","durationll","duration","durationul","startll","start","startul","percentagell","percentage","percentageul","epidemic","postepidemic","medium","high","veryhigh")
    rownames(stability.data)<-stability.data$number
    stability.seasons<-data.frame(stability.seasons, row.names=NULL, stringsAsFactors = F)
    names(stability.seasons)<-names(i.data)
    rownames(stability.seasons)<-stability.data$number
    stability.data$number<-NULL
  }
  memstability.output<-list(stability.data=stability.data,
                            stability.seasons=stability.seasons,
                          param.data=i.data)
  memstability.output$call<-match.call()
  return(memstability.output)
}

