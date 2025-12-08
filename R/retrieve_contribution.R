#' Retrieve a specific contribution by its UUID
#'
#' @param filing_uuid `r roxy_filing_uuid()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of lobbying contribution details
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_retrieve_contribution(filing_uuid = '86260004-84e7-46e3-9cfa-76edae508768')
lob_retrieve_contribution <- function(
    filing_uuid,
    clean = TRUE) {
  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('contributions', filing_uuid, '/') |>
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
