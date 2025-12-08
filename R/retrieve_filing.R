#' Retrieve a specific filing by its UUID
#'
#' @param filing_uuid `r roxy_filing_uuid()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of lobbying filing details
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_retrieve_filing(filing_uuid = '3b181214-b253-462c-ad64-783c827e159e')
lob_retrieve_filing <- function(
    filing_uuid,
    clean = TRUE) {
  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('filings', filing_uuid, '/') |>
    maybe_auth()

  resp <- req |>
    httr2::req_perform() |>
    httr2::resp_body_json()

  if (isTRUE(clean)) {
    resp |>
      list_to_row() |>
      add_singletons(resp)
  } else {
    resp
  }
}
