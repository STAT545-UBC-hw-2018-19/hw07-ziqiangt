context("sets levels to the order in which they appear in the data")

# 1
test_that("Levels in order.", {
  f <- factor(c("a", "b", "c","a"))
  expect_equal(levels(f_set(f)), c("a", "b", "c"))
})

# 2
test_that("Levels in order.", {
  f <- factor(c("D", "E", "C","E"))
  expect_equal(levels(f_set(f)), c("D", "E", "C"))
})

# 3
test_that("Error flag.", {
  f <- is.character(c("a", "b", "c","d"))
  expect_error(f_set(f))
})
