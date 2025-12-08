test_that('`lob_retrieve_registrant()` works', {
  vcr::local_cassette('ret_reg')
  x <- lob_retrieve_registrant(id = '11')
  expect_s3_class(x, 'tbl_df')
})
