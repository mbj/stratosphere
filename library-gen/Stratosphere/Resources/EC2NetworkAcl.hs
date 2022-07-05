{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html

module Stratosphere.Resources.EC2NetworkAcl where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2NetworkAcl. See 'ec2NetworkAcl' for a
-- more convenient constructor.
data EC2NetworkAcl =
  EC2NetworkAcl
  { _eC2NetworkAclTags :: Maybe [Tag]
  , _eC2NetworkAclVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2NetworkAcl where
  toResourceProperties EC2NetworkAcl{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::NetworkAcl"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Tags",) . toJSON) _eC2NetworkAclTags
        , (Just . ("VpcId",) . toJSON) _eC2NetworkAclVpcId
        ]
    }

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
