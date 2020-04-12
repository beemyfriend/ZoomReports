#' Prepare data to show people joining and leaving webinar
#'
#' @param timeData value returned from `getTimeData`
#' @return A long version of the timeData
attendeeMovementBreakdown <- function(timeData){
  begin <- left <- joined <- Left <- Joined <- direction <- magnitude <- NULL
  timeData %>%
    dplyr::select(begin, Left = left, Joined = joined) %>%
    dplyr::mutate(Left = -Left) %>%
    tidyr::gather(direction, magnitude, -begin)
}
