#' @title
#' Read data frame
#' @description
#' \code{x_read()} Functions to read data frames to plain text delimited files
#' while retaining factor levels
#' @usage
#' x_read(x, x_name, file_path = "new.csv")

#' @return
#' \code{x_read()} returns a data frame read from files.
#' An error is raised if the input is not a dataframe, or files not found.
#' @rdname x_read_write
#' @export

x_read <- function(x_name, file_name = NA) {
  # write data frame using read_csv()
  return_results <- readr::read_csv(x_name)

  # check filename for levels
  if (is.na(file_name)) {
    # use dirname() to get path of filename
    file_name <- paste0(dirname(x_name), "/", "plain.txt")
  }

  # get levels from companion file
  LEVELS <- dget(file_name)

  # set levels of data frame
  for (i in seq_along(LEVELS)) {
    # first convert columns to factor
    return_results[[names(LEVELS[i])]] <- as.factor(return_results[[names(LEVELS[i])]])
    # set levels
    levels(return_results[[names(LEVELS[i])]]) <- LEVELS[[i]]
  }

  # return data frame
  return(return_results)
}
