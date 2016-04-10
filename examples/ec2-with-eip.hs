{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

-- | This is a translated version of an example from the CloudFormation docs at
-- https://s3.amazonaws.com/cloudformation-templates-us-east-1/EIP_With_Association.template.
-- The difference is the mappings are removed because they don't add anything
-- to the exposition of stratosphere.

module Main where

import Control.Lens
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
      "ami-22111148"
      & eciInstanceType ?~ toRef instanceTypeParam
      & eciKeyName ?~ toRef keyParam
      & eciUserData ?~ Base64 (Join "" ["IPAddress=", toRef sshParam])
      & eciSecurityGroups ?~ [Ref "InstanceSecuritygroup"]
      )
    & deletionPolicy ?~ Retain
  , resource "InstanceSecurityGroup" $
    SecurityGroupProperties $
    securityGroup
    "Enable SSH Access"
    & sgSecurityGroupIngress ?~ [
      securityGroupIngressRule
      "tcp"
      & sgirFromPort ?~ Literal 22
      & sgirToPort ?~ Literal 22
      & sgirCidrIp ?~ Ref "SSHLocation"
      ]
  , resource "IPAddress" (EIPProperties eip)
  , resource "IPAssoc" $
    EIPAssociationProperties $
    eipAssociation
    & eipaInstanceId ?~ Ref "EC2Instance"
    & eipaEIP ?~ Ref "IPAddress"
  ]
  & description ?~ "See https://s3.amazonaws.com/cloudformation-templates-us-east-1/EIP_With_Association.template"
  & formatVersion ?~ "2010-09-09"
  & parameters ?~
  [ instanceTypeParam
  , keyParam
  , sshParam
  ]
  & outputs ?~
  [ output "InstanceId"
    (Ref "EC2Instance")
    & description ?~ "InstanceId of the newly created EC2 instance"
  , output "InstanceIPAddress"
    (Ref "IPAddress")
    & description ?~ "IP address of the newly created EC2 instance"
  ]

instanceTypeParam :: Parameter
instanceTypeParam =
  parameter "InstanceType" "String"
  & description ?~ "WebServer EC2 instance type"
  & default' ?~ "t2.small"
  & allowedValues ?~ [ "t1.micro", "t2.small" ]
  & constraintDescription ?~ "must be a valid EC2 instance type."

keyParam :: Parameter
keyParam =
  parameter "KeyName" "AWS::EC2::KeyPair::KeyName"
  & description ?~ "Name of an existing EC2 KeyPair to enable SSH access to the instances"
  & constraintDescription ?~ "must be the name of an existing EC2 KeyPair."

sshParam :: Parameter
sshParam =
  parameter "SSHLocation" "String"
  & description ?~ "The IP address range that can be used to SSH to the EC2 instances"
  & minLength ?~ 9
  & maxLength ?~ 18
  & default' ?~ "0.0.0.0/0"
  & allowedValues ?~ [ "t1.micro", "t2.small" ]
  & allowedPattern ?~ "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"
  & constraintDescription ?~ "must be a valid IP CIDR range of the form x.x.x.x/x."
