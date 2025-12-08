# general ----
roxy_clean <- function() {
  'Default is TRUE. Should output be returned as a `tibble` (`TRUE`) or list.'
}

# filings ----
roxy_affiliated_organization_country <- function() { # start nocov
  'Affiliated Organization Country. Such as "US" or "CA".'
} # end nocov

roxy_affiliated_organization_listed_indicator <- function() { # start nocov
  'Any Affiliated Organizations Listed. Boolean value.'
} # end nocov

roxy_affiliated_organization_name <- function() { # start nocov
  'Affiliated Organization Name. String value.'
} # end nocov

roxy_client_country <- function() { # start nocov
  'Client Country. Such as "US" or "CA".'
} # end nocov

roxy_client_id <- function() { # start nocov
  'Client ID. Integer value.'
} # end nocov

roxy_client_name <- function() { # start nocov
  'Client Name. String value.'
} # end nocov

roxy_client_ppb_country <- function() { # start nocov
  'Client PPB Country. Such as "US" or "CA".'
} # end nocov

roxy_client_ppb_state <- function() { # start nocov
  'Client PPB State. Such as "AL" or "AK".'
} # end nocov

roxy_client_state <- function() { # start nocov
  'Client State. Such as "AL" or "AK".'
} # end nocov

roxy_filing_amount_reported_max <- function() { # start nocov
  'Filing Amount Reported Range (Min / Max). Float value.'
} # end nocov

roxy_filing_amount_reported_min <- function() { # start nocov
  'Filing Amount Reported Range (Min / Max). Float value.'
} # end nocov

roxy_filing_dt_posted_after <- function() { # start nocov
  'Filing Date Posted Range (Before / After): yyyy-mm-dd. Date-time value.'
} # end nocov

roxy_filing_dt_posted_before <- function() { # start nocov
  'Filing Date Posted Range (Before / After): yyyy-mm-dd. Date-time value.'
} # end nocov

roxy_filing_period <- function() { # start nocov
  'Filing Period. Such as "first_quarter", "second_quarter", "third_quarter", "fourth_quarter", "mid_year", or "year_end".'
} # end nocov

roxy_filing_specific_lobbying_issues <- function() { # start nocov
  'Filing Specific Lobbying Issues (Supports Advanced Text Searching). String value.'
} # end nocov

roxy_filing_type <- function() { # start nocov
  'Filing Type. Such as "RR", "RA", "Q1", "Q1Y", "1T", or "1TY".'
} # end nocov

roxy_filing_uuid <- function() { # start nocov
  'filing_uuid. UUID value.'
} # end nocov

roxy_filing_year <- function() { # start nocov
  'Filing Year. Such as 2025, 2024, or 2023.'
} # end nocov

roxy_foreign_entity_country <- function() { # start nocov
  'Foreign Entity Country. Such as "US" or "CA".'
} # end nocov

roxy_foreign_entity_listed_indicator <- function() { # start nocov
  'Any Foreign Entities Listed. Boolean value.'
} # end nocov

roxy_foreign_entity_name <- function() { # start nocov
  'Foreign Entity Name. String value.'
} # end nocov

roxy_foreign_entity_ownership_percentage_max <- function() { # start nocov
  'Foreign Entity Ownership Percentage. String value.'
} # end nocov

roxy_foreign_entity_ownership_percentage_min <- function() { # start nocov
  'Foreign Entity Ownership Percentage. String value.'
} # end nocov

roxy_foreign_entity_ppb_country <- function() { # start nocov
  'Foreign Entity PPB Country. Such as "US" or "CA".'
} # end nocov

roxy_lobbyist_conviction_date_range_after <- function() { # start nocov
  'Lobbyist Conviction Date Range (Before / After): yyyy-mm-dd. Date value.'
} # end nocov

roxy_lobbyist_conviction_date_range_before <- function() { # start nocov
  'Lobbyist Conviction Date Range (Before / After): yyyy-mm-dd. Date value.'
} # end nocov

roxy_lobbyist_conviction_disclosure <- function() { # start nocov
  'Lobbyist Conviction Description (Supports Advanced Text Searching). String value.'
} # end nocov

roxy_lobbyist_conviction_disclosure_indicator <- function() { # start nocov
  'Lobbyist Any Disclosed Conviction(s). Boolean value.'
} # end nocov

roxy_lobbyist_covered_position <- function() { # start nocov
  'Lobbyist Covered Position (Supports Advanced Text Searching). String value.'
} # end nocov

roxy_lobbyist_covered_position_indicator <- function() { # start nocov
  'Any Covered Government Position(s). Boolean value.'
} # end nocov

roxy_lobbyist_id <- function() { # start nocov
  'Lobbyist ID. Integer value.'
} # end nocov

roxy_lobbyist_name <- function() { # start nocov
  'Lobbyist Name. String value.'
} # end nocov

roxy_ordering <- function() { # start nocov
  'Which field to use when ordering the results. String value.'
} # end nocov

roxy_page <- function() { # start nocov
  'A page number within the paginated result set. Integer value.'
} # end nocov

roxy_page_size <- function() { # start nocov
  'Number of results to return per page. Integer value.'
} # end nocov

roxy_registrant_country <- function() { # start nocov
  'Registrant Country. Such as "US" or "CA".'
} # end nocov

roxy_registrant_id <- function() { # start nocov
  'Registrant ID. Integer value.'
} # end nocov

roxy_registrant_name <- function() { # start nocov
  'Registrant Name. String value.'
} # end nocov

roxy_registrant_ppb_country <- function() { # start nocov
  'Registrant PPB Country. Such as "US" or "CA".'
} # end nocov

# contributions ----
roxy_contribution_amount_max <- function() { # start nocov
  'Contribution Amount Range. Float value.'
} # end nocov

roxy_contribution_amount_min <- function() { # start nocov
  'Contribution Amount Range. Float value.'
} # end nocov

roxy_contribution_contributor <- function() { # start nocov
  'Contribution Contributor Name. String value.'
} # end nocov

roxy_contribution_date_after <- function() { # start nocov
  'Contribution Date Range (Before / After): yyyy-mm-dd. Date value.'
} # end nocov

roxy_contribution_date_before <- function() { # start nocov
  'Contribution Date Range (Before / After): yyyy-mm-dd. Date value.'
} # end nocov

roxy_contribution_honoree <- function() { # start nocov
  'Contribution Honoree Name. String value.'
} # end nocov

roxy_contribution_payee <- function() { # start nocov
  'Contribution Payee Name. String value.'
} # end nocov

roxy_contribution_type <- function() { # start nocov
  'Contribution Type. Such as "feca", "he", "me", "ple", or "pic".'
} # end nocov

roxy_lobbyist_exclude <- function() { # start nocov
  'Exclude reports filed by the lobbyists. Boolean value.'
} # end nocov

# registrants ----
roxy_country <- function() { # start nocov
  'Country. Such as "US" or "CA".'
} # end nocov

roxy_dt_updated_after <- function() { # start nocov
  'Date Update Range (Before / After): yyyy-mm-dd. Date-time value.'
} # end nocov

roxy_dt_updated_before <- function() { # start nocov
  'Date Update Range (Before / After): yyyy-mm-dd. Date-time value.'
} # end nocov

roxy_id <- function() { # start nocov
  'ID. Integer value.'
} # end nocov

roxy_ppb_country <- function() { # start nocov
  'PPB Country. Such as "US" or "CA".'
} # end nocov

roxy_state <- function() { # start nocov
  'State. Such as "AL" or "AK".'
} # end nocov

# clients ----
# no new ones needed for now

# lobbyists ----
# no new ones needed for now
