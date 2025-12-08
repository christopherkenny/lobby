test_that('`lob_request_next()` works', {
  vcr::local_cassette('req_next')
  x <- lob_list_filings(filing_year = 2024) |>
    lob_request_next()
  expect_s3_class(x, 'tbl_df')
})
