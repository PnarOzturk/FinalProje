library(testthat)

# Test 1: Country s??tununun fakt??r tipine ??evrilmi?? olmal??
test_that("Country s??tunu fakt??r tipine ??evrilmeli", {
  expect_is(selected_data$country_name, "factor")
  expect_is(selected_data_2$`Country/Territory`, "factor")
})

# Test 2: Virg??lle ayr??lm???? say??sal de??erlerin numeric tipine ??evrilmi?? olmal??
test_that("Say??sal de??erler numeric tipine ??evrilmeli", {
  expect_is(selected_data$pollution_2023, "numeric")
})

# Test 3: Eksik veri temizleme i??lemleri do??ru yap??lm???? olmal??
test_that("Eksik veri temizleme do??ru yap??lm???? olmal??", {
  # ??rne??in, -999 de??erleri NA'ya ??evrilmi?? ve NA de??erleri temizlenmi?? olmal??
  expect_true(all(is.na(selected_data_2[selected_data_2 == -999])))
  expect_true(all(!is.na(selected_data_2)))
})
