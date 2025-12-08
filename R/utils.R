# devtools ----
# devtools not intended for use in production, not tested
lrj <- function() { # nocov start
  httr2::last_response() |>
    httr2::resp_body_json()
} # nocov end

.gl <- function(x) { # nocov start
  dplyr::glimpse(x)
} # nocov end

# query tools ----
maybe_auth <- function(req, key = get_lobby_key()) {
  if (key != '') {
    req
  } else {
    req |>
      httr2::req_headers(
        'Authorization' = paste('Token', key)
      )
  }
}

# tools for tidying ----
list_to_row <- function(x) {
  lapply(x, function(item) {
    if (is.null(item)) {
      NA
    } else if (is.list(item) && !is.data.frame(item)) {
      if (length(item) == 0) {
        list(tibble::tibble())
      } else if (all(sapply(item, is.list))) {
        lapply(item, function(subitem) {
          lapply(subitem, function(el) {
            if (is.null(el)) {
              list(NA)
            } else if (is.list(el) && length(el) > 0) {
              list(el)
            } else if (is.list(el) && length(el) == 0) {
              list(list())
            } else {
              el
            }
          }) |>
            tibble::as_tibble()
        }) |>
          dplyr::bind_rows() |>
          list()
      } else if (!is.null(names(item))) {
        lapply(item, function(el) {
          if (is.null(el)) {
            NA
          } else {
            el
          }
        }) |>
          tibble::as_tibble() |>
          list()
      } else {
        list(item)
      }
    } else {
      item
    }
  }) |>
    tibble::as_tibble()
}

add_singletons <- function(tb, l) {
  r1 <- purrr::keep(l, function(x) purrr::pluck_depth(x) <= 1)
  attr(tb, 'response_info') <- r1
  tb
}
