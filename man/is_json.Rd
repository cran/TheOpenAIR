% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_json.R
\name{is_json}
\alias{is_json}
\title{Check if the provided string is in valid JSON format.}
\usage{
is_json(input_string)
}
\arguments{
\item{input_string}{A character string to be checked for JSON format.}
}
\value{
A logical value. If the input string is in valid JSON format, returns TRUE, otherwise returns FALSE.
}
\description{
Check if the provided string is in valid JSON format.
}
\examples{
is_json('{"name": "John", "age": 30}')
# TRUE

is_json('{"name": "John", age: 30}')
# FALSE

is_json('')
# FALSE
}
\author{
Ulrich Matter umatter@protonmail.com
}
