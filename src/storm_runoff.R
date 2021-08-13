# In the script, create a function called predict_runoff that estimates the storm runoff volume using inputs for the impervious fraction and watershed area (you can use a constant value of 1 for RD here). In other words, your function should only require two arguments

#' Storm runoff volume
#'
#' @param I_A a unitless number indicating the fraction of the watershed that is considered impervious.
#' @param A a number indicating the area of the watershed, in acres.
#'
#' @return
#' @export
#'
#' @examples
predict_runoff <- function(I_A, A) {
  R_D <- 1
  R_v <- 0.05 + 0.9 * I_A
  V <- 3630 * R_D * R_v * A
  return(V)
}
