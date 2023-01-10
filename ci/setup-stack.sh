#!/bin/sh

# See: https://github.com/haskell/actions/issues/118

set -e

curl --location --output stack https://github.com/commercialhaskell/stack/releases/download/v2.9.1/stack-2.9.1-linux-x86_64-bin

echo 'dc4c60b2f018aadb2ebd40d81e5d10aada881d804a69911eea2da67906fc058c  stack' | sha256sum -c

chmod +x ./stack
