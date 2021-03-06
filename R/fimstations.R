#' Spatial data object of FIM stations including Tampa Bay segments
#'
#' Spatial data object of FIM stations including Tampa Bay segments
#'
#' @format A simple features \code{\link[sf]{sf}} object (POINT) with 6186 features and 4 fields, +proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs
#' \describe{
#'   \item{Reference}{num}
#'   \item{Zone}{chr}
#'   \item{Grid}{chr}
#'   \item{bay_segment}{chr}
#' }
#' @family utilities
#' @examples
#' \dontrun{
#' library(tidyverse)
#' library(sf)
#'
#' # Specify input catch file from the script "1_Query_FIM_Database"
#' catch <- "../tbni-proc/data/fimdata_through_2019.csv"
#'
#' # Read in catch dataset and get list of FIM sites
#' FIMsites <- read.csv(catch, header = TRUE, stringsAsFactors = FALSE) %>%
#'   select(Reference, Longitude, Latitude, Zone, Grid) %>%
#'   arrange(Reference) %>%
#'   distinct()
#'
#' # Read in the shape file of TBEP segments
#' shape <- st_read("../tbni-proc/data/TBEP_Segments_WGS84.shp") %>%
#'   mutate(bay_segment = case_when(.$BAY_SEGMEN == 1 ~ "OTB",
#'                                  .$BAY_SEGMEN == 2 ~ "HB",
#'                                  .$BAY_SEGMEN == 3 ~ "MTB",
#'                                  .$BAY_SEGMEN == 4 ~ "LTB",
#'                                  .$BAY_SEGMEN == 5 ~ "Boca Ceiga",
#'                                  .$BAY_SEGMEN == 6 ~ "Terra Ceia",
#'                                  .$BAY_SEGMEN == 7 ~ "Manatee River")) %>%
#'   select(-FID_1, -Count_, -BAY_SEGMEN)
#'
#' #Convert FIM site list into sf object
#' Sites_sf <- FIMsites %>%
#'   st_as_sf(
#'     coords = c("Longitude", "Latitude"),
#'     agr = "constant",
#'     crs = 4326,
#'     stringsAsFactors = FALSE,
#'     remove = TRUE
#'   )
#'
#' #Find points/sites within bay segment polygons
#' fimstations <- st_join(Sites_sf, shape, join = st_within) %>%
#'   mutate(bay_segment = case_when(Grid == 363 ~ "LTB",
#'                                  Grid %in% c(203, 220) ~ "MTB",
#'                                  (Grid == 204 & unlist(map(.$geometry,1)) < 27.7937) ~ "MTB",
#'                                  TRUE ~ bay_segment)) %>%
#'   filter(!bay_segment %in% c("Boca Ceiga", "Terra Ceia", "Manatee River")
#'          & !is.na(bay_segment))
#'
#' save(fimstations, file = 'data/fimstations.RData', compress = 'xz')
#' }
"fimstations"
