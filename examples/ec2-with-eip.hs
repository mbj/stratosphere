{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}

-- | This is a translated version of an example from the CloudFormation docs at
-- https://s3.amazonaws.com/cloudformation-templates-us-east-1/EIP_With_Association.template.
-- The difference is the mappings are removed because they don't add anything
-- to the exposition of stratosphere.

module Main where

import Control.Lens
import Data.Aeson
import Data.Aeson.QQ (aesonQQ)
import qualified Data.ByteString.Lazy.Char8 as B

import Stratosphere

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate

myTemplate :: Template
myTemplate =
  template
  [ resource "EC2Instance" (
      EC2InstanceProperties $
      ec2Instance
      & eciImageId ?~ "ami-22111148"
      & eciInstanceType ?~ toRef instanceTypeParam
      & eciKeyName ?~ toRef keyParam
      & eciUserData ?~ Base64 (Join "" ["IPAddress=", toRef sshParam])
      & eciSecurityGroups ?~ [Ref "InstanceSecuritygroup"]
      )
    & resourceDeletionPolicy ?~ Retain
    & resourceMetadata ?~ ec2Metadata
  , resource "InstanceSecurityGroup" $
    EC2SecurityGroupProperties $
    ec2SecurityGroup
    "Enable SSH Access"
    & ecsgSecurityGroupIngress ?~ [
      ec2SecurityGroupIngressProperty
      "tcp"
      & ecsgipFromPort ?~ Literal 22
      & ecsgipToPort ?~ Literal 22
      & ecsgipCidrIp ?~ Ref "SSHLocation"
      ]
  , resource "IPAddress" (EC2EIPProperties ec2EIP)
  , resource "IPAssoc" $
    EC2EIPAssociationProperties $
    ec2EIPAssociation
    & eceipaInstanceId ?~ Ref "EC2Instance"
    & eceipaEIP ?~ Ref "IPAddress"
  ]
  & templateDescription ?~ "See https://s3.amazonaws.com/cloudformation-templates-us-east-1/EIP_With_Association.template"
  & templateFormatVersion ?~ "2010-09-09"
  & templateParameters ?~
  [ instanceTypeParam
  , keyParam
  , sshParam
  ]
  & templateOutputs ?~
  [ output "InstanceId"
    (Ref "EC2Instance")
    & outputDescription ?~ "InstanceId of the newly created EC2 instance"
  , output "InstanceIPAddress"
    (Ref "IPAddress")
    & outputDescription ?~ "IP address of the newly created EC2 instance"
  ]

ec2Metadata :: Object
(Object ec2Metadata) = [aesonQQ|
{
  "AWS::CloudFormation::Init": {
    "configSets": {
      "test1": ["1"],
      "test2": [{"ConfigSet": "test1"}, "2"],
      "default": [{"ConfigSet": "test2"}]
    },
    "1": {
      "commands": {
        "test": {
          "command": "echo \"$MAGIC\" > test.txt",
          "env": {"MAGIC": "I come from the environment!"},
          "cwd": "~"
        }
      }
    },
    "2": {
      "commands": {
        "test": {
          "command": "echo \"$MAGIC\" >> test.txt",
          "env": {"MAGIC": "I am test 2!"},
          "cwd": "~"
        }
      }
    }
  }
}
|]

instanceTypeParam :: Parameter
instanceTypeParam =
  parameter "InstanceType" "String"
  & parameterDescription ?~ "WebServer EC2 instance type"
  & parameterDefault' ?~ "t2.small"
  & parameterAllowedValues ?~ [ "t1.micro", "t2.small" ]
  & parameterConstraintDescription ?~ "must be a valid EC2 instance type."

keyParam :: Parameter
keyParam =
  parameter "KeyName" "AWS::EC2::KeyPair::KeyName"
  & parameterDescription ?~ "Name of an existing EC2 KeyPair to enable SSH access to the instances"
  & parameterConstraintDescription ?~ "must be the name of an existing EC2 KeyPair."

sshParam :: Parameter
sshParam =
  parameter "SSHLocation" "String"
  & parameterDescription ?~ "The IP address range that can be used to SSH to the EC2 instances"
  & parameterMinLength ?~ 9
  & parameterMaxLength ?~ 18
  & parameterDefault' ?~ "0.0.0.0/0"
  & parameterAllowedValues ?~ [ "t1.micro", "t2.small" ]
  & parameterAllowedPattern ?~ "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"
  & parameterConstraintDescription ?~ "must be a valid IP CIDR range of the form x.x.x.x/x."
