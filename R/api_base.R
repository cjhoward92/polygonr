base_url <- function() {
  "https://api.polygon.io/v3"
}

append_url_path <- function(url, ...) {
  paste(url, ..., sep ="/")
}

append_query_params <- function(url, params) {
  new_url <- url

  # If we don't already have a ? then add one
  if (!grepl("?", new_url, fixed = TRUE)) {
    new_url <- paste(url, "?", sep = "")
    first <- TRUE
  } else {
    # Inevitably, since we have the ?, we have query params already...
    # So we think...
    first <- FALSE
  }


  for (key in names(params)) {
    if (!first) {
      new_url <- paste(new_url, "&", sep = "")
    }

    full_key <- paste(key, params[key], sep = "=")
    new_url <- paste(new_url, full_key, sep = "")
    first <- FALSE
  }

  return(new_url)
}

append_api_key <- function(url) {
  append_query_params(url, c("apiKey" = get_api_key()))
}
