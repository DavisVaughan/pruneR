#' Make a sorted frequency table for a factor.
#'
#' @param x factor
#'
#' @return A table
#' @export
#' @examples
#' fcount(iris$Species)
fcount <- function(x) {
  forcats::fct_count(x, sort = TRUE)
}
