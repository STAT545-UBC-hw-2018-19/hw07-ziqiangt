#' @title
#' Reorder a factor in descending order
#' @description
#' a version of reorder() that uses desc() a la (d)plyr
#' @usage
#' f_reorder(x)
#' @param x
#' a factor.
#' @return
#' Returns a new verision of the input factor in descending order
#' An error is raised if # unique values != length
#' @examples
#' freorder(factor(c("B", "A", "D"))) # Levels: D B A
#' @export

f_reorder <- function(x) {
  # check if the input is a factor or not
  if (!is.factor(x)) {
    stop("This is not a factor!")
  }

  # return a factor in descending order
  return(reorder(x, dplyr::desc(x)))
}
