# List Lobbying Filings

List Lobbying Filings

## Usage

``` r
lob_list_clients(
  client_country = NULL,
  client_name = NULL,
  client_ppb_country = NULL,
  client_ppb_state = NULL,
  client_state = NULL,
  id = NULL,
  ordering = NULL,
  page = NULL,
  page_size = NULL,
  registrant_id = NULL,
  registrant_name = NULL,
  clean = TRUE
)
```

## Arguments

- client_country:

  Client Country. Such as "US" or "CA".

- client_name:

  Client Name. String value.

- client_ppb_country:

  Client PPB Country. Such as "US" or "CA".

- client_ppb_state:

  Client PPB State. Such as "AL" or "AK".

- client_state:

  Client State. Such as "AL" or "AK".

- id:

  ID. Integer value.

- ordering:

  Which field to use when ordering the results. String value.

- page:

  A page number within the paginated result set. Integer value.

- page_size:

  Number of results to return per page. Integer value.

- registrant_id:

  Registrant ID. Integer value.

- registrant_name:

  Registrant Name. String value.

- clean:

  Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or
  list.

## Value

a `tibble` of clients

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_list_clients(client_country = 'US')
}
```
