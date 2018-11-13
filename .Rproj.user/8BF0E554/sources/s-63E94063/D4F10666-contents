context("reorder() in decending order")

# 1
test_that("Decending order.", {
  f <- factor(c("a", "b", "c","a"))
  expect_equal(levels(f_reorder(f)), c("c", "b", "a"))
})

# 2
test_that("Decending order.", {
  f <- factor(c("D", "E", "C","A"))
  expect_equal(levels(f_reorder(f)), c("E", "D", "C", "A"))
})

# 3
test_that("Error flag.", {
  f <- is.character(c("a", "b", "c","d"))
  expect_error(f_reorder(f))
})
