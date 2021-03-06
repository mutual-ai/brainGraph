#' Calculate an asymmetry index based on edge counts
#'
#' Calculate an \emph{asymmetry index}, a ratio of intra-hemispheric edges in
#' the left to right hemisphere of a graph for brain MRI data.
#'
#' The equation is:
#' \deqn{A = \frac{E_{lh} - E_{rh}}{0.5 \times (E_{lh} + E_{rh})}}
#' where \emph{lh} and \emph{rh} are left and right hemispheres, respectively.
#' The range of this measure is \eqn{[-2, 2]} (although the limits will only be
#' reached if all edges are in one hemisphere), with negative numbers
#' indicating more edges in the right hemisphere, and a value of 0 indicating
#' equal number of edges in each hemisphere.
#'
#' The \code{level} argument specifies whether to calculate asymmetry for each
#' vertex, or for the whole hemisphere.
#'
#' @param g An \code{igraph} graph object
#' @param level Character string indicating whether to calculate asymmetry for
#'   each region, or the hemisphere as a whole (default: \code{'hemi'})
#' @export
#'
#' @return A data table with edge counts for both hemispheres and the asymmetry
#'   index; if \code{level} is \emph{vertex}, the data table will have
#'   \code{vcount(g)} rows.
#'
#' @author Christopher G. Watson, \email{cgwatson@@bu.edu}

edge_asymmetry <- function(g, level=c('hemi', 'vertex')) {
  stopifnot(is_igraph(g), 'hemi' %in% vertex_attr_names(g))

  level <- match.arg(level)
  A <- as_adj(g, sparse=FALSE, names=FALSE)
  L <- which(V(g)$hemi == 'L')
  R <- which(V(g)$hemi == 'R')
  if (level == 'hemi') {
    lh <- sum(A[L, L]) / 2
    rh <- sum(A[R, R]) / 2
    asymm <- data.table(region='all', lh=lh, rh=rh)

  } else if (level == 'vertex') {
    if (length(L) == 1) {
      lh <- A[, L]
    } else {
      lh <- rowSums(A[, L])
    }
    if (length(R) == 1) {
      rh <- A[, R]
    } else {
      rh <- rowSums(A[, R])
    }
    asymm <- data.table(region=V(g)$name, lh=lh, rh=rh)
  }
  asymm[, asymm := 2 * (lh - rh) / (lh + rh)]
  return(asymm)
}
