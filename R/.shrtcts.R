#' Insert dashes.
#'
#' Call this function as an addin to insert 4 dashes.
#'
#' @interactive
#' @shortcut Ctrl+Alt+P

insert_dashes <- function(){

  # Get active document context
  context <- rstudioapi::getActiveDocumentContext()

  # Set number of dashes to 4
  num_dashes <- 4

  # Insert dashes
  rstudioapi::insertText(paste0(strrep("-", num_dashes), "\n"))

}
