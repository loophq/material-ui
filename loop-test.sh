#!/usr/bin/env bash

# Copies a built version into node_modules of Master so you can test your changes.
# Args:
#  0 - path to master

set -e

MASTER=`"$(dirname $0)/loop-assert-master.sh" ${1}`

npm run build
rm -rf ${MASTER}/node_modules/material-ui
cp -r build ${MASTER}/node_modules/material-ui
