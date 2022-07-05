{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html

module Stratosphere.Resources.EC2CustomerGateway where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2CustomerGateway. See
-- 'ec2CustomerGateway' for a more convenient constructor.
data EC2CustomerGateway =
  EC2CustomerGateway
  { _eC2CustomerGatewayBgpAsn :: Val Integer
  , _eC2CustomerGatewayIpAddress :: Val Text
  , _eC2CustomerGatewayTags :: Maybe [Tag]
  , _eC2CustomerGatewayType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2CustomerGateway where
  toResourceProperties EC2CustomerGateway{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::CustomerGateway"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("BgpAsn",) . toJSON) _eC2CustomerGatewayBgpAsn
        , (Just . ("IpAddress",) . toJSON) _eC2CustomerGatewayIpAddress
        , fmap (("Tags",) . toJSON) _eC2CustomerGatewayTags
        , (Just . ("Type",) . toJSON) _eC2CustomerGatewayType
        ]
    }

-- | Constructor for 'EC2CustomerGateway' containing required fields as
-- arguments.
ec2CustomerGateway
  :: Val Integer -- ^ 'eccugBgpAsn'
  -> Val Text -- ^ 'eccugIpAddress'
  -> Val Text -- ^ 'eccugType'
  -> EC2CustomerGateway
ec2CustomerGateway bgpAsnarg ipAddressarg typearg =
  EC2CustomerGateway
  { _eC2CustomerGatewayBgpAsn = bgpAsnarg
  , _eC2CustomerGatewayIpAddress = ipAddressarg
  , _eC2CustomerGatewayTags = Nothing
  , _eC2CustomerGatewayType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-bgpasn
eccugBgpAsn :: Lens' EC2CustomerGateway (Val Integer)
eccugBgpAsn = lens _eC2CustomerGatewayBgpAsn (\s a -> s { _eC2CustomerGatewayBgpAsn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-ipaddress
eccugIpAddress :: Lens' EC2CustomerGateway (Val Text)
eccugIpAddress = lens _eC2CustomerGatewayIpAddress (\s a -> s { _eC2CustomerGatewayIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-tags
eccugTags :: Lens' EC2CustomerGateway (Maybe [Tag])
eccugTags = lens _eC2CustomerGatewayTags (\s a -> s { _eC2CustomerGatewayTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-type
eccugType :: Lens' EC2CustomerGateway (Val Text)
eccugType = lens _eC2CustomerGatewayType (\s a -> s { _eC2CustomerGatewayType = a })
