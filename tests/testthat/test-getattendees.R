context("test-getattendees")

attend <- system.file("extdata",
                      "Anonymized_Zoom_Attendee_Report.csv",
                      package = "ZoomReports" )

test_that("parsed headings are correct", {
  attendees <- getAttendees(attend)
  expect_true(all(names(attendees) == c('Attended', 'First Name', 'Last Name', 'Email', 'Registration Time', 'Approval Status', 'Join Time', 'Leave Time', 'Time in Session (minutes)', 'Country/Region Name')))
})
