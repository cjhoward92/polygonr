cleanup_after <- function() {
  old <- options(polygonr__api_key = NULL)
  base::on.exit(options(old), add = TRUE)
}
