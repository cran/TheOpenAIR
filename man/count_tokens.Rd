% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/count_tokens.R
\name{count_tokens}
\alias{count_tokens}
\title{Count the number of tokens in a text string}
\usage{
count_tokens(text)
}
\arguments{
\item{text}{A file path, URL or character string representing the text to be
tokenized.}
}
\value{
An integer representing the number of tokens in the text.
}
\description{
This function takes a file path, URL or character string as input and
returns the number of tokens in the text. Tokens are defined as words and/or
special characters.
}
\examples{
\dontrun{
# Example 1: File path
test_file_path <- tempfile()
writeLines("This is a test.", test_file_path)
expect_equal(count_tokens(test_file_path), 5)
file.remove(test_file_path)

# Example 2: URL
url <- "https://www.gutenberg.org/files/2701/2701-0.txt"
count_tokens(url)

# Example 3: Character string
text <- "This is a test string."
count_tokens(text)
}

}
