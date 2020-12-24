#' Above-ground Net Primary Productivity in year t (ANPPt max)
#'
#' This function takes RAIN and SAND to calculate ANPPt_max. Not generally called directly but incorporated in wrapper function.
#'
#' @param RAIN MAP for year t (mm/year)
#' @param SAND Sand % in top 30 cm soil
#' @seealso [snapr::SNAP] which wraps this function.
#' @export


calc_ANPPt_max = function(RAIN, SAND) {

  ANPPt_max = (0.84*RAIN - 27.5)*(1.33 - 0.0075*SAND)

  return(ANPPt_max)

}
