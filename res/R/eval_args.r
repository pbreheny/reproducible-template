#' Evaluate string if possible
#' 
#' @param x   A string
#' 
#' @returns Evaluates "1:10" if possible; if not, just returns x
#' 
#' @examples
#' eval_args('1:10')
#' eval_args('file.txt')

eval_args <- function(x) {
  tryCatch({
    val <- eval(parse(text = x))
    return(val)
  },
  error = function(e) x
  )  # On error, just return original
}
