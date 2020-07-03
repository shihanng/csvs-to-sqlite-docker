load "../node_modules/bats-assert/load"
load "../node_modules/bats-support/load"

setup() {
  export TESTDATA_DIR="${BATS_TEST_DIRNAME}/testdata"
}

teardown() {
  rm -f ${TESTDATA_DIR}/test.db
}

@test "convert csv into sqlite db" {
  run docker run --rm -v ${TESTDATA_DIR}:/app "${TARGET_IMAGE}" test.csv test.db
  assert_success

  run sqlite3 ${TESTDATA_DIR}/test.db 'select * from test LIMIT 1;'
  assert_output 'JAN|340|360|417'
}
