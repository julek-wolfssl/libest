#!/bin/bash

export OPENSSL_CONF=$(pwd)/openssl.cnf
git checkout -- CA
./runtest
