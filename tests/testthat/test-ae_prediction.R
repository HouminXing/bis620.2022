test_that("ae_prediction works", {
  data(df)
  result = ae_prediction(df)
  expect_true(class(result) == "list")
})
