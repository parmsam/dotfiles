# install helper libraries --------------------------------------
if (FALSE) {
  ## install CRAN packages as needed -----------------------------------------
  cranPkgs <- c(
    "remotes",
    "usethis",
    "fs",
    "styler",
    "stringr",
    "glue",
    "beepr",
    "todor"
  )
  install_status <- all(sapply(cranPkgs, require, character.only = TRUE))
  if (!install_status) {
    utils::install.packages(cranPkgs, repos = "http://cloud.r-project.org")
    sapply(cranPkgs, require, character.only = TRUE)
  }
  rm(install_status)
}

## install github packages as needed ---------------------------------------
if (FALSE) {
  ghPkgs <- c("dreamRs/prefixer", "dreamRs/esquisse")
  install_status <- all(
    sapply(stringr::str_remove_all(ghPkgs, ".*/"),
           require,
           character.only = TRUE
    )
  )
  if (interactive() & !install_status) {
    sapply(ghPkgs, remotes::install_github)
  }
  rm(install_status)
}

# setup notification beep/sound -------------------------------------------
if (TRUE) {
  options(warning = function() {
    beepr::beep(1)
  })
  options(message = function() {
    beepr::beep(10)
  })
  options(error = function() {
    beepr::beep(11)
  })
}

# load helper libraries ---------------------------------------------------
if (TRUE) {
  sapply(stringr::str_remove_all(cranPkgs, ".*/"),
         require,
         character.only = TRUE
  )
  ## see loaded packages ----------------------------------------------------
  ldpks <- function() {
    (.packages())
  }
}
if (FALSE) {
  sapply(stringr::str_remove_all(ghPkgs, ".*/"),
         require,
         character.only = TRUE
  )
}

# helper functions --------------------------------------------------------
## search sites -----------------------------------------------------------
search_google <- function(...,
                          base_url = "https://google.com/search?q=",
                          add_rterm = TRUE,
                          tag = FALSE,
                          use_error = FALSE) {
  search_terms <- c(...)
  prefix <- "r"
  if (tag) {
    prefix <- "[r]"
  }
  
  if (use_error) {
    last_error <- geterrmessage()
    if (is.null(last_error)) {
      stop("No error message available")
    }
    search_terms <- last_error
  }
  
  if (add_rterm) {
    search_terms <- c(prefix, search_terms)
  }
  search_url <- paste0(
    base_url,
    paste(URLencode(search_terms, reserved = TRUE),
          collapse = "+"
    )
  )
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
  search_google(
    ...,
    base_url = .base_url,
    add_rterm = .add_rterm,
    tag = .tag,
    use_error = .use_error
  )
}

search_twitter <- function(...,
                           .base_url = "https://twitter.com/search?q=",
                           .add_rterm = FALSE) {
  search_google(..., base_url = .base_url, add_rterm = .add_rterm)
}

# setup extra shortcuts ---------------------------------------------------
if (interactive() && requireNamespace("shrtcts", quietly = TRUE)) {
  shrtcts::add_rstudio_shortcuts(set_keyboard_shortcuts = TRUE)
}
