test_that("get the good 0 kelvin", {
  expect_equal(celsius_to_kelvin(0), 273.15)
})



test_that("the controls works", {
  expect_error(celsius_to_kelvin("0"))
})
