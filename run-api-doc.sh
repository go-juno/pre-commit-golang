#!/usr/bin/env bash

set -e
apidoc -i ./api  -o ./static/api-doc  -c ./docs --single
sed -i -e '/\"time\"/d' ./static/api-doc/index.html
rm -f ./static/api-doc/index.html-e
