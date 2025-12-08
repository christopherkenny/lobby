#' Check or Get US Senate Lobbying Disclosure API Key
#'
#' @return logical if `has`, key if `get`
#' @export
#'
#' @name key
#'
#' @examples
#' has_lobby_key()
has_lobby_key <- function() {
  Sys.getenv('USSLDA_KEY') != ''
}

#' @rdname key
#' @export
get_lobby_key <- function() {
  key <- Sys.getenv('USSLDA_KEY')

  # if (key == '') {
  #   cli::cli_abort('Must set a key as {.val USSLDA_KEY}.')
  # }
  key
}

#' Add Entry to Renviron
#'
#' Adds US Senate Lobbying Disclosure API key to .Renviron.
#'
#' @param key Character. API key to add to add.
#' @param overwrite Defaults to FALSE. Boolean. Should existing `USSLDA_KEY` in Renviron be overwritten?
#' @param install Defaults to FALSE. Boolean. Should this be added '~/.Renviron' file?
#'
#' @return key, invisibly
#' @export
#'
#' @examples
#' \dontrun{
#' set_lobby_key('1234')
#' }
#'
set_lobby_key <- function(key, overwrite = FALSE, install = FALSE) {
  if (missing(key)) {
    cli::cli_abort('Input {.arg key} cannot be missing.')
  }
  name <- 'USSLDA_KEY'

  key <- list(key)
  names(key) <- name

  if (install) { # nocov start
    r_env <- file.path(Sys.getenv('HOME'), '.Renviron')

    if (!file.exists(r_env)) {
      file.create(r_env)
    }

    lines <- readLines(r_env)
    newline <- paste0(name, "='", key, "'")

    exists <- grepl(paste0(name, '='), lines)

    if (any(exists)) {
      if (sum(exists) > 1) {
        cli::cli_abort('Multiple entries in .Renviron found.\nEdit manually with {.fn usethis::edit_r_environ}.')
      }

      if (overwrite) {
        lines[exists] <- newline
        writeLines(lines, r_env)
        do.call(Sys.setenv, key)
      } else {
        cli::cli_inform('{.arg USSLDA_KEY} already exists in .Renviron. \nEdit manually with {.fn usethis::edit_r_environ} or set {.code overwrite = TRUE}.')
      }
    } else {
      lines[length(lines) + 1] <- newline
      writeLines(lines, r_env)
      do.call(Sys.setenv, key)
    }
  } else {
    do.call(Sys.setenv, key)
  } # nocov end

  invisible(key)
}
