% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trnlns.R
\docType{data}
\name{trnlns}
\alias{trnlns}
\title{Seagrass transect locations}
\format{
A \code{sf} LINESTRING object
}
\usage{
trnlns
}
\description{
Seagrass transect locations
}
\examples{
\dontrun{
library(sf)
libryar(dplyr)

trnlns <- st_read('T:/05_GIS/SEAGRASS_TRANSECTS/transect_routes.shp') \%>\% 
   st_transform(crs = 4326) \%>\% 
   dplyr::filter(!as.character(Site) \%in\% c('S8T1', 'S8T2', 'S8T3'))

save(trnlns, file = 'data/trnlns.RData', compress = 'xz')
}
}
\keyword{datasets}
