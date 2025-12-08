# Retrieve a specific contribution by its UUID

Retrieve a specific contribution by its UUID

## Usage

``` r
lob_retrieve_contribution(filing_uuid, clean = TRUE)
```

## Arguments

- filing_uuid:

  filing_uuid. UUID value.

- clean:

  Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or
  list.

## Value

a `tibble` of lobbying contribution details

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_retrieve_contribution(filing_uuid = '86260004-84e7-46e3-9cfa-76edae508768')
}
```
