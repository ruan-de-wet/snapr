
#' Dung-derived SOC in year t (DDSOCt)
#'
#' When it comes to soil organic carbon (SOC), there is plant-derived SOC (PDSOC) and dung-derived SOC (DDSOC). Not generally called directly but incorporated in wrapper function.
#'
#' Both of these equations are fairly straight-forward. PDSOCt just takes the estimated ANPPt and BNPPt along with LIGCELL, Fire and Grazing Intensity. DDSOCt takes only ANPPt, LIGCELL and Grazing Intensity (not BNPPt nor Fire).
#'
#' @param ANPPt_est Output of calc_ANPPt_est()
#' @param LIGCELL Lignin and cellulose content of livestock feed for year t (proportion)
#' @param GI Grazing intensity for year t (proportion)
#' @seealso [snapr::SNAP] which wraps this function.
#' @seealso [snapr::calc_PDSOCt]
#' @seealso [snapr::calc_ANPPt_est]


calc_DDSOCt = function(ANPPt_est, LIGCELL, GI) {

  DDSOCt = LIGCELL * 0.45 * GI * ANPPt_est

  return(DDSOCt)

}
