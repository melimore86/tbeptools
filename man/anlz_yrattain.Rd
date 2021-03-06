% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anlz_yrattain.R
\name{anlz_yrattain}
\alias{anlz_yrattain}
\title{Get attainment categories for a chosen year}
\usage{
anlz_yrattain(epcdata, yrsel)
}
\arguments{
\item{epcdata}{data frame of epc data returned by \code{\link{read_importwq}}}

\item{yrsel}{numeric indicating chosen year}
}
\value{
A \code{data.frame} for the chosen year and all bay segments showing the bay segment averages for chloropyll concentration, light attenuations, segment targets, and attainment categories.
}
\description{
Get attainment categories for a chosen year
}
\examples{

# defaults to current year
anlz_yrattain(epcdata, yrsel = 2019)
}
\seealso{
Other analyze: 
\code{\link{anlz_attain}()},
\code{\link{anlz_avedatsite}()},
\code{\link{anlz_avedat}()},
\code{\link{anlz_iwrraw}()},
\code{\link{anlz_refs}()},
\code{\link{anlz_tdlcrkindic}()},
\code{\link{anlz_tdlcrk}()}
}
\concept{analyze}
