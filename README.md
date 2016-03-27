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
