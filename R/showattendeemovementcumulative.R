showAttendeeMovementCumulative <- function(timeData){
  begin <- cum_total <- NULL

  ggplot2::ggplot(timeData, ggplot2::aes(begin, cum_total)) +
    ggplot2::labs(
      x = "Time (Minutes)",
      y = "# Attendees",
      title = "Number of Attendees Present in Webinar"
    ) +
    ggplot2::geom_line() +
    ggplot2::theme_bw()
}
