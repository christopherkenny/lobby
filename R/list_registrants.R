#' List Registrants
#'
#' @param country `r roxy_country()`
#' @param dt_updated_after `r roxy_dt_updated_after()`
#' @param dt_updated_before `r roxy_dt_updated_before()`
#' @param id `r roxy_id()`
#' @param ordering `r roxy_ordering()`
#' @param page `r roxy_page()`
#' @param page_size `r roxy_page_size()`
#' @param ppb_country `r roxy_ppb_country()`
#' @param registrant_name `r roxy_registrant_name()`
#' @param state `r roxy_state()`
#' @param clean `r roxy_clean()`
#' @returns a `tibble` of lobbying registrants
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_list_registrants(country = 'US')
lob_list_registrants <- function(
    country = NULL,
    dt_updated_after = NULL,
    dt_updated_before = NULL,
    id = NULL,
    ordering = NULL,
    page = NULL,
    page_size = NULL,
    ppb_country = NULL,
    registrant_name = NULL,
    state = NULL,
    clean = TRUE
) {

  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('registrants') |>
    maybe_auth() |>
    httr2::req_url_query(
      country = country,
      dt_updated_after = dt_updated_after,
      dt_updated_before = dt_updated_before,
      id = id,
      ordering = ordering,
      page = page,
      page_size = page_size,
      ppb_country = ppb_country,
      registrant_name = registrant_name,
      state = state
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
