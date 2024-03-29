% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_roxygen2.R
\name{extract_roxygen2}
\alias{extract_roxygen2}
\title{Extract roxygen2 documentation lines from a function definition}
\usage{
extract_roxygen2(func_def)
}
\arguments{
\item{func_def}{A character vector containing the lines of a function definition}
}
\value{
A character string containing the roxygen2 documentation lines
}
\description{
This function takes a character vector containing the lines of a function
definition and returns a character string containing only the lines
belonging to the roxygen2 documentation (lines starting with "#'").
}
\examples{
func_def <- c(
  "#' Extracts object from a response list",
  "#'",
  "#' @export",
  "object <- function(response) {",
  "  if (!is.list(response)) {",
  "    stop('Invalid response format. Expected list object.')",
  "  }",
  "}")

roxygen2_docu <- extract_roxygen2(func_def)
print(roxygen2_docu)
}
