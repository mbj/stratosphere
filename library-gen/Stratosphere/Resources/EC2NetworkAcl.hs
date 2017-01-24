{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html

module Stratosphere.Resources.EC2NetworkAcl where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2NetworkAcl. See 'ec2NetworkAcl' for a
-- | more convenient constructor.
data EC2NetworkAcl =
  EC2NetworkAcl
  { _eC2NetworkAclTags :: Maybe [Tag]
  , _eC2NetworkAclVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2NetworkAcl where
  toJSON EC2NetworkAcl{..} =
    object
    [ "Tags" .= _eC2NetworkAclTags
    , "VpcId" .= _eC2NetworkAclVpcId
    ]

instance FromJSON EC2NetworkAcl where
  parseJSON (Object obj) =
    EC2NetworkAcl <$>
      obj .: "Tags" <*>
      obj .: "VpcId"
  parseJSON _ = mempty

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
