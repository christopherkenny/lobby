# Add Entry to Renviron

Adds US Senate Lobbying Disclosure API key to .Renviron.

## Usage

``` r
set_lobby_key(key, overwrite = FALSE, install = FALSE)
```

## Arguments

- key:

  Character. API key to add to add.

- overwrite:

  Defaults to FALSE. Boolean. Should existing `USSLDA_KEY` in Renviron
  be overwritten?

- install:

  Defaults to FALSE. Boolean. Should this be added '~/.Renviron' file?

## Value

key, invisibly

## Examples

``` r
if (FALSE) { # \dontrun{
set_lobby_key('1234')
} # }
```
