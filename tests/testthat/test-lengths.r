test_that("incorrect inputs raise errors", {
  bads <- list(
    letters[1:5],
    matrix(1:12, 4, 3)
  )
  
  expect_error(lengths(bads[[1]]), "requires a list")
  expect_error(lengths(bads[[2]]), "requires a list")
})

test_that("lengths works as expected", {
  num_list = list(1:3, 4:5, 6:9)
  str_list = list(c("a","b"), letters[1:10])
  nul_list = list(1:3, NULL, 1:10)
  
  expect_equal(lengths(num_list), c(3, 2, 4))
  expect_equal(lengths(num_list, 'list'), list(3, 2, 4))
  expect_equal(lengths(str_list), c(2, 10))
  expect_equal(lengths(str_list, 'list'), list(2, 10))  
  expect_equal(lengths(nul_list), c(3, 0, 10))
  expect_equal(lengths(nul_list, 'list'), list(3, 0, 10))  
})
