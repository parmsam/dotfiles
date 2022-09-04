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
                          add_rterm = TRUE,
                          tag = FALSE,
                          use_error = FALSE) {
  search_terms <- c(...)
  prefix <- "r"
  if(tag) prefix <- "[r]"
  
  if(use_error){
    last_error <- geterrmessage()
    if (is.null(last_error)) {
      stop("No error message available")
    }
    search_terms <- last_error
  }
  
  if(add_rterm) search_terms <- c(prefix, search_terms)
  search_url <- paste0(base_url,
                      paste( URLencode(search_terms, reserved = TRUE),
                            collapse = "+"))
  utils::browseURL(search_url)
}

search_github <- function(...,
                          .base_url = "https://github.com/search?q=",
                          .add_rterm = FALSE) {
  search_google(..., base_url = .base_url, add_rterm = .add_rterm)
}

search_stackoverflow <- function(...,
                          .base_url = "https://stackoverflow.com/search?q=",
                          .add_rterm = TRUE,
                          .tag = TRUE,
                          .use_error = FALSE) {
  search_google(..., base_url = .base_url, add_rterm = .add_rterm,
                 tag = .tag, use_error = .use_error)
}

search_twitter <- function(...,
                           .base_url = "https://twitter.com/search?q=",
                           .add_rterm = FALSE) {
  search_google(..., base_url = .base_url, add_rterm = .add_rterm)
}

# ~/.Rprofile
if (interactive() && requireNamespace("shrtcts", quietly = TRUE)) {
  shrtcts::add_rstudio_shortcuts(set_keyboard_shortcuts = TRUE)
}
