#' Summary statistics of countries whose citizens joined the webinar
#'
#' @param attendeeData tibble output of getAttendees
#' @return a tibble containing summary statistics of countries attending the event
#' @export
getCountryInfo <- function(attendeeData){
  Country <- Min <- NULL
  attendeeData %>%
    getUniqueAttendees() %>%
    dplyr::group_by(Country) %>%
    dplyr::summarise(
      Attendees = dplyr::n(),
      "Average Time (Min/Attendee)" = round(mean(Min),2)
    )
}
