# Add Entry to Renviron

Adds US Senate Lobbying Disclosure API key to .Renviron.

## Usage

``` r
set_lobby_key(key, overwrite = FALSE, install = FALSE, r_env = NULL)

lob_set_key(key, overwrite = FALSE, install = FALSE, r_env = NULL)
```

## Arguments

- key:

  Character. API key to add to add.

- overwrite:

  Defaults to FALSE. Boolean. Should existing `USSLDA_KEY` in Renviron
  be overwritten?

- install:

  Defaults to FALSE. Boolean. Should this be added '~/.Renviron' file?

- r_env:

  Path to install to if `install` is `TRUE`.

## Value

key, invisibly

## Examples

``` r
example_env <- tempfile(fileext = '.Renviron')
set_lobby_key('1234', r_env = example_env)
# r_env should likely be: file.path(Sys.getenv('HOME'), '.Renviron')
```
