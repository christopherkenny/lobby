#' Get constants
#'
#' @returns a `tibble` of lobbyists
#' @export
#'
#' @rdname lob_constants
#'
#' @examplesIf has_lobby_key()
#' lob_constants_filing_types()
#' lob_constants_lobbying_activity_issues()
#' lob_constants_government_entities()
#' lob_constants_countries()
#' lob_constants_states()
#' lob_constants_prefixes()
#' lob_constants_suffixes()
#' lob_constants_contribution_item_types()
lob_constants_filing_types <- function() {
  lob_constants_get(c('filing', 'filingtypes'))
}

#' @rdname lob_constants
#' @export
lob_constants_lobbying_activity_issues <- function() {
  lob_constants_get(c('filing', 'lobbyingactivityissues'))
}

#' @rdname lob_constants
#' @export
lob_constants_government_entities <- function() {
  lob_constants_get(c('filing', 'governmententities'))
}

#' @rdname lob_constants
#' @export
lob_constants_countries <- function() {
  lob_constants_get(c('general', 'countries'))
}

#' @rdname lob_constants
#' @export
lob_constants_states <- function() {
  lob_constants_get(c('general', 'states'))
}

#' @rdname lob_constants
#' @export
lob_constants_prefixes <- function() {
  lob_constants_get(c('lobbyist', 'prefixes'))
}

#' @rdname lob_constants
#' @export
lob_constants_suffixes <- function() {
  lob_constants_get(c('lobbyist', 'suffixes'))
}

#' @rdname lob_constants
#' @export
lob_constants_contribution_item_types <- function() {
  lob_constants_get(c('contribution', 'itemtypes'))
}

lob_constants_get <- function(path) {
  req <- httr2::request(base_url = api_url()) |>
    httr2::req_url_path_append('constants', path) |>
    maybe_auth()

  resp <- req |>
    httr2::req_perform() |>
    httr2::resp_body_json()

  resp |>
    lapply(list_to_row) |>
    dplyr::bind_rows()
}
