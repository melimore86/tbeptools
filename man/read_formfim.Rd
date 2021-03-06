% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_formfim.R
\name{read_formfim}
\alias{read_formfim}
\title{Format FIM data for the Tampa Bay Nekton Index}
\usage{
read_formfim(datin)
}
\arguments{
\item{datin}{input \code{data.frame} loaded from \code{\link{read_importfim}}}
}
\value{
A formatted \code{data.frame} with chloropyll and secchi observations
}
\description{
Format FIM data for the Tampa Bay Nekton Index
}
\details{
Function is used internally within \code{\link{read_importfim}}
}
\examples{
\dontrun{
# file path
csv <- '~/Desktop/fimraw.csv'

# load and assign to object
fimdata <- read_importfim(csv)
}
}
\seealso{
\code{\link{read_importfim}}

Other read: 
\code{\link{read_chkdate}()},
\code{\link{read_dlcurrent}()},
\code{\link{read_formphyto}()},
\code{\link{read_formwq}()},
\code{\link{read_importfim}()},
\code{\link{read_importphyto}()},
\code{\link{read_importwq}()}
}
\concept{read}
