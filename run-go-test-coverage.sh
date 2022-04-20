#!/usr/bin/env bash

exec go test -coverpkg=./... -coverprofile=./tmp/coverage.data -timeout=5s ./...
exec go tool cover -func=./tmp/coverage.data
