{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html

module Stratosphere.Resources.EC2CustomerGateway where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2CustomerGateway. See
-- | 'ec2CustomerGateway' for a more convenient constructor.
data EC2CustomerGateway =
  EC2CustomerGateway
  { _eC2CustomerGatewayBgpAsn :: Val Integer'
  , _eC2CustomerGatewayIpAddress :: Val Text
  , _eC2CustomerGatewayTags :: Maybe [Tag]
  , _eC2CustomerGatewayType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2CustomerGateway where
  toJSON EC2CustomerGateway{..} =
    object $
    catMaybes
    [ Just ("BgpAsn" .= _eC2CustomerGatewayBgpAsn)
    , Just ("IpAddress" .= _eC2CustomerGatewayIpAddress)
    , ("Tags" .=) <$> _eC2CustomerGatewayTags
    , Just ("Type" .= _eC2CustomerGatewayType)
    ]

instance FromJSON EC2CustomerGateway where
  parseJSON (Object obj) =
    EC2CustomerGateway <$>
      obj .: "BgpAsn" <*>
      obj .: "IpAddress" <*>
      obj .:? "Tags" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'EC2CustomerGateway' containing required fields as
-- | arguments.
ec2CustomerGateway
  :: Val Integer' -- ^ 'eccgBgpAsn'
  -> Val Text -- ^ 'eccgIpAddress'
  -> Val Text -- ^ 'eccgType'
  -> EC2CustomerGateway
ec2CustomerGateway bgpAsnarg ipAddressarg typearg =
  EC2CustomerGateway
  { _eC2CustomerGatewayBgpAsn = bgpAsnarg
  , _eC2CustomerGatewayIpAddress = ipAddressarg
  , _eC2CustomerGatewayTags = Nothing
  , _eC2CustomerGatewayType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-bgpasn
eccgBgpAsn :: Lens' EC2CustomerGateway (Val Integer')
eccgBgpAsn = lens _eC2CustomerGatewayBgpAsn (\s a -> s { _eC2CustomerGatewayBgpAsn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-ipaddress
eccgIpAddress :: Lens' EC2CustomerGateway (Val Text)
eccgIpAddress = lens _eC2CustomerGatewayIpAddress (\s a -> s { _eC2CustomerGatewayIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-tags
eccgTags :: Lens' EC2CustomerGateway (Maybe [Tag])
eccgTags = lens _eC2CustomerGatewayTags (\s a -> s { _eC2CustomerGatewayTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-type
eccgType :: Lens' EC2CustomerGateway (Val Text)
eccgType = lens _eC2CustomerGatewayType (\s a -> s { _eC2CustomerGatewayType = a })
