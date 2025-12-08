#' Request next set of responses
#'
#' @param response A [tibble::tibble] from a `lob_*` function
#' @param max_req A max number of additional requests to make. Default is 1.
#'
#' @return a tibble with responses bound by row to new results
#' @export
#'
#' @examplesIf has_lobby_key()
#' lob_list_filings(filing_year = 2024) |>
#'   lob_request_next()
lob_request_next <- function(response, max_req = 1) {
  if (missing(response)) {
    cli::cli_abort('{.fn lob_request_next} must be called with an input to {.arg response}.')
  }

  resp_info <- attr(response, 'response_info')

  if (is.null(resp_info$`next`)) {
    return(response)
  }

  attr(response, 'response_info') <- NULL

  for (i in seq_len(max_req)) {
    resp <- httr2::request(base_url = resp_info$`next`) |>
      maybe_auth() |>
      httr2::req_perform() |>
      httr2::resp_body_json()

    new_resp <- resp |>
      purrr::pluck('results') |>
      lapply(list_to_row) |>
      dplyr::bind_rows() |>
      add_singletons(resp)

    response <- dplyr::bind_rows(response, new_resp)

    resp_info <- attr(new_resp, 'response_info')
    if (is.null(resp_info$`next`)) {
      attr(response, 'response_info') <- resp_info
      return(response)
    }
  }

  attr(response, 'response_info') <- resp_info
  response
}
