#!/usr/bin/env bash
#
# Capture and print stdout, since gofmt doesn't use proper exit codes
#
set -e

exec 5>&1
output="$(go fmt ./...)"
[[ -z "$output" ]]
