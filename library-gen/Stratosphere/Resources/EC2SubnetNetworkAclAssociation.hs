{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html

module Stratosphere.Resources.EC2SubnetNetworkAclAssociation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SubnetNetworkAclAssociation. See
-- | 'ec2SubnetNetworkAclAssociation' for a more convenient constructor.
data EC2SubnetNetworkAclAssociation =
  EC2SubnetNetworkAclAssociation
  { _eC2SubnetNetworkAclAssociationNetworkAclId :: Val Text
  , _eC2SubnetNetworkAclAssociationSubnetId :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EC2SubnetNetworkAclAssociation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON EC2SubnetNetworkAclAssociation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'EC2SubnetNetworkAclAssociation' containing required
-- | fields as arguments.
ec2SubnetNetworkAclAssociation
  :: Val Text -- ^ 'ecsnaaNetworkAclId'
  -> Val Text -- ^ 'ecsnaaSubnetId'
  -> EC2SubnetNetworkAclAssociation
ec2SubnetNetworkAclAssociation networkAclIdarg subnetIdarg =
  EC2SubnetNetworkAclAssociation
  { _eC2SubnetNetworkAclAssociationNetworkAclId = networkAclIdarg
  , _eC2SubnetNetworkAclAssociationSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-networkaclid
ecsnaaNetworkAclId :: Lens' EC2SubnetNetworkAclAssociation (Val Text)
ecsnaaNetworkAclId = lens _eC2SubnetNetworkAclAssociationNetworkAclId (\s a -> s { _eC2SubnetNetworkAclAssociationNetworkAclId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-associationid
ecsnaaSubnetId :: Lens' EC2SubnetNetworkAclAssociation (Val Text)
ecsnaaSubnetId = lens _eC2SubnetNetworkAclAssociationSubnetId (\s a -> s { _eC2SubnetNetworkAclAssociationSubnetId = a })
