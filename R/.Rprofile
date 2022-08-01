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
