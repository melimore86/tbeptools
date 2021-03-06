% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_segplotly.R
\name{show_segplotly}
\alias{show_segplotly}
\title{Plot chlorophyll and secchi data together with matrix outcomes}
\usage{
show_segplotly(
  epcdata,
  bay_segment = c("OTB", "HB", "MTB", "LTB"),
  yrrng = c(1975, 2019),
  family = NULL
)
}
\arguments{
\item{epcdata}{data frame of epc data returned by \code{\link{read_importwq}}}

\item{bay_segment}{chr string for the bay segment, one of "OTB", "HB", "MTB", "LTB"}

\item{yrrng}{numeric for year range to plot}

\item{family}{optional chr string indicating font family for text labels}
}
\value{
An interactive plotly object
}
\description{
Plot chlorophyll and secchi data together with matrix outcomes
}
\details{
This function combines outputs from \code{\link{show_thrplot}} and \code{\link{show_segmatrix}} for a selected bay segment. The plot is interactive and can be zoomed by dragging the mouse pointer over a section of the plot. Information about each cell or value can be seen by hovering over a location in the plot.
}
\examples{
show_segplotly(epcdata)
}
\seealso{
Other visualize: 
\code{\link{show_boxplot}()},
\code{\link{show_matrixplotly}()},
\code{\link{show_matrix}()},
\code{\link{show_reactable}()},
\code{\link{show_segmatrix}()},
\code{\link{show_sitemap}()},
\code{\link{show_tbnimatrix}()},
\code{\link{show_tbniscrall}()},
\code{\link{show_tbniscrplotly}()},
\code{\link{show_tbniscr}()},
\code{\link{show_tdlcrk}()},
\code{\link{show_thrplot}()},
\code{\link{show_wqmatrix}()}
}
\concept{visualize}
