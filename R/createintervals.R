#' Create intervals for movement observation
#'
#' @param start_ymd_hm A string representing the start time in format **"YYYY-MM-DD HH:MM"**
#' @param end_ymd_hm A string representing the end time in format **"YYYY-MM-DD HH:MM"**
#' @param min_int An interger representing the minute intervals used from **start_ymd_hm** to **end_ymd_hm**
#' @return a vector of sequential time intervals between given start and end times
#' @examples
#' createIntervals('2020-03-28 08:00', '2020-03-28 18:00', 1)
#' @export
createIntervals <- function(start_ymd_hm, end_ymd_hm, min_int){
  start_ <- seq(lubridate::ymd_hm(start_ymd_hm),
                lubridate::ymd_hm(end_ymd_hm) - (min_int * 60),
                paste(min_int, 'min'))

  end_ <- seq(lubridate::ymd_hm(start_ymd_hm) + (min_int * 60),
              lubridate::ymd_hm(end_ymd_hm),
              paste(min_int, 'min'))

  int_ <- lubridate::interval(start_, end_)
}
