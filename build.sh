#!/usr/bin/env bash

set -ex;

(cd gen/ && stack build . && stack exec stratosphere-gen)
stack build stratosphere "$@"
