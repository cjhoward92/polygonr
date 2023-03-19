test_that("set_api_key properly sets the key for retrieval", {
  cleanup_after()
  set_api_key("test")
  expect(get_api_key() == "test", "No api key was properly set")
})
