
#' SNAP Model Implementation
#'
#' The five input parameters to the SNAP model are used to estimate the equilibrium soil organic carbon stocks in g/m^2.
#'
#' @param SAND Sand % in top 30 cm soil
#' @param RAIN MAP for year t (mm/year)
#' @param LIGCELL Lignin and cellulose content of livestock feed for year t (proportion)
#' @param GI Grazing intensity for year t (proportion)
#' @param Fire Average number of fires per year (#/year)
#' @export

SNAP = function(SAND, RAIN, LIGCELL, GI, Fire) {

  # Productivity
  ANPPt_max = calc_ANPPt_max(RAIN = RAIN, SAND = SAND)
  ANPPt_est = calc_ANPPt_est(GI = GI, ANPPt_max = ANPPt_max)
  BNPPt_est = calc_BNPPt_est(RAIN = RAIN)

  # SOC
  PDSOCt = calc_PDSOCt(ANPPt_est = ANPPt_est, BNPPt_est = BNPPt_est, LIGCELL = LIGCELL, GI = GI, Fire = Fire)
  DDSOCt = calc_DDSOCt(ANPPt_est = ANPPt_est, LIGCELL = LIGCELL, GI = GI)

  SOCeq = calc_SOCeq(PDSOCt = PDSOCt, DDSOCt = DDSOCt, SAND = SAND, RAIN = RAIN)

  return(SOCeq)

}
