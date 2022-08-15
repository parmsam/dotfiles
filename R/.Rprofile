# use {pak} to load  helper libraries -------------------------------------

if (!require("pak")) install.packages("pak")

## install cran packages if needed -----------------------------------------

cranPkgs <- c("usethis", "fs", "styler", "todor", "stringr")
pak::pkg_install(cranPkgs)

## install github packages if needed ---------------------------------------

ghPkgs <- c("dreamRs/prefixer", "dreamRs/esquisse")
if(interactive()) pak::pkg_install(ghPkgs)

## load helper libraries ---------------------------------------------------

lstPkgs <- c(cranPkgs, ghPkgs) |> stringr::str_remove(".*/")
sapply( lstPkgs, require, character.only = TRUE)

ldpks <- function() (.packages())
R.version.string
ldpks()

# helper functions --------------------------------------------------------

## search sites -----------------------------------------------------------

search_google <- function(...,
                          base_url = "https://google.com/search?q=", 
                          add_rterm = TRUE) {
  search_terms = c(...)
  if(add_rterm) search_terms = c("r", search_terms)
  search_url = paste0(base_url,
                      paste( URLencode(search_terms, reserved = TRUE),
                            collapse = "+"))
  utils::browseURL(search_url)
}

search_github <- function(...,
                          .base_url = "https://github.com/search?q=",
                          .add_rterm = FALSE) {
  search_google(..., base_url = .base_url, add_rterm = .add_rterm)
}
