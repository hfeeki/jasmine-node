#!/usr/bin/env bash

entry="node lib/jasmine-node/cli.js "

echo "Running all tests located in the spec directory"
command=$entry"spec"
echo $command
time $command #/nested/uber-nested
echo -e "\033[1;35m--- Should have 52 tests and 91 assertions and 2 Failure. ---\033[0m"
echo ""

echo "Running all tests located in the spec directory with coffee option"
command=$entry"--coffee spec"
echo $command
time $command #/nested/uber-nested
echo -e "\033[1;35m--- Should have 56 tests and 95 assertions and 4 Failures. ---\033[0m"
echo ""

echo "Running all tests located in the spec directory with requirejs option"
#command=$entry"--nohelpers --runWithRequireJs spec-requirejs"
command=$entry"--runWithRequireJs spec"
echo $command
time $command
echo -e "\033[1;35m--- Should have 52 tests and 91 assertions and 2 Failure. ---\033[0m"
echo ""

echo "Running all tests located in the spec-requirejs directory with requirejs, requirejs setup, and coffee option"
command=$entry"--runWithRequireJs --requireJsSetup spec-requirejs-coffee/requirejs-setup.js --coffee spec-requirejs-coffee"
echo $command
time $command
echo -e "\033[1;35m--- Should have 4 tests and 7 assertions and 0 Failure. ---\033[0m"
