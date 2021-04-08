#' Generate a Table
#'
#' This function generates a multiplication table. It takes a user input
#' and auto generates table of the input number.
#' @keywords table
#' @param Input path
#' @return A matrix of the infile


#' @export

gen_table <- function(x){
  cat("Multiplication Table of", x, "\n")
  for(i in 1:10){
    y <- x * i
    cat(x, "*", i, "=", y, "\n")
  }
}
