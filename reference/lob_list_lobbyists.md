# List Lobbyists

List Lobbyists

## Usage

``` r
lob_list_lobbyists(
  id = NULL,
  lobbyist_name = NULL,
  ordering = NULL,
  page = NULL,
  page_size = NULL,
  registrant_id = NULL,
  registrant_name = NULL,
  clean = TRUE
)
```

## Arguments

- id:

  ID. Integer value.

- lobbyist_name:

  Lobbyist Name. String value.

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

a `tibble` of lobbyists

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_list_lobbyists()
}
```
