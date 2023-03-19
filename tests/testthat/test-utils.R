test_that("is_string returns TRUE for a string", {
  expect(is_string("test string"), "is_string is likely broken!")
})

test_that("is_string returns FALSE for things that aren't strings", {
  expect_false(is_string(NULL))
  expect_false(is_string(NA))
  expect_false(is_string(c(1, 2)))
  expect_false(is_string(1))
  expect_false(is_string(TRUE))
  expect_false(is_string(list("hello", "world")))
})
