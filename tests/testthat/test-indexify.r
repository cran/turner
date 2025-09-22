test_that("incorrect inputs raise errors", {
  bads <- list(
    c(1:4, 4:7),
    matrix(1:12, 4, 3)
  )
  
  expect_equal(indexify(bads[[1]]), unlist(mapply(rep,1:8,c(1:4, 4:7))))
  expect_error(indexify(bads[[2]]), "requires a numeric vector")
})


test_that("indexify works as expected", {
  num_list = list(rnorm(3), rnorm(5))
  str_list = list(c("a","b","c"), c("d", "e"), c("f"))
  
  expect_equal(indexify(num_list), c(rep(1,3), rep(2,5)))
  expect_equal(indexify(num_list, 'list'), list(rep(1,3), rep(2,5)))
  expect_equal(indexify(str_list), c(1,1,1,2,2,3))
  expect_equal(indexify(str_list, 'list'), list(c(1,1,1), c(2,2), 3))
})
