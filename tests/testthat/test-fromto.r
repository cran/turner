test_that("incorrect inputs raise errors", {
  bads <- list(
    letters[1:5],
    matrix(1:12, 4, 3)
  )
  expect_error(from_to(bads[[1]]), "requires a numeric vector or a list of vectors")
  expect_error(from_to(bads[[2]]), "requires a numeric vector")
})

test_that("from_to works as expected", {
  num_list = list(1:3, 4:5, 6:9)
  str_list = list(c("a","b"), letters[1:5])
  nul_list = list(1:3, NULL, 1:10)
  
  expect_equal(from_to(num_list), list(from=c(1, 4, 6), to=c(3, 5, 9)))
  expect_equal(from_to(str_list), list(from=c(1, 3), to=c(2, 7)))
  #expect_equal(from_to(nul_list), list(from=c(1, 4, 4), to=c(3, 3, 13)))
})

