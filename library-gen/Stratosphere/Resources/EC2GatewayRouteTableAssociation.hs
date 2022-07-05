{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-gatewayroutetableassociation.html

module Stratosphere.Resources.EC2GatewayRouteTableAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2GatewayRouteTableAssociation. See
-- 'ec2GatewayRouteTableAssociation' for a more convenient constructor.
data EC2GatewayRouteTableAssociation =
  EC2GatewayRouteTableAssociation
  { _eC2GatewayRouteTableAssociationGatewayId :: Val Text
  , _eC2GatewayRouteTableAssociationRouteTableId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2GatewayRouteTableAssociation where
  toResourceProperties EC2GatewayRouteTableAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::GatewayRouteTableAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("GatewayId",) . toJSON) _eC2GatewayRouteTableAssociationGatewayId
        , (Just . ("RouteTableId",) . toJSON) _eC2GatewayRouteTableAssociationRouteTableId
        ]
    }

-- | Constructor for 'EC2GatewayRouteTableAssociation' containing required
-- fields as arguments.
ec2GatewayRouteTableAssociation
  :: Val Text -- ^ 'ecgrtaGatewayId'
  -> Val Text -- ^ 'ecgrtaRouteTableId'
  -> EC2GatewayRouteTableAssociation
ec2GatewayRouteTableAssociation gatewayIdarg routeTableIdarg =
  EC2GatewayRouteTableAssociation
  { _eC2GatewayRouteTableAssociationGatewayId = gatewayIdarg
  , _eC2GatewayRouteTableAssociationRouteTableId = routeTableIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-gatewayroutetableassociation.html#cfn-ec2-gatewayroutetableassociation-gatewayid
ecgrtaGatewayId :: Lens' EC2GatewayRouteTableAssociation (Val Text)
ecgrtaGatewayId = lens _eC2GatewayRouteTableAssociationGatewayId (\s a -> s { _eC2GatewayRouteTableAssociationGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-gatewayroutetableassociation.html#cfn-ec2-gatewayroutetableassociation-routetableid
ecgrtaRouteTableId :: Lens' EC2GatewayRouteTableAssociation (Val Text)
ecgrtaRouteTableId = lens _eC2GatewayRouteTableAssociationRouteTableId (\s a -> s { _eC2GatewayRouteTableAssociationRouteTableId = a })
