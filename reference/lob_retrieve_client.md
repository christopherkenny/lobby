# Retrieve a specific client by its ID

Retrieve a specific client by its ID

## Usage

``` r
lob_retrieve_client(id, clean = TRUE)
```

## Arguments

- id:

  ID. Integer value.

- clean:

  Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or
  list.

## Value

a `tibble` of lobbying client details

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_retrieve_client(id = '44400')
}
```
