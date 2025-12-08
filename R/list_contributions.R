#' List Contribution Reports
#'
#' @param contribution_amount_max `r roxy_contribution_amount_max()`
#' @param contribution_amount_min `r roxy_contribution_amount_min()`
#' @param contribution_contributor `r roxy_contribution_contributor()`
#' @param contribution_date_after `r roxy_contribution_date_after()`
#' @param contribution_date_before `r roxy_contribution_date_before()`
#' @param contribution_honoree `r roxy_contribution_honoree()`
#' @param contribution_payee `r roxy_contribution_payee()`
#' @param contribution_type `r roxy_contribution_type()`
#' @param filing_dt_posted_after `r roxy_filing_dt_posted_after()`
#' @param filing_dt_posted_before `r roxy_filing_dt_posted_before()`
#' @param filing_period `r roxy_filing_period()`
#' @param filing_type `r roxy_filing_type()`
#' @param filing_uuid `r roxy_filing_uuid()`
#' @param filing_year `r roxy_filing_year()`
#' @param lobbyist_exclude `r roxy_lobbyist_exclude()`
#' @param lobbyist_id `r roxy_lobbyist_id()`
#' @param lobbyist_name `r roxy_lobbyist_name()`
#' @param ordering `r roxy_ordering()`
#' @param page `r roxy_page()`
#' @param page_size `r roxy_page_size()`
#' @param registrant_id `r roxy_registrant_id()`
#' @param registrant_name `r roxy_registrant_name()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of lobbying contributions
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_list_contributions()
lob_list_contributions <- function(
    contribution_amount_max = NULL,
    contribution_amount_min = NULL,
    contribution_contributor = NULL,
    contribution_date_after = NULL,
    contribution_date_before = NULL,
    contribution_honoree = NULL,
    contribution_payee = NULL,
    contribution_type = NULL,
    filing_dt_posted_after = NULL,
    filing_dt_posted_before = NULL,
    filing_period = NULL,
    filing_type = NULL,
    filing_uuid = NULL,
    filing_year = NULL,
    lobbyist_exclude = NULL,
    lobbyist_id = NULL,
    lobbyist_name = NULL,
    ordering = NULL,
    page = NULL,
    page_size = NULL,
    registrant_id = NULL,
    registrant_name = NULL,
    clean = TRUE) {
  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('contributions') |>
    maybe_auth() |>
    httr2::req_url_query(
      contribution_amount_max = contribution_amount_max,
      contribution_amount_min = contribution_amount_min,
      contribution_contributor = contribution_contributor,
      contribution_date_after = contribution_date_after,
      contribution_date_before = contribution_date_before,
      contribution_honoree = contribution_honoree,
      contribution_payee = contribution_payee,
      contribution_type = contribution_type,
      filing_dt_posted_after = filing_dt_posted_after,
      filing_dt_posted_before = filing_dt_posted_before,
      filing_period = filing_period,
      filing_type = filing_type,
      filing_uuid = filing_uuid,
      filing_year = filing_year,
      lobbyist_exclude = lobbyist_exclude,
      lobbyist_id = lobbyist_id,
      lobbyist_name = lobbyist_name,
      ordering = ordering,
      page = page,
      page_size = page_size,
      registrant_id = registrant_id,
      registrant_name = registrant_name
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
