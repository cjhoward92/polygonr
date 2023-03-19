get_ticker <- function(ticker) {
  if (!is_string(ticker)) {
    stop("ticker is required to be a string")
  }

  url <- append_url_path(base_url(), "reference", "tickers")
  url <- append_query_params(url, c("ticker" = toupper(ticker)))
  url <- append_api_key(url)

  response <- httr::GET(url)
  print(response)
  print(str(httr::content(response, "text", encoding = "UTF-8")))
}
