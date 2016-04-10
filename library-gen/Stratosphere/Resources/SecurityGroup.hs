{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates an Amazon EC2 security group. To create a VPC security group, use
-- the VpcId property. This type supports updates. For more information about
-- updating stacks, see AWS CloudFormation Stacks Updates.

module Stratosphere.Resources.SecurityGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.SecurityGroupEgressRule
import Stratosphere.ResourceProperties.SecurityGroupIngressRule
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for SecurityGroup. See 'securityGroup' for a
-- more convenient constructor.
data SecurityGroup =
  SecurityGroup
  { _securityGroupGroupDescription :: Val Text
  , _securityGroupSecurityGroupEgress :: Maybe [SecurityGroupEgressRule]
  , _securityGroupSecurityGroupIngress :: Maybe [SecurityGroupIngressRule]
  , _securityGroupTags :: Maybe [ResourceTag]
  , _securityGroupVpcId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON SecurityGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON SecurityGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'SecurityGroup' containing required fields as arguments.
securityGroup
  :: Val Text -- ^ GroupDescription
  -> SecurityGroup
securityGroup groupDescriptionarg =
  SecurityGroup
  { _securityGroupGroupDescription = groupDescriptionarg
  , _securityGroupSecurityGroupEgress = Nothing
  , _securityGroupSecurityGroupIngress = Nothing
  , _securityGroupTags = Nothing
  , _securityGroupVpcId = Nothing
  }

-- | Description of the security group.
sgGroupDescription :: Lens' SecurityGroup (Val Text)
sgGroupDescription = lens _securityGroupGroupDescription (\s a -> s { _securityGroupGroupDescription = a })

-- | A list of Amazon EC2 security group egress rules.
sgSecurityGroupEgress :: Lens' SecurityGroup (Maybe [SecurityGroupEgressRule])
sgSecurityGroupEgress = lens _securityGroupSecurityGroupEgress (\s a -> s { _securityGroupSecurityGroupEgress = a })

-- | A list of Amazon EC2 security group ingress rules.
sgSecurityGroupIngress :: Lens' SecurityGroup (Maybe [SecurityGroupIngressRule])
sgSecurityGroupIngress = lens _securityGroupSecurityGroupIngress (\s a -> s { _securityGroupSecurityGroupIngress = a })

-- | The tags that you want to attach to the resource.
sgTags :: Lens' SecurityGroup (Maybe [ResourceTag])
sgTags = lens _securityGroupTags (\s a -> s { _securityGroupTags = a })

-- | The physical ID of the VPC. Can be obtained by using a reference to an
-- AWS::EC2::VPC, such as: { "Ref" : "myVPC" }. For more information about
-- using the Ref function, see Ref.
sgVpcId :: Lens' SecurityGroup (Maybe (Val Text))
sgVpcId = lens _securityGroupVpcId (\s a -> s { _securityGroupVpcId = a })