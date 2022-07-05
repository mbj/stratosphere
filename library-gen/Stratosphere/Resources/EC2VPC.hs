{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html

module Stratosphere.Resources.EC2VPC where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2VPC. See 'ec2VPC' for a more convenient
-- constructor.
data EC2VPC =
  EC2VPC
  { _eC2VPCCidrBlock :: Val Text
  , _eC2VPCEnableDnsHostnames :: Maybe (Val Bool)
  , _eC2VPCEnableDnsSupport :: Maybe (Val Bool)
  , _eC2VPCInstanceTenancy :: Maybe (Val Text)
  , _eC2VPCTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPC where
  toResourceProperties EC2VPC{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPC"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CidrBlock",) . toJSON) _eC2VPCCidrBlock
        , fmap (("EnableDnsHostnames",) . toJSON) _eC2VPCEnableDnsHostnames
        , fmap (("EnableDnsSupport",) . toJSON) _eC2VPCEnableDnsSupport
        , fmap (("InstanceTenancy",) . toJSON) _eC2VPCInstanceTenancy
        , fmap (("Tags",) . toJSON) _eC2VPCTags
        ]
    }

-- | Constructor for 'EC2VPC' containing required fields as arguments.
ec2VPC
  :: Val Text -- ^ 'ecvpcCidrBlock'
  -> EC2VPC
ec2VPC cidrBlockarg =
  EC2VPC
  { _eC2VPCCidrBlock = cidrBlockarg
  , _eC2VPCEnableDnsHostnames = Nothing
  , _eC2VPCEnableDnsSupport = Nothing
  , _eC2VPCInstanceTenancy = Nothing
  , _eC2VPCTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-cidrblock
ecvpcCidrBlock :: Lens' EC2VPC (Val Text)
ecvpcCidrBlock = lens _eC2VPCCidrBlock (\s a -> s { _eC2VPCCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-EnableDnsHostnames
ecvpcEnableDnsHostnames :: Lens' EC2VPC (Maybe (Val Bool))
ecvpcEnableDnsHostnames = lens _eC2VPCEnableDnsHostnames (\s a -> s { _eC2VPCEnableDnsHostnames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-EnableDnsSupport
ecvpcEnableDnsSupport :: Lens' EC2VPC (Maybe (Val Bool))
ecvpcEnableDnsSupport = lens _eC2VPCEnableDnsSupport (\s a -> s { _eC2VPCEnableDnsSupport = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-instancetenancy
ecvpcInstanceTenancy :: Lens' EC2VPC (Maybe (Val Text))
ecvpcInstanceTenancy = lens _eC2VPCInstanceTenancy (\s a -> s { _eC2VPCInstanceTenancy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-tags
ecvpcTags :: Lens' EC2VPC (Maybe [Tag])
ecvpcTags = lens _eC2VPCTags (\s a -> s { _eC2VPCTags = a })
