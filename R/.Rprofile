if (!require("pacman")) install.packages("pacman")
cranPkgs <- c("usethis", "fs", "styler", "todor")
pacman::p_load(cranPkgs, character.only = TRUE)

if(interactive()){
  ghPkgs <- c("dreamRs/prefixer", "dreamRs/esquisse")
  pacman::p_load_gh(ghPkgs)
  pacman::p_load("reprex")
}

ldpks <- function() {
  (.packages())
}
R.version.string
ldpks()

search_google <- function(search_terms, 
                          base_url = "https://google.com/search?q=") {
  search_url = paste0(base_url,
                      paste(search_terms, collapse="+"))
  utils::browseURL(search_url)
}

search_github <- function(search_terms, 
                          .base_url = "https://github.com/search?q=") {
  search_google(search_terms, .base_url)
}
