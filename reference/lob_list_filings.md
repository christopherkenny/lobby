# List Lobbying Filings

List Lobbying Filings

## Usage

``` r
lob_list_filings(
  affiliated_organization_country = NULL,
  affiliated_organization_listed_indicator = NULL,
  affiliated_organization_name = NULL,
  client_country = NULL,
  client_id = NULL,
  client_name = NULL,
  client_ppb_country = NULL,
  client_ppb_state = NULL,
  client_state = NULL,
  filing_amount_reported_max = NULL,
  filing_amount_reported_min = NULL,
  filing_dt_posted_after = NULL,
  filing_dt_posted_before = NULL,
  filing_period = NULL,
  filing_specific_lobbying_issues = NULL,
  filing_type = NULL,
  filing_uuid = NULL,
  filing_year = NULL,
  foreign_entity_country = NULL,
  foreign_entity_listed_indicator = NULL,
  foreign_entity_name = NULL,
  foreign_entity_ownership_percentage_max = NULL,
  foreign_entity_ownership_percentage_min = NULL,
  foreign_entity_ppb_country = NULL,
  lobbyist_conviction_date_range_after = NULL,
  lobbyist_conviction_date_range_before = NULL,
  lobbyist_conviction_disclosure = NULL,
  lobbyist_conviction_disclosure_indicator = NULL,
  lobbyist_covered_position = NULL,
  lobbyist_covered_position_indicator = NULL,
  lobbyist_id = NULL,
  lobbyist_name = NULL,
  ordering = NULL,
  page = NULL,
  page_size = NULL,
  registrant_country = NULL,
  registrant_id = NULL,
  registrant_name = NULL,
  registrant_ppb_country = NULL,
  clean = TRUE
)
```

## Arguments

- affiliated_organization_country:

  Affiliated Organization Country. Such as "US" or "CA".

- affiliated_organization_listed_indicator:

  Any Affiliated Organizations Listed. Boolean value.

- affiliated_organization_name:

  Affiliated Organization Name. String value.

- client_country:

  Client Country. Such as "US" or "CA".

- client_id:

  Client ID. Integer value.

- client_name:

  Client Name. String value.

- client_ppb_country:

  Client PPB Country. Such as "US" or "CA".

- client_ppb_state:

  Client PPB State. Such as "AL" or "AK".

- client_state:

  Client State. Such as "AL" or "AK".

- filing_amount_reported_max:

  Filing Amount Reported Range (Min / Max). Float value.

- filing_amount_reported_min:

  Filing Amount Reported Range (Min / Max). Float value.

- filing_dt_posted_after:

  Filing Date Posted Range (Before / After): yyyy-mm-dd. Date-time
  value.

- filing_dt_posted_before:

  Filing Date Posted Range (Before / After): yyyy-mm-dd. Date-time
  value.

- filing_period:

  Filing Period. Such as "first_quarter", "second_quarter",
  "third_quarter", "fourth_quarter", "mid_year", or "year_end".

- filing_specific_lobbying_issues:

  Filing Specific Lobbying Issues (Supports Advanced Text Searching).
  String value.

- filing_type:

  Filing Type. Such as "RR", "RA", "Q1", "Q1Y", "1T", or "1TY".

- filing_uuid:

  filing_uuid. UUID value.

- filing_year:

  Filing Year. Such as 2025, 2024, or 2023.

- foreign_entity_country:

  Foreign Entity Country. Such as "US" or "CA".

- foreign_entity_listed_indicator:

  Any Foreign Entities Listed. Boolean value.

- foreign_entity_name:

  Foreign Entity Name. String value.

- foreign_entity_ownership_percentage_max:

  Foreign Entity Ownership Percentage. String value.

- foreign_entity_ownership_percentage_min:

  Foreign Entity Ownership Percentage. String value.

- foreign_entity_ppb_country:

  Foreign Entity PPB Country. Such as "US" or "CA".

- lobbyist_conviction_date_range_after:

  Lobbyist Conviction Date Range (Before / After): yyyy-mm-dd. Date
  value.

- lobbyist_conviction_date_range_before:

  Lobbyist Conviction Date Range (Before / After): yyyy-mm-dd. Date
  value.

- lobbyist_conviction_disclosure:

  Lobbyist Conviction Description (Supports Advanced Text Searching).
  String value.

- lobbyist_conviction_disclosure_indicator:

  Lobbyist Any Disclosed Conviction(s). Boolean value.

- lobbyist_covered_position:

  Lobbyist Covered Position (Supports Advanced Text Searching). String
  value.

- lobbyist_covered_position_indicator:

  Any Covered Government Position(s). Boolean value.

- lobbyist_id:

  Lobbyist ID. Integer value.

- lobbyist_name:

  Lobbyist Name. String value.

- ordering:

  Which field to use when ordering the results. String value.

- page:

  A page number within the paginated result set. Integer value.

- page_size:

  Number of results to return per page. Integer value.

- registrant_country:

  Registrant Country. Such as "US" or "CA".

- registrant_id:

  Registrant ID. Integer value.

- registrant_name:

  Registrant Name. String value.

- registrant_ppb_country:

  Registrant PPB Country. Such as "US" or "CA".

- clean:

  Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or
  list.

## Value

a `tibble` of lobbying filings

## Examples

``` r
if (FALSE) { # has_lobby_key()
lob_list_filings(filing_year = 2024)
}
```
