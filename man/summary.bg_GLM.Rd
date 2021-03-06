% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brainGraph_GLM.R
\name{summary.bg_GLM}
\alias{summary.bg_GLM}
\title{Print a summary from brainGraph_GLM analysis}
\usage{
\method{summary}{bg_GLM}(object, p.sig = c("p", "p.fdr", "p.perm"),
  contrast = NULL, digits = max(3L, getOption("digits") - 2L),
  print.head = TRUE, ...)
}
\arguments{
\item{object}{A \code{bg_GLM} object}

\item{p.sig}{Character string specifying which p-value to use for displaying
significant results (default: \code{p})}

\item{contrast}{Integer specifying the contrast to summarize; defaults to
showing results for all contrasts}

\item{digits}{Integer specifying the number of digits to display for p-values}

\item{print.head}{Logical indicating whether or not to print only the first
and last 5 rows of the statistics tables (default: \code{TRUE})}

\item{...}{Unused}
}
\description{
\code{summary} prints the results from a \code{\link{brainGraph_GLM}}
analysis. It will only print results for which \eqn{p < \alpha}; you may
change this to the FDR-adjusted or permutation p-values via the function
argument \code{p.sig}.
}
