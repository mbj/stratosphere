# Stratosphere: AWS CloudFormation in Haskell

[![Circle CI](https://circleci.com/gh/frontrowed/stratosphere.svg?style=svg)](https://circleci.com/gh/frontrowed/stratosphere)

AWS CloudFormation is a system that provisions and updates Amazon Web Services
(AWS) resources based on declarative templates. Common criticisms of
CloudFormation include the use of JSON as the template language and limited
error-checking, often only available in the form of run-time errors and stack
rollbacks. By wrapping templates in Haskell, we are able to easily construct
them and help ensure correctness.

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

## Value Types

CloudFormation resource parameters can be literals (strings, integers, etc),
references to another resource or a Parameter, or the result of some function
call. We encapsulate all of these possibilities in the `Val a` type.

We recommend using the `OverloadedStrings` extension to reduce the number of
`Literal`s you have to use.

Note that CloudFormation represents numbers and bools in JSON as strings, so we
had to some types called `Integer'` and `Bool'` to override the `aeson`
instances. In a future version we plan on using our own JSON encoder/decoder to
get around this.

## Lenses

Almost every CloudFormation resource has a handful of required arguments, and
many more optional arguments. Each resource is represented as a record type
with optional arguments wrapped in `Maybe`. Each resource also comes with a
constructor that accepts required resource parameters as arguments. This allows
the user to succinctly specify the resource parameters they actually use
without adding too much noise to their code.

To specify optional arguments, we recommend using the lens operators `&` and
`?~`. In the example above, the `ec2Instance` function takes the AMI as an
argument, since it is required by the `EC2Instance` resource type. Then, the
optional EC2 key name is specified using the `&` and `?~` lens operators.

This approach is very similar to the approach taken by the `amazonka` library.
See this
[blog post](http://brendanhay.nz/amazonka-comprehensive-haskell-aws-client#smart-constructors)
for an explanation.

## Auto-generation

All of the resources and resource properties are auto-generated from
a
[JSON schema file](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-resource-specification.html) and
are placed in `library-gen/`. The `gen/` directory contains the auto-generator
code and the JSON model file. We include the `library-gen/` directory in git so
the build process is simplified. To build `library-gen` from scratch and then
build all of `stratosphere`, just run the very short `build.sh` script. You can
pass stack args to the script too, so run `./build.sh --fast` to build the
library without optimization. This is useful for development.

In the future, it would be great to not have to include the auto-generated code
in git.

## Contributing

Feel free to raise any issues, or even just make suggestions, by filing a
Github issue.

## Future Work

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
