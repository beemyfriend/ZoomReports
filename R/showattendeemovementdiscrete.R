showAttendeeMovementDiscrete <- function(timeData){
  begin <- total <- NULL

  ggplot2::ggplot(timeData, ggplot2::aes(begin, total)) +
    ggplot2::geom_line() +
    ggplot2::labs(
      x = "Time (Minutes)",
      y = "# Attendees Joining or Leaving",
      title = "Number of Attendees Joining or Leaving Webinar"
    ) +
    ggplot2::geom_hline(yintercept = 0, linetype = 'dashed', color = 'darkslategrey') +
    ggplot2::theme_bw()
}
