# Stratosphere: AWS CloudFormation in Haskell

[![Build Status](https://travis-ci.org/jdreaver/stratosphere.svg?branch=master)](https://travis-ci.org/jdreaver/stratosphere)

Stratosphere is a Haskell library that facilitates creating and working with
AWS CloudFormation templates. The goals of stratosphere are to:
* Build a Haskell EDSL to specify CloudFormation templates. Since it is
  embedded in Haskell, it is type-checked and generally much easier to work
  with than raw JSON.
* Have a simple checking/linting system outside of the types that can find
  common errors in templates.
* Be able to also read valid CloudFormation JSON templates so they can be
  type-checked. This also gives us free integration tests by using the huge
  amount of example templates available in the AWS docs.

## Auto-generation

All of the resources and resource properties are auto-generated from JSON files
and are placed in `library-gen/`. The `gen/` directory contains the
auto-generator code and the JSON model files. We include the `library-gen/`
directory in git so the build process is simplified. To build `library-gen`
from scratch and then build all of `stratosphere`, just run the very short
`build.sh` script. You can pass stack args to the script too, so run
`./build.sh --fast` to build the library without optimization. This is useful
for development.

In the future, it would be great to not have to include the auto-generated code
in git.

Also, there is a file called `scraper.py` that scrapes a given CloudFormation
resource documentation page to produce the JSON model. It isn't perfect, but it
helps a lot.
