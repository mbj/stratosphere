{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html

module Stratosphere.Resources.EC2VPCCidrBlock where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPCCidrBlock. See 'ec2VPCCidrBlock' for
-- a more convenient constructor.
data EC2VPCCidrBlock =
  EC2VPCCidrBlock
  { _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock :: Maybe (Val Bool)
  , _eC2VPCCidrBlockCidrBlock :: Maybe (Val Text)
  , _eC2VPCCidrBlockVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPCCidrBlock where
  toResourceProperties EC2VPCCidrBlock{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPCCidrBlock"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AmazonProvidedIpv6CidrBlock",) . toJSON) _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock
        , fmap (("CidrBlock",) . toJSON) _eC2VPCCidrBlockCidrBlock
        , (Just . ("VpcId",) . toJSON) _eC2VPCCidrBlockVpcId
        ]
    }

-- | Constructor for 'EC2VPCCidrBlock' containing required fields as
-- arguments.
ec2VPCCidrBlock
  :: Val Text -- ^ 'ecvpccbVpcId'
  -> EC2VPCCidrBlock
ec2VPCCidrBlock vpcIdarg =
  EC2VPCCidrBlock
  { _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock = Nothing
  , _eC2VPCCidrBlockCidrBlock = Nothing
  , _eC2VPCCidrBlockVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-amazonprovidedipv6cidrblock
ecvpccbAmazonProvidedIpv6CidrBlock :: Lens' EC2VPCCidrBlock (Maybe (Val Bool))
ecvpccbAmazonProvidedIpv6CidrBlock = lens _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock (\s a -> s { _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-cidrblock
ecvpccbCidrBlock :: Lens' EC2VPCCidrBlock (Maybe (Val Text))
ecvpccbCidrBlock = lens _eC2VPCCidrBlockCidrBlock (\s a -> s { _eC2VPCCidrBlockCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-vpcid
ecvpccbVpcId :: Lens' EC2VPCCidrBlock (Val Text)
ecvpccbVpcId = lens _eC2VPCCidrBlockVpcId (\s a -> s { _eC2VPCCidrBlockVpcId = a })
