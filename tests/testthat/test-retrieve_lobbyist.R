test_that('`lob_retrieve_lobbyist()` works', {
  vcr::local_cassette('ret_lob')
  x <- lob_retrieve_lobbyist(id = 1)
  expect_s3_class(x, 'tbl_df')
})
