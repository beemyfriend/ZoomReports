#' Get information on time intervals in which attendees joined and left
#'
#' @param intervals vector time interval output from `createIntervals`
#' @param attendeeData tibble output of getAttendees
#' @return a tibble with summary information of time intervals throughout webinar
#' @export
getTimeData <- function(intervals, attendeeData){
  interval <- joined <- left <- total <- NULL

  movementInfo <- getMovementInfo(attendeeData)

  tibble::tibble(
    interval = intervals,
    begin = lubridate::int_start(intervals),
    joined = sapply(interval, function(x){sum(lubridate::`%within%`(movementInfo$Joined, x), na.rm = T)}),
    left = sapply(interval, function(x){sum(lubridate::`%within%`(movementInfo$Left, x), na.rm = T)}),
    total = joined - left,
    cum_total = purrr::accumulate(total, `+`)
  )
}
