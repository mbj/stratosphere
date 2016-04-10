#!/usr/bin/env bash

rm -rf library-gen
(cd gen/ && stack build && stack exec stratosphere-gen)
stack build "$@"
