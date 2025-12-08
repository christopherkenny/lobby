test_that('`lob_constants_filing_types()` works', {
  vcr::local_cassette('const_fil')
  x <- lob_constants_filing_types()
  expect_s3_class(x, 'tbl_df')
})

test_that('`lob_constants_lobbying_activity_issues()` works', {
  vcr::local_cassette('const_lob')
  x <- lob_constants_lobbying_activity_issues()
  expect_s3_class(x, 'tbl_df')
})

test_that('`lob_constants_government_entities()` works', {
  vcr::local_cassette('const_gov')
  x <- lob_constants_government_entities()
  expect_s3_class(x, 'tbl_df')
})

test_that('`lob_constants_countries()` works', {
  vcr::local_cassette('const_cou')
  x <- lob_constants_countries()
  expect_s3_class(x, 'tbl_df')
})

test_that('`lob_constants_states()` works', {
  vcr::local_cassette('const_sta')
  x <- lob_constants_states()
  expect_s3_class(x, 'tbl_df')
})

test_that('`lob_constants_prefixes()` works', {
  vcr::local_cassette('const_pre')
  x <- lob_constants_prefixes()
  expect_s3_class(x, 'tbl_df')
})

test_that('`lob_constants_suffixes()` works', {
  vcr::local_cassette('const_suf')
  x <- lob_constants_suffixes()
  expect_s3_class(x, 'tbl_df')
})

test_that('`lob_constants_contribution_item_types()` works', {
  vcr::local_cassette('const_con')
  x <- lob_constants_contribution_item_types()
  expect_s3_class(x, 'tbl_df')
})
