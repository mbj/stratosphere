{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html

module Stratosphere.Resources.EC2VPNGateway where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2VPNGateway. See 'ec2VPNGateway' for a
-- | more convenient constructor.
data EC2VPNGateway =
  EC2VPNGateway
  { _eC2VPNGatewayTags :: Maybe [Tag]
  , _eC2VPNGatewayType :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EC2VPNGateway where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON EC2VPNGateway where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

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
