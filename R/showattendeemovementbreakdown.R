showAttendeeMovementBreakdown <- function(breakDown){
  begin <- magnitude <- direction <- NULL

  ggplot2::ggplot(breakDown, ggplot2::aes(begin, magnitude, color= direction)) +
    ggplot2::geom_hline(yintercept = 0, linetype = 'dashed', color = 'darkslategrey') +
    ggplot2::geom_line() +
    ggplot2::theme_bw() +
    ggplot2::scale_color_manual(values = c(Left = "#d95f02", Joined = '#1b9e77')) +
    ggplot2::labs(
      x = "Time (Minutes)",
      y = "# Attendees Joining or Leaving",
      title = "Number of Attendees Joining or Leaving Webinar",
      color = "Direction"
    )
}
