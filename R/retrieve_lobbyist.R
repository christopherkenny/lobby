#' Retrieve a specific lobbyist by their ID
#'
#' @param id `r roxy_id()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of lobbyist
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_retrieve_lobbyist(id = 1)
lob_retrieve_lobbyist <- function(
    id,
    clean = TRUE
) {
  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('lobbyists', id, '/') |>
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
