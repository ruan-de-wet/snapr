% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_DDSOCt.R
\name{calc_DDSOCt}
\alias{calc_DDSOCt}
\title{Dung-derived SOC in year t (DDSOCt)}
\usage{
calc_DDSOCt(ANPPt_est, LIGCELL, GI)
}
\arguments{
\item{ANPPt_est}{Output of calc_ANPPt_est()}

\item{LIGCELL}{Lignin and cellulose content of livestock feed for year t (proportion)}

\item{GI}{Grazing intensity for year t (proportion)}
}
\description{
When it comes to soil organic carbon (SOC), there is plant-derived SOC (PDSOC) and dung-derived SOC (DDSOC). Not generally called directly but incorporated in wrapper function.
}
\details{
Both of these equations are fairly straight-forward. PDSOCt just takes the estimated ANPPt and BNPPt along with LIGCELL, Fire and Grazing Intensity. DDSOCt takes only ANPPt, LIGCELL and Grazing Intensity (not BNPPt nor Fire).
}
\seealso{
\link{SNAP} which wraps this function.

\link{calc_PDSOCt}

\link{calc_ANPPt_est}
}
