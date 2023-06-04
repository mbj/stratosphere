#!/bin/sh

# See: https://github.com/haskell/actions/issues/118

set -e

curl            \
 --location     \
 --output stack \
 https://github.com/commercialhaskell/stack/releases/download/v2.11.1/stack-2.11.1-linux-x86_64-bin

echo '5c7a9f86c126d4af15d03ddc03f95f3ceafedd3b9d3dcc7818f2ea60ed6a0ef9  stack' | sha256sum -c

chmod +x ./stack

