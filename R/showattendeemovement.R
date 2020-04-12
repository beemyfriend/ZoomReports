#' Visualizations of timed data
#'
#' @param timeData tibble output of getTimeData
#' @param type a string value of either "cumulative", "discrete", or "breakown"
#' @return a ggplot
#' @export
showAttendeeMovement <- function(timeData, type = "cumulative"){
  if(type == "cumulative"){
    return(showAttendeeMovementCumulative(timeData))
  }

  if(type == "discrete"){
    return(showAttendeeMovementDiscrete(timeData))
  }

  if(type == "breakdown"){
    return(showAttendeeMovementBreakdown(attendeeMovementBreakdown(timeData)))
  }
}
