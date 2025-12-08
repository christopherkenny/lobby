test_that('`lob_list_contributions()` works', {
  vcr::local_cassette('list_con')
  x <- lob_list_contributions()
  expect_s3_class(x, 'tbl_df')
})
