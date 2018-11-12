#' @title
#' Detect factors that should be character or not
#' @description
#'Detect factors that should be character because # unique values = length
#' @usage
#' f_detect(x)
#' @param x
#' a factor.
#' @return
#' boolean
#' Returns \code{TRUE} if # unique values = length
#' An error is raised if # unique values != length
#' @examples
#' fdetect(factor(c("a", "b", "c","a"))) # FALSE
#' f_detect(factor(c("a", "b", "c", "d"))) # TRUE
#' @export

fdetect <- function(x) {
  # check if the input is a factor or not
  if (!is.factor(x)) {
    stop("This is not a factor!")
  }

  # return if the number of unique values NOT equals to the length of input
  return(length(unique(x)) == length(x))
}
