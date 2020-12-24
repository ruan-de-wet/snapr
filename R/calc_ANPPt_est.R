
#' Estimated Above-ground Net Primary Productivity in year t (ANPPt est)
#'
#' This function takes GI and ANPPt_max to calculate ANPPt_est. Not generally called directly but incorporated in wrapper function.
#'
#' @param GI Grazing intensity for year t (proportion)
#' @param ANPPt_max Output of calc_ANPPt_max()
#' @seealso [snapr::SNAP] which wraps this function.
#' @export

calc_ANPPt_est = function(GI, ANPPt_max) {

  Pl = 0.6 + (0.24*GI)

  LAI = (Pl/0.6) - ( 0.015 * exp(4.6*GI) )

  ANPPt_est = LAI * ANPPt_max

  return(ANPPt_est)

}
