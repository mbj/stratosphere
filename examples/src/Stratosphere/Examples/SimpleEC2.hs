module Stratosphere.Examples.SimpleEC2 (template) where

import Stratosphere

import qualified Stratosphere.EC2.Instance as EC2

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
