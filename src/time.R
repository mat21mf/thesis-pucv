#' formats proc_time as a "hh:mm:ss" time string
#'
#' @seeAlso print.proc_time, proc.time
#'
formatTime <- function(x){
  stopifnot(inherits(x, "proc_time"))
  h <- x %/% 3600L
  m <- (x %% 3600L) %/% 60L
  s <- x %% 60L
  ifelse(is.na(x), NA, sprintf("%02d:%02d:%2.2f",h,m,s))
}

#' Prints out time in an intelligent manner.
#'
#' @seealso system.time proc.time
#' @export
#'
print.proc_time<-function(x,...){
  times <- formatTime(x)
  names(times) <- names(x)
  print(times[!is.na(times)], ...)
  invisible(x)
}
