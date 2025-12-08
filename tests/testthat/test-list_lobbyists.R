test_that('`lob_list_lobbyists()` works', {
  vcr::local_cassette('list_lob')
  x <- lob_list_lobbyists()
  expect_s3_class(x, 'tbl_df')
})
