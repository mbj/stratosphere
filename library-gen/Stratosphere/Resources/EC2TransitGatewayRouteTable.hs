{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html

module Stratosphere.Resources.EC2TransitGatewayRouteTable where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2TransitGatewayRouteTable. See
-- 'ec2TransitGatewayRouteTable' for a more convenient constructor.
data EC2TransitGatewayRouteTable =
  EC2TransitGatewayRouteTable
  { _eC2TransitGatewayRouteTableTags :: Maybe [Tag]
  , _eC2TransitGatewayRouteTableTransitGatewayId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2TransitGatewayRouteTable where
  toResourceProperties EC2TransitGatewayRouteTable{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TransitGatewayRouteTable"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Tags",) . toJSON) _eC2TransitGatewayRouteTableTags
        , (Just . ("TransitGatewayId",) . toJSON) _eC2TransitGatewayRouteTableTransitGatewayId
        ]
    }

-- | Constructor for 'EC2TransitGatewayRouteTable' containing required fields
-- as arguments.
ec2TransitGatewayRouteTable
  :: Val Text -- ^ 'ectgrtTransitGatewayId'
  -> EC2TransitGatewayRouteTable
ec2TransitGatewayRouteTable transitGatewayIdarg =
  EC2TransitGatewayRouteTable
  { _eC2TransitGatewayRouteTableTags = Nothing
  , _eC2TransitGatewayRouteTableTransitGatewayId = transitGatewayIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-tags
ectgrtTags :: Lens' EC2TransitGatewayRouteTable (Maybe [Tag])
ectgrtTags = lens _eC2TransitGatewayRouteTableTags (\s a -> s { _eC2TransitGatewayRouteTableTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetable.html#cfn-ec2-transitgatewayroutetable-transitgatewayid
ectgrtTransitGatewayId :: Lens' EC2TransitGatewayRouteTable (Val Text)
ectgrtTransitGatewayId = lens _eC2TransitGatewayRouteTableTransitGatewayId (\s a -> s { _eC2TransitGatewayRouteTableTransitGatewayId = a })
