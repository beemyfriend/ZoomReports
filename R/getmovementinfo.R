#' Isolate movements from attendee data
#'
#' @param attendeeData tibble output of getAttendees
#' @param emailList if not NA then a string vector of email address to keep in the analysis
#' @return a tibble with times whih attendees left or joined the webinar.
#' @export
getMovementInfo <- function(attendeeData, emailList = NA){
  Email <- `Join Time` <- `Leave Time` <- `Joined` <- `Left` <- NULL
  attendeeData %>%
    (function(x){
      if(is.na(emailList)) return(x)
      return(dplyr::filter(x, Email %in% emailList))
    }) %>%
    dplyr::select(Email,
                  Joined = `Join Time`,
                  Left = `Leave Time`) %>%
    dplyr::mutate(Joined = lubridate::mdy_hms(Joined),
                  Left = lubridate::mdy_hms(Left))
}
