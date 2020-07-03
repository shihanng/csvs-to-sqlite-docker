load "../node_modules/bats-assert/load"
load "../node_modules/bats-support/load"

teardown() {
  rm -f ${BATS_TEST_DIRNAME}/test.db
}

@test "convert csv into sqlite db" {
  run docker run --rm -v ${BATS_TEST_DIRNAME}:/app "${TARGET_IMAGE}" test.csv test.db
  assert_success

  run sqlite3 ${BATS_TEST_DIRNAME}/test.db 'select * from test LIMIT 1;'
  assert_output 'JAN|340|360|417'
}
