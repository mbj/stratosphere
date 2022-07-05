{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html

module Stratosphere.Resources.EC2VPNGateway where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2VPNGateway. See 'ec2VPNGateway' for a
-- more convenient constructor.
data EC2VPNGateway =
  EC2VPNGateway
  { _eC2VPNGatewayAmazonSideAsn :: Maybe (Val Integer)
  , _eC2VPNGatewayTags :: Maybe [Tag]
  , _eC2VPNGatewayType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPNGateway where
  toResourceProperties EC2VPNGateway{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPNGateway"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AmazonSideAsn",) . toJSON) _eC2VPNGatewayAmazonSideAsn
        , fmap (("Tags",) . toJSON) _eC2VPNGatewayTags
        , (Just . ("Type",) . toJSON) _eC2VPNGatewayType
        ]
    }

-- | Constructor for 'EC2VPNGateway' containing required fields as arguments.
ec2VPNGateway
  :: Val Text -- ^ 'ecvpngType'
  -> EC2VPNGateway
ec2VPNGateway typearg =
  EC2VPNGateway
  { _eC2VPNGatewayAmazonSideAsn = Nothing
  , _eC2VPNGatewayTags = Nothing
  , _eC2VPNGatewayType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-amazonsideasn
ecvpngAmazonSideAsn :: Lens' EC2VPNGateway (Maybe (Val Integer))
ecvpngAmazonSideAsn = lens _eC2VPNGatewayAmazonSideAsn (\s a -> s { _eC2VPNGatewayAmazonSideAsn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-tags
ecvpngTags :: Lens' EC2VPNGateway (Maybe [Tag])
ecvpngTags = lens _eC2VPNGatewayTags (\s a -> s { _eC2VPNGatewayTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-type
ecvpngType :: Lens' EC2VPNGateway (Val Text)
ecvpngType = lens _eC2VPNGatewayType (\s a -> s { _eC2VPNGatewayType = a })
