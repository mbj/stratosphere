{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html

module Stratosphere.Resources.EC2VPNGatewayRoutePropagation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPNGatewayRoutePropagation. See
-- 'ec2VPNGatewayRoutePropagation' for a more convenient constructor.
data EC2VPNGatewayRoutePropagation =
  EC2VPNGatewayRoutePropagation
  { _eC2VPNGatewayRoutePropagationRouteTableIds :: ValList Text
  , _eC2VPNGatewayRoutePropagationVpnGatewayId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPNGatewayRoutePropagation where
  toResourceProperties EC2VPNGatewayRoutePropagation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPNGatewayRoutePropagation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("RouteTableIds",) . toJSON) _eC2VPNGatewayRoutePropagationRouteTableIds
        , (Just . ("VpnGatewayId",) . toJSON) _eC2VPNGatewayRoutePropagationVpnGatewayId
        ]
    }

-- | Constructor for 'EC2VPNGatewayRoutePropagation' containing required
-- fields as arguments.
ec2VPNGatewayRoutePropagation
  :: ValList Text -- ^ 'ecvpngrpRouteTableIds'
  -> Val Text -- ^ 'ecvpngrpVpnGatewayId'
  -> EC2VPNGatewayRoutePropagation
ec2VPNGatewayRoutePropagation routeTableIdsarg vpnGatewayIdarg =
  EC2VPNGatewayRoutePropagation
  { _eC2VPNGatewayRoutePropagationRouteTableIds = routeTableIdsarg
  , _eC2VPNGatewayRoutePropagationVpnGatewayId = vpnGatewayIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-routetableids
ecvpngrpRouteTableIds :: Lens' EC2VPNGatewayRoutePropagation (ValList Text)
ecvpngrpRouteTableIds = lens _eC2VPNGatewayRoutePropagationRouteTableIds (\s a -> s { _eC2VPNGatewayRoutePropagationRouteTableIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-vpngatewayid
ecvpngrpVpnGatewayId :: Lens' EC2VPNGatewayRoutePropagation (Val Text)
ecvpngrpVpnGatewayId = lens _eC2VPNGatewayRoutePropagationVpnGatewayId (\s a -> s { _eC2VPNGatewayRoutePropagationVpnGatewayId = a })
