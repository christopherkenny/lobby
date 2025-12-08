test_that('`lob_list_filings()` works', {
  vcr::local_cassette('list_fil')
  x <- lob_list_filings(filing_year = 2024)
  expect_s3_class(x, 'tbl_df')
})
