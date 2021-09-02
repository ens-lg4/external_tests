#!/bin/bash

source assert.sh

assert 'echo Hello' 'Hello'
assert_end built_in_command

assert 'hello_world.py' 'Hello, world!'
assert_end python_script

echo "Assert tests done"

