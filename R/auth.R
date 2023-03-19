#' Set polygon.io api key
#'
#' @param api_key The api key as a string
#'
#' @return void
#' @export
#'
#' @examples
#' set_api_key("my_api_key")
set_api_key <- function(api_key) {
  if (!is_valid_key(api_key)) {
    stop("api_key is required")
  }

  message(paste(
    "Setting polygon.io api key via funcion.",
    "This value has been set for the current sesion only.",
    "It's recommended to use the POLYGON_API_KEY environment",
    "variable in an .Renviron file using `usethis::edit_r_environ()`",
    "followed by restarting R."
  ))

  options(polygonr__api_key = api_key)
}

#' Get the previously set polygon.io api key
#'
#' @return An api key or fails if nothing is set
#' @export
#'
#' @examples
#' key <- get_api_key()
get_api_key <- function() {
  api_key <- Sys.getenv("POLYGON_API_KEY", unset = "")

  if (is_valid_key(api_key)) {
    return(api_key)
  }

  api_key <- getOption("polygonr__api_key")

  if (!is_valid_key(api_key)) {
    message(paste(
      "No api key has been set.",
      "It's recommended to use the POLYGON_API_KEY environment",
      "variable in an .Renviron file using `usethis::edit_r_environ()`",
      "followed by restarting R. Otherwise, you can call the",
      "polygonr::set_api_key(key) function!"
    ))
  }

  return(invisible(api_key))
}

is_valid_key <- function(api_key) {
  if (!is_string(api_key) || nchar(api_key) < 1) {
    return(FALSE)
  }
  return(TRUE)
}
