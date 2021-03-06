#' Import Google Sheets Data
#'
#' @param key Character. The key value associated with the google sheet which has the form responses.
#' @param tab Character. Name of the google sheet tab with the form responses.
#'
#' @export
#'
#' Run googlesheets:gs_ls() to initiate authentication

get_submissions <- function(key, tab) {
  rLangSheet <- googlesheets::gs_key(key)
  rLangSheet %>%
    googlesheets::gs_read(ws = tab)
}
