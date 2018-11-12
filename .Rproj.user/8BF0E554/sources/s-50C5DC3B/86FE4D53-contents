#' @title
#' Write data frame
#' @description
#' \code{x_write()} Functions to write data frames to plain text delimited files
#' while retaining factor levels
#' @usage
#' x_write(x, x_name, file_path = "new.csv")
#' @param x
#' a data frame.
#' @param x_name
#' path to store the file of the data frame.
#' @param file_path
#' path to store the companion file.

#' @return
#' \code{x_write()} returns nothing.
#' An error is raised if the input is not a dataframe, or files not found.
#' @rdname x_read_write
#' @export

x_write <- function(x, x_name, file_name = NA) {
  # check if the input is a data frame or not
  if (!is.data.frame(x)) {
    stop("This is not a data frame")
  }

  # write data frame
  readr::write_csv(x, x_name)

  # get names of columns of factors
  factor_cols <- names(Filter(is.factor, x))

  # check filename for levels
  if (is.na(file_name)) {
    # use dirname() to get path of filename
    file_name <- paste0(dirname(x_name), "/", "plain.txt")
  }

  # write levels to companion file
  dput(lapply(x[factor_cols], levels), file_name)
}
