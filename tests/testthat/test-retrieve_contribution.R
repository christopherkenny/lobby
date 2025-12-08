test_that('`lob_retrieve_contribution()` works', {
  vcr::local_cassette('ret_con')
  x <- lob_retrieve_contribution(filing_uuid = '86260004-84e7-46e3-9cfa-76edae508768')
  expect_s3_class(x, 'tbl_df')
})
