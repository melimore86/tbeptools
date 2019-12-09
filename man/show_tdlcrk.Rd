% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_tdlcrk.R
\name{show_tdlcrk}
\alias{show_tdlcrk}
\title{Make a map for tidal creek report card}
\usage{
show_tdlcrk(dat)
}
\arguments{
\item{dat}{input score card data returned from \code{\link{anlz_tdlcrk}}}
}
\value{
A \code{\link[leaflet]{leaflet}} object
}
\description{
Make a map for tidal creek report card
}
\examples{
dat <- anlz_tdlcrk(tidalcreeks, iwrraw, yr = 2018)
show_tdlcrk(dat)
}
\seealso{
Other visualize: \code{\link{show_boxplot}},
  \code{\link{show_chlmatrix}}, \code{\link{show_matrix}},
  \code{\link{show_reactable}}, \code{\link{show_sitemap}},
  \code{\link{show_thrplot}}
}
\concept{visualize}