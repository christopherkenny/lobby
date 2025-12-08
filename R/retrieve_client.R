#' Retrieve a specific client by its ID
#'
#' @param id `r roxy_id()`
#' @param clean `r roxy_clean()`
#'
#' @returns a `tibble` of lobbying client details
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_retrieve_client(id = '44400')
lob_retrieve_client <- function(
    id,
    clean = TRUE
) {
  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('clients', id, '/') |>
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
