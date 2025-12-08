#' List Lobbyists
#'
#' @param id `r roxy_id()`
#' @param lobbyist_name `r roxy_lobbyist_name()`
#' @param ordering `r roxy_ordering()`
#' @param page `r roxy_page()`
#' @param page_size `r roxy_page_size()`
#' @param registrant_id `r roxy_registrant_id()`
#' @param registrant_name `r roxy_registrant_name()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of lobbyists
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_list_lobbyists()
lob_list_lobbyists <- function(
  id = NULL,
  lobbyist_name = NULL,
  ordering = NULL,
  page = NULL,
  page_size = NULL,
  registrant_id = NULL,
  registrant_name = NULL,
    clean = TRUE
) {

  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('lobbyists') |>
    maybe_auth() |>
    httr2::req_url_query(
      id = id,
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
