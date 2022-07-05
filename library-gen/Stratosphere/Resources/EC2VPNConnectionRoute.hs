{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection-route.html

module Stratosphere.Resources.EC2VPNConnectionRoute where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPNConnectionRoute. See
-- 'ec2VPNConnectionRoute' for a more convenient constructor.
data EC2VPNConnectionRoute =
  EC2VPNConnectionRoute
  { _eC2VPNConnectionRouteDestinationCidrBlock :: Val Text
  , _eC2VPNConnectionRouteVpnConnectionId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPNConnectionRoute where
  toResourceProperties EC2VPNConnectionRoute{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPNConnectionRoute"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DestinationCidrBlock",) . toJSON) _eC2VPNConnectionRouteDestinationCidrBlock
        , (Just . ("VpnConnectionId",) . toJSON) _eC2VPNConnectionRouteVpnConnectionId
        ]
    }

-- | Constructor for 'EC2VPNConnectionRoute' containing required fields as
-- arguments.
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
