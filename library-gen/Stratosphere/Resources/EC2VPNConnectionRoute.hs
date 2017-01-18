{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html

module Stratosphere.Resources.EC2VPNConnectionRoute where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2VPNConnectionRoute. See
-- | 'ec2VPNConnectionRoute' for a more convenient constructor.
data EC2VPNConnectionRoute =
  EC2VPNConnectionRoute
  { _eC2VPNConnectionRouteDestinationCidrBlock :: Val Text
  , _eC2VPNConnectionRouteVpnConnectionId :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EC2VPNConnectionRoute where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON EC2VPNConnectionRoute where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'EC2VPNConnectionRoute' containing required fields as
-- | arguments.
ec2VPNConnectionRoute
  :: Val Text -- ^ 'ecvpncrDestinationCidrBlock'
  -> Val Text -- ^ 'ecvpncrVpnConnectionId'
  -> EC2VPNConnectionRoute
ec2VPNConnectionRoute destinationCidrBlockarg vpnConnectionIdarg =
  EC2VPNConnectionRoute
  { _eC2VPNConnectionRouteDestinationCidrBlock = destinationCidrBlockarg
  , _eC2VPNConnectionRouteVpnConnectionId = vpnConnectionIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-cidrblock
ecvpncrDestinationCidrBlock :: Lens' EC2VPNConnectionRoute (Val Text)
ecvpncrDestinationCidrBlock = lens _eC2VPNConnectionRouteDestinationCidrBlock (\s a -> s { _eC2VPNConnectionRouteDestinationCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html#cfn-ec2-vpnconnectionroute-connectionid
ecvpncrVpnConnectionId :: Lens' EC2VPNConnectionRoute (Val Text)
ecvpncrVpnConnectionId = lens _eC2VPNConnectionRouteVpnConnectionId (\s a -> s { _eC2VPNConnectionRouteVpnConnectionId = a })
