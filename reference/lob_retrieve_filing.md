# Retrieve a specific filing by its UUID

Retrieve a specific filing by its UUID

## Usage

``` r
lob_retrieve_filing(filing_uuid, clean = TRUE)
```

## Arguments

- filing_uuid:

  filing_uuid. UUID value.

- clean:

  Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or
  list.

## Value

a `tibble` of lobbying filing details

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_retrieve_filing(filing_uuid = '3b181214-b253-462c-ad64-783c827e159e')
}
```
