{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html

module Stratosphere.Resources.EC2NetworkAcl where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2NetworkAcl. See 'ec2NetworkAcl' for a
-- | more convenient constructor.
data EC2NetworkAcl =
  EC2NetworkAcl
  { _eC2NetworkAclTags :: Maybe [Tag]
  , _eC2NetworkAclVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2NetworkAcl where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON EC2NetworkAcl where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'EC2NetworkAcl' containing required fields as arguments.
ec2NetworkAcl
  :: Val Text -- ^ 'ecnaVpcId'
  -> EC2NetworkAcl
ec2NetworkAcl vpcIdarg =
  EC2NetworkAcl
  { _eC2NetworkAclTags = Nothing
  , _eC2NetworkAclVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-tags
ecnaTags :: Lens' EC2NetworkAcl (Maybe [Tag])
ecnaTags = lens _eC2NetworkAclTags (\s a -> s { _eC2NetworkAclTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-vpcid
ecnaVpcId :: Lens' EC2NetworkAcl (Val Text)
ecnaVpcId = lens _eC2NetworkAclVpcId (\s a -> s { _eC2NetworkAclVpcId = a })
