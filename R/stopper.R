#' Stop messages
#'
#' Conditionally print stop messages.
#' Allows developers to easily control verbosity of functions, and meet
#' Bioconductor requirements that dictate the stop message must first be stored
#' in a variable before passing to \link[base]{stop}.
#' @param v Whether to print messages or not.
#'
#' @return NULL
#' @keywords internal
stopper <- function(..., v = TRUE) {
  msg <- paste(...)
  if (v) {
    stop(msg, call.=FALSE)
  } else {
    stop(call. = FALSE)
  }
}
