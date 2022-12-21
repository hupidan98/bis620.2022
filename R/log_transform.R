#' Log Transform The SVI data
#' This function log transform one column of SVI data, and replace all NA, and
#' Infinity with 0,
#' @param column_data one column of data from the SVI dataframe.
#' @return the same column that are log transformed, and all NA, and infinity
#' are replaced with 0.
#' @examples
#' data(svi_tb)
#' log_transform(svi_tb$E_SPAN)
#' @export
#'
#'
log_transform <- function(column_data) {
  log_col <-  as.vector(unlist(log(column_data)))
  log_col[is.na(log_col) | is.infinite(log_col)] <-  0
  log_col
}
