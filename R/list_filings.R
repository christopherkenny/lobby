#' List Lobbying Filings
#'
#' @param affiliated_organization_country `r roxy_affiliated_organization_country()`
#' @param affiliated_organization_listed_indicator `r roxy_affiliated_organization_listed_indicator()`
#' @param affiliated_organization_name `r roxy_affiliated_organization_name()`
#' @param client_country `r roxy_client_country()`
#' @param client_id `r roxy_client_id()`
#' @param client_name `r roxy_client_name()`
#' @param client_ppb_country `r roxy_client_ppb_country()`
#' @param client_ppb_state `r roxy_client_ppb_state()`
#' @param client_state `r roxy_client_state()`
#' @param filing_amount_reported_max `r roxy_filing_amount_reported_max()`
#' @param filing_amount_reported_min `r roxy_filing_amount_reported_min()`
#' @param filing_dt_posted_after `r roxy_filing_dt_posted_after()`
#' @param filing_dt_posted_before `r roxy_filing_dt_posted_before()`
#' @param filing_period `r roxy_filing_period()`
#' @param filing_specific_lobbying_issues `r roxy_filing_specific_lobbying_issues()`
#' @param filing_type `r roxy_filing_type()`
#' @param filing_uuid `r roxy_filing_uuid()`
#' @param filing_year `r roxy_filing_year()`
#' @param foreign_entity_country `r roxy_foreign_entity_country()`
#' @param foreign_entity_listed_indicator `r roxy_foreign_entity_listed_indicator()`
#' @param foreign_entity_name `r roxy_foreign_entity_name()`
#' @param foreign_entity_ownership_percentage_max `r roxy_foreign_entity_ownership_percentage_max()`
#' @param foreign_entity_ownership_percentage_min `r roxy_foreign_entity_ownership_percentage_min()`
#' @param foreign_entity_ppb_country `r roxy_foreign_entity_ppb_country()`
#' @param lobbyist_conviction_date_range_after `r roxy_lobbyist_conviction_date_range_after()`
#' @param lobbyist_conviction_date_range_before `r roxy_lobbyist_conviction_date_range_before()`
#' @param lobbyist_conviction_disclosure `r roxy_lobbyist_conviction_disclosure()`
#' @param lobbyist_conviction_disclosure_indicator `r roxy_lobbyist_conviction_disclosure_indicator()`
#' @param lobbyist_covered_position `r roxy_lobbyist_covered_position()`
#' @param lobbyist_covered_position_indicator `r roxy_lobbyist_covered_position_indicator()`
#' @param lobbyist_id `r roxy_lobbyist_id()`
#' @param lobbyist_name `r roxy_lobbyist_name()`
#' @param ordering `r roxy_ordering()`
#' @param page `r roxy_page()`
#' @param page_size `r roxy_page_size()`
#' @param registrant_country `r roxy_registrant_country()`
#' @param registrant_id `r roxy_registrant_id()`
#' @param registrant_name `r roxy_registrant_name()`
#' @param registrant_ppb_country `r roxy_registrant_ppb_country()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of lobbying filings
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_list_filings(filing_year = 2024)
lob_list_filings <- function(
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
) {

  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('filings') |>
    maybe_auth() |>
    httr2::req_url_query(
      affiliated_organization_country = affiliated_organization_country,
      affiliated_organization_listed_indicator = affiliated_organization_listed_indicator,
      affiliated_organization_name = affiliated_organization_name,
      client_country = client_country,
      client_id = client_id,
      client_name = client_name,
      client_ppb_country = client_ppb_country,
      client_ppb_state = client_ppb_state,
      client_state = client_state,
      filing_amount_reported_max = filing_amount_reported_max,
      filing_amount_reported_min = filing_amount_reported_min,
      filing_dt_posted_after = filing_dt_posted_after,
      filing_dt_posted_before = filing_dt_posted_before,
      filing_period = filing_period,
      filing_specific_lobbying_issues = filing_specific_lobbying_issues,
      filing_type = filing_type,
      filing_uuid = filing_uuid,
      filing_year = filing_year,
      foreign_entity_country = foreign_entity_country,
      foreign_entity_listed_indicator = foreign_entity_listed_indicator,
      foreign_entity_name = foreign_entity_name,
      foreign_entity_ownership_percentage_max = foreign_entity_ownership_percentage_max,
      foreign_entity_ownership_percentage_min = foreign_entity_ownership_percentage_min,
      foreign_entity_ppb_country = foreign_entity_ppb_country,
      lobbyist_conviction_date_range_after = lobbyist_conviction_date_range_after,
      lobbyist_conviction_date_range_before = lobbyist_conviction_date_range_before,
      lobbyist_conviction_disclosure = lobbyist_conviction_disclosure,
      lobbyist_conviction_disclosure_indicator = lobbyist_conviction_disclosure_indicator,
      lobbyist_covered_position = lobbyist_covered_position,
      lobbyist_covered_position_indicator = lobbyist_covered_position_indicator,
      lobbyist_id = lobbyist_id,
      lobbyist_name = lobbyist_name,
      ordering = ordering,
      page = page,
      page_size = page_size,
      registrant_country = registrant_country,
      registrant_id = registrant_id,
      registrant_name = registrant_name,
      registrant_ppb_country = registrant_ppb_country
    )

  resp <- req |>
    httr2::req_perform() |>
    httr2::resp_body_json()

  if (isTRUE(clean)) {
    resp |>
      purrr::pluck('results') |>
      lapply(list_to_row) |>
      dplyr::bind_rows() |>
      add_singletons(resp)
  } else {
    resp
  }
}
