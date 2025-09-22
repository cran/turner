test_that("incorrect inputs raise errors", {
  bads <- list(
    list(1:4, 4:7),
    matrix(1:12, 4, 3)
  )
  expect_error(listify(bads[[1]]), "requires a vector of positive integers")
  expect_equal(listify(bads[[2]]), mapply(rep,1:12,1:12))
})

test_that("listify works as expected", {
  num_ind = c(3, 5, 2)
  num_list = list(c(1,1,1), c(2,2,2,2,2), c(3,3))
  
  expect_equal(listify(num_ind), num_list, ignore_attr = TRUE)
})
