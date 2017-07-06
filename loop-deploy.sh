#!/usr/bin/env bash

# Deploys the current version of this repository to the artifacts bucket for loop.
# Args:
#  0 - Path to Master repo.

set -e

MASTER=`"$(dirname $0)/loop-assert-master.sh" ${1}`

npm run build
cd build
${MASTER}/tools/javascript/upload-package-artifact.sh .
