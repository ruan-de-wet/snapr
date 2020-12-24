#' Plant-derived SOC in year t (PDSOCt)
#'
#' When it comes to soil organic carbon (SOC), there is plant-derived SOC (PDSOC) and dung-derived SOC (DDSOC). Not generally called directly but incorporated in wrapper function.
#'
#' Both of these equations are fairly straight-forward. PDSOCt just takes the estimated ANPPt and BNPPt along with LIGCELL, Fire and Grazing Intensity. DDSOCt takes only ANPPt, LIGCELL and Grazing Intensity (not BNPPt nor Fire).
#'
#' @param ANPPt_est Output of calc_ANPPt_est()
#' @param BNPPt_est Output of calc_BNPPt_est()
#' @param LIGCELL Lignin and cellulose content of livestock feed for year t (proportion)
#' @param GI Grazing intensity for year t (proportion)
#' @param Fire Average number of fires per year (#/year)
#' @seealso [snapr::SNAP] which wraps this function.
#' @seealso [snapr::calc_DDSOCt]
#' @seealso [snapr::calc_ANPPt_est]
#' @seealso [snapr::calc_BNPPt_est]
#' @export

calc_PDSOCt = function(ANPPt_est, BNPPt_est, LIGCELL, GI, Fire) {

  PDSOCt = 0.45 * ( (LIGCELL*ANPPt_est*(1-GI)*(1-Fire)) + (LIGCELL+0.05)*BNPPt_est )

  return(PDSOCt)

}
