#!/bin/bash

source assert.sh

assert 'echo Hello' 'Hello'
assert_end simple_tests

echo "Assert tests done"

