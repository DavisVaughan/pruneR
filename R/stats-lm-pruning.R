prune <- function(x, ...) UseMethod("prune")

#' Prune a lm object.
#'
#' Removes the environment from an lm object.
#'
#' @param x A `lm` object returned from [stats::lm()].
#'
#' @export
#' @family lm pruners
#' @seealso [stats::lm()]
prune.lm <- function(x, ...){
  residue <- attributes(x$terms)
  stopifnot(is.list(residue))
  garbage <- c(".Environment",
               "dataClasses")
  for(i in garbage)
    if(i %in% names(residue)) attributes(x$terms)[i] <- NULL
  x
}

