# List Registrants

List Registrants

## Usage

``` r
lob_list_registrants(
  country = NULL,
  dt_updated_after = NULL,
  dt_updated_before = NULL,
  id = NULL,
  ordering = NULL,
  page = NULL,
  page_size = NULL,
  ppb_country = NULL,
  registrant_name = NULL,
  state = NULL,
  clean = TRUE
)
```

## Arguments

- country:

  Country. Such as "US" or "CA".

- dt_updated_after:

  Date Update Range (Before / After): yyyy-mm-dd. Date-time value.

- dt_updated_before:

  Date Update Range (Before / After): yyyy-mm-dd. Date-time value.

- id:

  ID. Integer value.

- ordering:

  Which field to use when ordering the results. String value.

- page:

  A page number within the paginated result set. Integer value.

- page_size:

  Number of results to return per page. Integer value.

- ppb_country:

  PPB Country. Such as "US" or "CA".

- registrant_name:

  Registrant Name. String value.

- state:

  State. Such as "AL" or "AK".

- clean:

  Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or
  list.

## Value

a `tibble` of lobbying registrants

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_list_registrants(country = 'US')
}
```
