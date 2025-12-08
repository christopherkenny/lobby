test_that('`lob_list_clients()` works', {
  vcr::local_cassette('list_cli')
  x <- lob_list_clients(client_country = 'US')
  expect_s3_class(x, 'tbl_df')
})
