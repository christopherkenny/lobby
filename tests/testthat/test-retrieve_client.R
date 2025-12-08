test_that('`lob_retrieve_client()` works', {
  vcr::local_cassette('ret_cli')
  x <- lob_retrieve_client(id = '44400')
  expect_s3_class(x, 'tbl_df')
})
