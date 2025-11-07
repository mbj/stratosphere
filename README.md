# Stratosphere: AWS CloudFormation in Haskell

[![CI](https://github.com/mbj/stratosphere/actions/workflows/ci.yaml/badge.svg)](https://github.com/mbj/stratosphere/actions/workflows/ci.yaml)
[![sponsors](https://img.shields.io/github/sponsors/mbj)](https://github.com/sponsors/mbj)
[![hackage](https://img.shields.io/hackage/v/stratosphere)](https://hackage.haskell.org/package/stratosphere)

AWS CloudFormation is a system that provisions and updates Amazon Web Services
(AWS) resources based on declarative templates. Common criticisms of
CloudFormation include the use of JSON as the template language and limited
error-checking, often only available in the form of run-time errors and stack
rollbacks. By wrapping templates in Haskell, it is possible to easily construct
them and help ensure correctness.

The goals of stratosphere are to:

* Build a Haskell EDSL to specify CloudFormation templates. Since it is
  embedded in Haskell, it is type-checked and generally much easier to work
  with than raw JSON/YAML.
* Have a simple checking/linting system outside of the types that can find
  common errors in templates.

## Funding / Sponsoring

This library is maintained by [mbj](https://github.com/sponsors/mbj) and any pledge is greatly apprechiated.

## Example

Here is an example of a `Template` that creates an EC2 instance, along with the
JSON output:

```haskell
module Main where

import Stratosphere

import qualified Data.ByteString.Lazy.Char8 as B

main :: IO ()
main = B.putStrLn $ encodeTemplate template

template :: Template
template
  = mkTemplate [ec2Instance]
  & set @"Description" "EC2 Example template"
  & set @"Parameters"  [keyName]

keyName :: Parameter
keyName
  = mkParameter "KeyName" "AWS::EC2::KeyPair::KeyName"
  & set @"Description"           "Name of an existing EC2 KeyPair to enable SSH access to the instance"
  & set @"ConstraintDescription" "Must be the name of an existing EC2 KeyPair."

ec2Instance :: Resource
ec2Instance
  = set @"DeletionPolicy" Retain
  . resource "EC2Instance"
  $ EC2.mkInstance
  & set @"ImageId" "ami-22111148"
  & set @"KeyName" (toRef keyName)
```

```json
{
  "Description": "EC2 Example template",
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
      "Properties": {
        "ImageId": "ami-22111148",
        "KeyName": {
          "Ref": "KeyName"
        }
      },
      "Type": "AWS::EC2::Instance"
    }
  }
}
```

Please see the [examples](examples/Stratosphere/Examples) directory for more in-depth
examples (including this one). The `stratosphere-example` package produces a same named
binary with a minimal CLI for exploration.

Its encouraged to use it as a playground while exploring this library.

```
STACK_YAML=stack-9.2.yaml stack build --copy-bins --test stratosphere-examples
```

## Value Types

CloudFormation resource parameters can be literals (strings, integers, etc),
references to another resource or a Parameter, or the result of some function
call. We encapsulate all of these possibilities in the `Value a` type.

It is recommend using the `OverloadedStrings` and `OverloadedLists` extensions to reduce
the number of `Literal`s that have to be written.

## Optional and required properties

Almost every CloudFormation resource has a handful of required arguments, and
many more optional arguments. Each resource is represented as a record type
with optional arguments wrapped in `Maybe`. Each resource also comes with a
builder that accepts required resource properties as arguments. This allows
the user to succinctly specify the resource properties they actually use
without adding too much noise to their code.

To specify optional arguments, stratosphere exposes the `set` function that takes
the type level symbol of the property to set and the value as argument. Its recommended to use the
`&` function to chain these updates. See examples.

## Auto-generation

All of the resources and resource properties are auto-generated from
a
[JSON schema file](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-resource-specification.html) and
are placed in `services/`. The `generator/` directory contains the auto-generator package `stratosphere-generator`
code and the JSON model file. The `services/` directory is included in git so
the build process is simplified. To build `stratosphere-generator` from scratch and
then build all of `stratosphere`, build the `stratosphere-generator` package via `stack` and execute the `stratosphere-generator` binary from the project root.

## Contributing

Feel free to raise any issues, or even just make suggestions, by filing a Github issue.

## Future Work

* Implement basic checker for things like undefined Refs and duplicate field
  names. This stuff would be too unwieldy to do in types, and performing a
  checking pass over a template should be pretty straightforward.

## Development Build

```
# Warning this takes a while ;)

# Compile all packages
STACK_YAML=stack-9.12.yaml stack test

# Run the generator
STACK_YAML=stack-9.12.yaml stack build stratosphere-manager
STACK_YAML=stack-9.12.yaml stack exec stratosphere-manager -- generate
```
