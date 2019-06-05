context("Pruning lm objects")

expect_absent_env <- function(x) {
  expect_equal(attr(x$terms, ".Environment"), NULL)
}

test_that("prune.lm() removes garbage", {
  mod <- lm(mpg ~ wt, data = mtcars)
  mod_pruned <- prune(mod)

  expect_absent_env(mod_pruned)
  expect_equal(predict(mod_pruned), predict(mod))
})
