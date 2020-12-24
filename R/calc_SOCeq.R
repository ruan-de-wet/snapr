
#' Equilibrium Soil Organic Carbon (SOCeq)
#'
#' To calculate the change in SOC for year t (deltaSOCt), we need the combination of PDSOCt and DDSOCt, but also the maximum rate of microbial respiration for year t (MRESPt). A key input to MRESPt is WETDAYS, which is based on RAIN, the Sand % and SOCt.
#'
#' SOCt is unknown to us though, so it's not helpful to have to rely on it as an input... We're interested in the SOCt at equilibrium (SOCeq from Eq 12).
#'
#' By setting deltaSOCt = 0, we can solve for the SOCt term in MRESPt to yield SOCeq.
#'
#' Not generally called directly but incorporated in wrapper function.
#'
#' @param PDSOCt Output of calc_PDSOCt()
#' @param DDSOCt Output of calc_DDSOCt()
#' @param SAND Sand % in top 30 cm soil
#' @param RAIN MAP for year t (mm/year)
#' @seealso [snapr::SNAP] which wraps this function.
#' @seealso [snapr::calc_PDSOCt]
#' @seealso [snapr::calc_DDSOCt]
#' @export

calc_SOCeq = function(PDSOCt, DDSOCt, SAND, RAIN) {

  WETDAYS = 240 * ( (0.00044*RAIN) - 0.025)

  RESPcorrection = 0.7 + (0.3 * (SAND/100))

  SOCeq = (PDSOCt + DDSOCt + (WETDAYS*0.579*RESPcorrection) ) / ( 0.00044*WETDAYS*RESPcorrection )

  return(SOCeq)

}
