load 'node_modules/bats-assert/load'

teardown() {
  rm -f test.db
}

@test "convert csv into sqlite db" {
  run docker run --rm -v $(pwd):/app "${TARGET_IMAGE}" test.csv test.db
  assert_success
}
