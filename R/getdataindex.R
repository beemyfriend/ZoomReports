#' Retrieve index of embedded data
#'
#' @param file A string representing the filepath to the Zoom Attendee Report
#' @param heading A string used to identify the header of the data of interest
#' @return an integer representing which line the data of interest begins
getDataIndex <- function(file, heading){
  file %>%
    readLines() %>%
    stringr::str_detect(heading) %>%
    which()
}
