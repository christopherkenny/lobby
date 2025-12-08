#' List Lobbying Filings
#'
#' @param client_country `r roxy_client_country()`
#' @param client_name `r roxy_client_name()`
#' @param client_ppb_country `r roxy_client_ppb_country()`
#' @param client_ppb_state `r roxy_client_ppb_state()`
#' @param client_state `r roxy_client_state()`
#' @param id `r roxy_id()`
#' @param ordering `r roxy_ordering()`
#' @param page `r roxy_page()`
#' @param page_size `r roxy_page_size()`
#' @param registrant_id `r roxy_registrant_id()`
#' @param registrant_name `r roxy_registrant_name()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of clients
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_list_clients(client_country = 'US')
lob_list_clients <- function(
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
) {

  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('clients') |>
    maybe_auth() |>
    httr2::req_url_query(
      client_country = client_country,
      client_name = client_name,
      client_ppb_country = client_ppb_country,
      client_ppb_state = client_ppb_state,
      client_state = client_state,
      id = id,
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
