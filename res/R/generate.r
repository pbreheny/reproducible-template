#' Generate data
#'
#' Input/output of functions should be documented
#'
#' @param n1,n2     Sample size of each group
#' @param sd1,sd2   Standard deviation of each group
#' @param delta     Difference in means between groups
#'
#' @returns A list with elements `x` and `y` containing data for the two groups

generate <- function(n1, n2, sd1, sd2, delta, ...) {
  x <- rnorm(n1, 0, sd = sd1)
  y <- rnorm(n2, delta, sd = sd2)
  list(x = x, y = y)
}
