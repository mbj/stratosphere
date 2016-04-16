# Stratosphere: AWS CloudFormation in Haskell

[![Build Status](https://travis-ci.org/jdreaver/stratosphere.svg?branch=master)](https://travis-ci.org/jdreaver/stratosphere)

AWS CloudFormation is a system that provisions and updates AWS resources based
on declarative templates. Common criticisms of CloudFormation include the use
of JSON as the template language and limited error-checking, often only
available in the form of run-time errors and stack rollbacks. By wrapping
templates in Haskell, we are able to easily construct them and help ensure
correctness.

The goals of stratosphere are to:
* Build a Haskell EDSL to specify CloudFormation templates. Since it is
  embedded in Haskell, it is type-checked and generally much easier to work
  with than raw JSON.
* Have a simple checking/linting system outside of the types that can find
  common errors in templates.
* Be able to also read valid CloudFormation JSON templates so they can be
  type-checked. This also gives us free integration tests by using the huge
  amount of example templates available in the AWS docs.

## Example

Here is an example of a `Template` that creates an EC2 instance, along with the
JSON output:

```haskell
{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.ByteString.Lazy.Char8 as B
import Stratosphere

main :: IO ()
main = B.putStrLn $ encodeTemplate instanceTemplate

instanceTemplate :: Template
instanceTemplate =
  template
  [ resource "EC2Instance" (
    EC2InstanceProperties $
    ec2Instance
    "ami-22111148"
    & eciKeyName ?~ (Ref "KeyName")
    )
    & deletionPolicy ?~ Retain
  ]
  & description ?~ "Sample template"
  & parameters ?~
  [ parameter "KeyName" "AWS::EC2::KeyPair::KeyName"
    & description ?~ "Name of an existing EC2 KeyPair to enable SSH access to the instance"
    & constraintDescription ?~ "Must be the name of an existing EC2 KeyPair."
  ]
```

```json
{
  "Description": "Sample template",
  "Parameters": {
    "KeyName": {
      "Description": "Name of an existing EC2 KeyPair to enable SSH access to the instance",
      "ConstraintDescription": "Must be the name of an existing EC2 KeyPair.",
      "Type": "AWS::EC2::KeyPair::KeyName"
    }
  },
  "Resources": {
    "EC2Instance": {
      "DeletionPolicy": "Retain",
      "Type": "AWS::EC2::Instance",
      "Properties": {
        "KeyName": {
          "Ref": "KeyName"
        },
        "ImageId": "ami-22111148"
      }
    }
  }
}
```

Please see the [examples](examples/) directory for more in-depth examples.

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

## Contributing

Feel free to raise any issues, or even just make suggestions, by filing a
Github issue.

## Future Work

The library is usable in its current state and it is already much more
enjoyable to work with than writing JSON templates by hand, but there are of
course a few possible future improvements:

* Not all resources implemented. Adding resources is very easy though. Just
  request them and I will implement them :)
* Implement basic checker for things like undefined Refs and duplicate field
  names. This stuff would be too unwieldy to do in types, and performing a
  checking pass over a template should be pretty straightforward.
* Use a custom JSON encoder so the templates look a little more idiomatic. We
  also create a lot of empty whitespace and newlines using aeson-pretty. There
  are limits on the size of CloudFormation templates, and we want readable
  output without hitting the limits. Also, we have some newtypes that just
  exist to override aeson instances, and we could get rid of those.
* Use a custom JSON decoder with useful error messages. Although we don't use
  them, we have implemented FromJSON instances for everything. Theoretically,
  stratosphere could be used as a checker/linter for existing JSON
  CloudFormation templates.
