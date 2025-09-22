test_that("incorrect inputs raise errors", {
  bads <- list(
    letters[1:5],
    matrix(1:12, 4, 3)
  )
  
  expect_error(listsize(bads[[1]]), "requires a list")
  expect_error(listsize(bads[[2]]), "requires a list")
})

test_that("listsize works as expected", {
  num_list = list(1:3, 4:5, 6:9)
  str_list = list(c("a","b"), letters[1:10])
  nul_list = list(1:3, NULL, 1:10)
  
  expect_equal(listsize(num_list), 9)
  expect_equal(listsize(str_list), 12)
  expect_equal(listsize(nul_list), 13)
})
