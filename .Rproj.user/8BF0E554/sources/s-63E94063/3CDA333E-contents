context("Detect factors are characters")

# 1
test_that("Factor is not character.", {
  f <- factor(c("a", "b", "c","a"))
  expect_false(f_detect(f))
})

# 2
test_that("Factor does be character.", {
  f <- factor(c("a", "b", "c","d"))
expect_true(f_detect(f))
})

# 3
test_that("Error flag.", {
  f <- is.character(c("a", "b", "c","d"))
  expect_error(f_detect(f))
})
