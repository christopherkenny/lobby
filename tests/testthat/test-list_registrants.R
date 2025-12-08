test_that('`lob_list_registrants()` works', {
  vcr::local_cassette('list_reg')
  x <- lob_list_registrants(country = 'US')
  expect_s3_class(x, 'tbl_df')
})
