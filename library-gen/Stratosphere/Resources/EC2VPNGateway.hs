{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html

module Stratosphere.Resources.EC2VPNGateway where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2VPNGateway. See 'ec2VPNGateway' for a
-- more convenient constructor.
data EC2VPNGateway =
  EC2VPNGateway
  { _eC2VPNGatewayTags :: Maybe [Tag]
  , _eC2VPNGatewayType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2VPNGateway where
  toJSON EC2VPNGateway{..} =
    object $
    catMaybes
    [ ("Tags" .=) <$> _eC2VPNGatewayTags
    , Just ("Type" .= _eC2VPNGatewayType)
    ]

instance FromJSON EC2VPNGateway where
  parseJSON (Object obj) =
    EC2VPNGateway <$>
      obj .:? "Tags" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'EC2VPNGateway' containing required fields as arguments.
ec2VPNGateway
  :: Val Text -- ^ 'ecvpngType'
  -> EC2VPNGateway
ec2VPNGateway typearg =
  EC2VPNGateway
  { _eC2VPNGatewayTags = Nothing
  , _eC2VPNGatewayType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-tags
ecvpngTags :: Lens' EC2VPNGateway (Maybe [Tag])
ecvpngTags = lens _eC2VPNGatewayTags (\s a -> s { _eC2VPNGatewayTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-type
ecvpngType :: Lens' EC2VPNGateway (Val Text)
ecvpngType = lens _eC2VPNGatewayType (\s a -> s { _eC2VPNGatewayType = a })
