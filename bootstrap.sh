#!/bin/bash

rm -rf ./out
certstrap init --common-name "GkvsAuth"
certstrap request-cert --domain `hostname`
certstrap sign `hostname` --CA GkvsAuth