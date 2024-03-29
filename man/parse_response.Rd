% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_response.R
\name{parse_response}
\alias{parse_response}
\title{Parse a Response From the API}
\usage{
parse_response(input_string)
}
\arguments{
\item{input_string}{The response from the API}
}
\value{
A list of blocks with type, content, and language (for code blocks)
}
\description{
This function takes an input string containing both text and code blocks,
and returns a list of blocks with their respective type, content, and language (if applicable).
Each block is either of type 'text' or 'code'.
}
\examples{
\dontrun{
parse_response("Hello world!")
# [[1]]
# [[1]]$type
# [1] "text"
#
# [[1]]$content
# [1] "Hello world!"
#
parse_response("```python\nprint('Hello world!')\n```")
# [[1]]
# [[1]]$type
# [1] "code"
#
# [[1]]$content
# [1] "print('Hello world!')"
#
# [[1]]$language
# [1] "python"
#
parse_response("Hello world!\n\n```python\nprint('Hello world!')\n```")
# [[1]]
# [[1]]$type
# [1] "text"
#
# [[1]]$content
# [1] "Hello world!"
#
# [[2]]
# [[2]]$type
# [1] "code"
#
# [[2]]$content
# [1] "print('Hello world!')"
#
# [[2]]$language
# [1] "python"
#
}
}
\author{
Jonathan Chassot
}
