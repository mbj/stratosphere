{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

-- | This is a translated version of an example from the CloudFormation docs at
-- https://s3.amazonaws.com/cloudformation-templates-us-east-1/EIP_With_Association.template.
-- The difference is the mappings are removed because they don't add anything
-- to the exposition of stratosphere.

module Main where

import Control.Lens
import qualified Data.ByteString.Lazy.Char8 as B
import qualified Data.Text as T

import Stratosphere

myTemplate :: Template
myTemplate =
  template
    [ ("EC2Instance",
       EC2InstanceResource $
       ec2Instance
       "ami-22111148"
       & eciInstanceType ?~ Ref "InstanceType"
       & eciKeyName ?~ Ref "KeyName"
       & eciUserData ?~ Base64 (Join "" ["IPAddress=", Ref "IPAddress"])
       & eciSecurityGroups ?~ [Ref "InstanceSecuritygroup"]
      )
    , ("InstanceSecurityGroup",
       SecurityGroupResource $
       securityGroup
       "Enable SSH Access"
       & sgSecurityGroupIngress ?~ [
          Literal $
          securityGroupIngressRule
          "tcp"
          & sgirFromPort ?~ Literal 22
          & sgirToPort ?~ Literal 22
          & sgirCidrIp ?~ Ref "SSHLocation"
          ]
      )
    , ("IPAddress", EIPResource eip)
    , ("IPAssoc",
       EIPAssociationResource $
       eipAssociation
       & eipaInstanceId ?~ Ref "EC2Instance"
       & eipaEIP ?~ Ref "IPAddress"
      )
    ]
    & description ?~ "See https://s3.amazonaws.com/cloudformation-templates-us-east-1/EIP_With_Association.template"
    & formatVersion ?~ "2010-09-09"
    & parameters ?~
      [ ("InstanceType",
         parameter
         "String"
         & description ?~ "WebServer EC2 instance type"
         & default' ?~ "t2.small"
         & allowedValues ?~ [ "t1.micro", "t2.small" ]
         & constraintDescription ?~ "must be a valid EC2 instance type."
        )
      , ("KeyName",
         parameter
         "AWS::EC2::KeyPair::KeyName"
         & description ?~ "Name of an existing EC2 KeyPair to enable SSH access to the instances"
         & constraintDescription ?~ "must be the name of an existing EC2 KeyPair."
        )
      , ("InstanceType",
         parameter
         "String"
         & description ?~ "The IP address range that can be used to SSH to the EC2 instances"
         & minLength ?~ 9
         & maxLength ?~ 18
         & default' ?~ "0.0.0.0/0"
         & allowedValues ?~ [ "t1.micro", "t2.small" ]
         & allowedPattern ?~ "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"
         & constraintDescription ?~ "must be a valid IP CIDR range of the form x.x.x.x/x."
        )
      ]
      & outputs ?~
      [ ("InstanceId",
         output
         (OutputValue (Ref "EC2Instance" :: Val T.Text))
         & description ?~ "InstanceId of the newly created EC2 instance"
        )
      , ("InstanceIPAddress",
         output
         (OutputValue (Ref "IPAddress" :: Val T.Text))
         & description ?~ "IP address of the newly created EC2 instance"
        )
      ]

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate
