#!/bin/bash

source assert.sh

echo "Operating system:"
uname -s
echo "-----------------"

assert 'echo "Hello, world!"' 'Hello, world!'
assert_end built_in_command

assert 'hello_world.py' 'Hello, world!'
assert_end python_script

if [ `uname` = 'Darwin' ]; then
    MD5CMD="md5 -r"
else
    MD5CMD="md5sum"
fi

assert '$MD5CMD hello_world.txt | cut -f 1 -d " "' 'a7966bf58e23583c9a5a4059383ff850'
assert_end md5sum_and_parsing

echo "Assert tests done"

