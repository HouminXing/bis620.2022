test_that("check_columns works", {
  test_df = data.frame(col1 = c(2, 2, 2), col2 = c(1, 1, 1))
  expect_equal(check_columns(test_df), FALSE)
})
