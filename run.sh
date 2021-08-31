#!/bin/bash

set -e

if [ ! -d node_modules ]; then
    npm install
fi

CATALOG_URL="https://s3.eu-west-1.amazonaws.com/directory.spatineo.com/tmp/tuulituhohaukka-stac/catalog/root2.json"

if [ "$1" != "" ]; then
    CATALOG_URL=$1
fi

npm start -- --open --CATALOG_URL=$CATALOG_URL