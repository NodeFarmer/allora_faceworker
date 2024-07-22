#!/bin/bash

set -ex

if allorad keys --keyring-backend test show faceworker >/dev/null 2>&1 ; then
echo "faceworker account already imported"
else
echo "Importing account faceworker from hexcoded private key"
allorad keys import-hex --home=/data/.allorad --keyring-backend test faceworker %hex_coded_pk%
fi
