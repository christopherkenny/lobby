test_that('`lob_retrieve_filing()` works', {
  vcr::local_cassette('ret_fil')
  x <- lob_retrieve_filing(filing_uuid = '3b181214-b253-462c-ad64-783c827e159e')
  expect_s3_class(x, 'tbl_df')
})
