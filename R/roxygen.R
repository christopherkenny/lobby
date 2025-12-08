# general ----
roxy_clean <- function() { # nocov start
  'Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or list.'
} # nocov end

# filings ----
roxy_affiliated_organization_country <- function() { # nocov start
  'Affiliated Organization Country. Such as "US" or "CA".'
} # nocov end

roxy_affiliated_organization_listed_indicator <- function() { # nocov start
  'Any Affiliated Organizations Listed. Boolean value.'
} # nocov end

roxy_affiliated_organization_name <- function() { # nocov start
  'Affiliated Organization Name. String value.'
} # nocov end

roxy_client_country <- function() { # nocov start
  'Client Country. Such as "US" or "CA".'
} # nocov end

roxy_client_id <- function() { # nocov start
  'Client ID. Integer value.'
} # nocov end

roxy_client_name <- function() { # nocov start
  'Client Name. String value.'
} # nocov end

roxy_client_ppb_country <- function() { # nocov start
  'Client PPB Country. Such as "US" or "CA".'
} # nocov end

roxy_client_ppb_state <- function() { # nocov start
  'Client PPB State. Such as "AL" or "AK".'
} # nocov end

roxy_client_state <- function() { # nocov start
  'Client State. Such as "AL" or "AK".'
} # nocov end

roxy_filing_amount_reported_max <- function() { # nocov start
  'Filing Amount Reported Range (Min / Max). Float value.'
} # nocov end

roxy_filing_amount_reported_min <- function() { # nocov start
  'Filing Amount Reported Range (Min / Max). Float value.'
} # nocov end

roxy_filing_dt_posted_after <- function() { # nocov start
  'Filing Date Posted Range (Before / After): yyyy-mm-dd. Date-time value.'
} # nocov end

roxy_filing_dt_posted_before <- function() { # nocov start
  'Filing Date Posted Range (Before / After): yyyy-mm-dd. Date-time value.'
} # nocov end

roxy_filing_period <- function() { # nocov start
  'Filing Period. Such as "first_quarter", "second_quarter", "third_quarter", "fourth_quarter", "mid_year", or "year_end".'
} # nocov end

roxy_filing_specific_lobbying_issues <- function() { # nocov start
  'Filing Specific Lobbying Issues (Supports Advanced Text Searching). String value.'
} # nocov end

roxy_filing_type <- function() { # nocov start
  'Filing Type. Such as "RR", "RA", "Q1", "Q1Y", "1T", or "1TY".'
} # nocov end

roxy_filing_uuid <- function() { # nocov start
  'filing_uuid. UUID value.'
} # nocov end

roxy_filing_year <- function() { # nocov start
  'Filing Year. Such as 2025, 2024, or 2023.'
} # nocov end

roxy_foreign_entity_country <- function() { # nocov start
  'Foreign Entity Country. Such as "US" or "CA".'
} # nocov end

roxy_foreign_entity_listed_indicator <- function() { # nocov start
  'Any Foreign Entities Listed. Boolean value.'
} # nocov end

roxy_foreign_entity_name <- function() { # nocov start
  'Foreign Entity Name. String value.'
} # nocov end

roxy_foreign_entity_ownership_percentage_max <- function() { # nocov start
  'Foreign Entity Ownership Percentage. String value.'
} # nocov end

roxy_foreign_entity_ownership_percentage_min <- function() { # nocov start
  'Foreign Entity Ownership Percentage. String value.'
} # nocov end

roxy_foreign_entity_ppb_country <- function() { # nocov start
  'Foreign Entity PPB Country. Such as "US" or "CA".'
} # nocov end

roxy_lobbyist_conviction_date_range_after <- function() { # nocov start
  'Lobbyist Conviction Date Range (Before / After): yyyy-mm-dd. Date value.'
} # nocov end

roxy_lobbyist_conviction_date_range_before <- function() { # nocov start
  'Lobbyist Conviction Date Range (Before / After): yyyy-mm-dd. Date value.'
} # nocov end

roxy_lobbyist_conviction_disclosure <- function() { # nocov start
  'Lobbyist Conviction Description (Supports Advanced Text Searching). String value.'
} # nocov end

roxy_lobbyist_conviction_disclosure_indicator <- function() { # nocov start
  'Lobbyist Any Disclosed Conviction(s). Boolean value.'
} # nocov end

roxy_lobbyist_covered_position <- function() { # nocov start
  'Lobbyist Covered Position (Supports Advanced Text Searching). String value.'
} # nocov end

roxy_lobbyist_covered_position_indicator <- function() { # nocov start
  'Any Covered Government Position(s). Boolean value.'
} # nocov end

roxy_lobbyist_id <- function() { # nocov start
  'Lobbyist ID. Integer value.'
} # nocov end

roxy_lobbyist_name <- function() { # nocov start
  'Lobbyist Name. String value.'
} # nocov end

roxy_ordering <- function() { # nocov start
  'Which field to use when ordering the results. String value.'
} # nocov end

roxy_page <- function() { # nocov start
  'A page number within the paginated result set. Integer value.'
} # nocov end

roxy_page_size <- function() { # nocov start
  'Number of results to return per page. Integer value.'
} # nocov end

roxy_registrant_country <- function() { # nocov start
  'Registrant Country. Such as "US" or "CA".'
} # nocov end

roxy_registrant_id <- function() { # nocov start
  'Registrant ID. Integer value.'
} # nocov end

roxy_registrant_name <- function() { # nocov start
  'Registrant Name. String value.'
} # nocov end

roxy_registrant_ppb_country <- function() { # nocov start
  'Registrant PPB Country. Such as "US" or "CA".'
} # nocov end

# contributions ----
roxy_contribution_amount_max <- function() { # nocov start
  'Contribution Amount Range. Float value.'
} # nocov end

roxy_contribution_amount_min <- function() { # nocov start
  'Contribution Amount Range. Float value.'
} # nocov end

roxy_contribution_contributor <- function() { # nocov start
  'Contribution Contributor Name. String value.'
} # nocov end

roxy_contribution_date_after <- function() { # nocov start
  'Contribution Date Range (Before / After): yyyy-mm-dd. Date value.'
} # nocov end

roxy_contribution_date_before <- function() { # nocov start
  'Contribution Date Range (Before / After): yyyy-mm-dd. Date value.'
} # nocov end

roxy_contribution_honoree <- function() { # nocov start
  'Contribution Honoree Name. String value.'
} # nocov end

roxy_contribution_payee <- function() { # nocov start
  'Contribution Payee Name. String value.'
} # nocov end

roxy_contribution_type <- function() { # nocov start
  'Contribution Type. Such as "feca", "he", "me", "ple", or "pic".'
} # nocov end

roxy_lobbyist_exclude <- function() { # nocov start
  'Exclude reports filed by the lobbyists. Boolean value.'
} # nocov end

# registrants ----
roxy_country <- function() { # nocov start
  'Country. Such as "US" or "CA".'
} # nocov end

roxy_dt_updated_after <- function() { # nocov start
  'Date Update Range (Before / After): yyyy-mm-dd. Date-time value.'
} # nocov end

roxy_dt_updated_before <- function() { # nocov start
  'Date Update Range (Before / After): yyyy-mm-dd. Date-time value.'
} # nocov end

roxy_id <- function() { # nocov start
  'ID. Integer value.'
} # nocov end

roxy_ppb_country <- function() { # nocov start
  'PPB Country. Such as "US" or "CA".'
} # nocov end

roxy_state <- function() { # nocov start
  'State. Such as "AL" or "AK".'
} # nocov end

# clients ----
# no new ones needed for now

# lobbyists ----
# no new ones needed for now
