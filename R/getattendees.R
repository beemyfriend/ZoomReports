#' Pull list of attendees from default Zoom Attendee Report
#'
#' @param file A string representing the filepath to the Zoom Attendee Report
#' @return a tibble containing attendees of the webinar
#' @export
getAttendees <- function(file){
  attendee_start <- getDataIndex(file, "^Attendee Details,$")
  other_start <- getDataIndex(file, '^Other Attended,$')

  #subtract 2 for the title and header of csv
  attendees <- readr::read_csv(file,
                               skip = attendee_start,
                               n_max = other_start - attendee_start - 2)
}
