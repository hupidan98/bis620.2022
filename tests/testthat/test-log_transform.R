test_that("log transformation works on 0", {
  expect_equal(log_transform(0), c(0))
})

test_that("log transformation works on na", {
  expect_equal(log_transform(NA), c(0))
})

test_that("log transformation works on array", {
  expect_equal(log_transform(c(3, 1/0)), c(log(3), 0))
})

