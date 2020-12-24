#' Below-ground Net Primary Productivity in year t (BNPPt est)
#'
#' This function takes RAIN to calculate BNPPt_est. Not generally called directly but incorporated in wrapper function.
#'
#' @param RAIN MAP for year t (mm/year)
#' @seealso [snapr::SNAP] which wraps this function.
#' @export

calc_BNPPt_est = function(RAIN) {

  BNPPt_est = 917.4 - (0.763*RAIN)

  return(BNPPt_est)

}
