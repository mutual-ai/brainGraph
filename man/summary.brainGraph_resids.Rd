% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_resid.R
\name{summary.brainGraph_resids}
\alias{summary.brainGraph_resids}
\title{Print a summary of residuals for structural covariance data}
\usage{
\method{summary}{brainGraph_resids}(object, regions = NULL, ...)
}
\arguments{
\item{object}{A \code{brainGraph_resids} object}

\item{regions}{Character vector of region(s) to focus on; default behavior is
to show summary for all regions}

\item{...}{Unused}
}
\value{
A list with the full \code{data.table} of residuals, in addition to a
  \code{data.table} of only the outliers
}
\description{
Print a summary of residuals for structural covariance data
}
