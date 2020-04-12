#' Combines dublicate data
#'
#' @param attendeeData tibble output of getAttendees
#' @return a tibble containing the total amount of time an attendee stayed in the conference.
getUniqueAttendees <- function(attendeeData){
  Email <- `Country/Region Name` <- `Time in Session (minutes)` <- Min <- Country <- NULL

  attendeeData %>%
    dplyr::select(Email,
                  Country = `Country/Region Name`,
                  Min = `Time in Session (minutes)`) %>%
    dplyr::mutate(Min = as.numeric(Min),
                  Country = as.factor(Country)) %>%
    dplyr::group_by(Email, Country) %>%
    dplyr::count(wt = Min, name = "Min")
}
