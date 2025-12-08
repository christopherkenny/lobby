# Request next set of responses

Request next set of responses

## Usage

``` r
lob_request_next(response, max_req = 1)
```

## Arguments

- response:

  A [tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)
  from a `lob_*` function

- max_req:

  A max number of additional requests to make. Default is 1.

## Value

a tibble with responses bound by row to new results

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_list_filings(filing_year = 2024) |>
  lob_request_next()
}
```
