#!/bin/bash

PWD=`pwd`

rm -rf "$PWD/out"
certstrap init --common-name "GkvsAuth" --expires "30 years"
certstrap request-cert --domain `hostname`
certstrap sign `hostname` --CA GkvsAuth

echo "Add to ENV:"
echo "export GKVS_KEYS=$PWD/out"


