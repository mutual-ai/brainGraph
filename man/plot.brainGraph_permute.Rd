% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/permute_group.R
\name{plot.brainGraph_permute}
\alias{plot.brainGraph_permute}
\title{Plot results from permutation testing}
\usage{
\method{plot}{brainGraph_permute}(x, measure = NULL,
  alternative = c("two.sided", "less", "greater"), alpha = 0.05,
  p.sig = c("p", "p.fdr"), ptitle = NULL, ...)
}
\arguments{
\item{x}{A \code{brainGraph_permute} object (output by
\code{\link{brainGraph_permute}}).}

\item{measure}{Character string of the measure to focus on (if
\code{level='graph'})}

\item{alternative}{Character string, whether to do a two- or one-sided test
(default: \code{'two.sided'})}

\item{alpha}{Numeric; the significance level (default: 0.05)}

\item{p.sig}{Character string specifying which p-value to use for displaying
significant results (default: \code{p})}

\item{ptitle}{Character string specifying a title for the plot (default:
\code{NULL})}

\item{...}{Unused}
}
\value{
A list of \code{ggplot} objects
}
\description{
Plot results from permutation testing
}
