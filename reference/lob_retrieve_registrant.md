# Retrieve a specific registrant by their ID

Retrieve a specific registrant by their ID

## Usage

``` r
lob_retrieve_registrant(id, clean = TRUE)
```

## Arguments

- id:

  ID. Integer value.

- clean:

  Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or
  list.

## Value

a `tibble` of lobbying registrant details

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_retrieve_registrant(id = '11')
}
```
