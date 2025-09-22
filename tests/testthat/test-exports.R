test_that("exported objects exist in the namespace", {
  ex <- getNamespaceExports("turner")
  expect_type(ex, "character")
  # Must be able to get every exported object from the namespace
  for (nm in ex) {
    expect_true(exists(nm, where = asNamespace("turner"), inherits = FALSE), info = nm)
  }
})

test_that("declared S3 / S4 exports (if any) are present", {
  s3 <- c("from_to.default", "from_to.list", "from_to.numeric", "indexify.default", "indexify.list", "indexify.numeric")
  s4 <- c()
  for (nm in s3) expect_true(exists(nm, where = asNamespace("turner"), inherits = FALSE), info = nm)
  for (nm in s4) expect_true(exists(nm, where = asNamespace("turner"), inherits = FALSE), info = nm)
})
