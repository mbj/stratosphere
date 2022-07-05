{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html

module Stratosphere.Resources.EC2TransitGatewayRoute where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2TransitGatewayRoute. See
-- 'ec2TransitGatewayRoute' for a more convenient constructor.
data EC2TransitGatewayRoute =
  EC2TransitGatewayRoute
  { _eC2TransitGatewayRouteBlackhole :: Maybe (Val Bool)
  , _eC2TransitGatewayRouteDestinationCidrBlock :: Maybe (Val Text)
  , _eC2TransitGatewayRouteTransitGatewayAttachmentId :: Maybe (Val Text)
  , _eC2TransitGatewayRouteTransitGatewayRouteTableId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2TransitGatewayRoute where
  toResourceProperties EC2TransitGatewayRoute{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TransitGatewayRoute"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Blackhole",) . toJSON) _eC2TransitGatewayRouteBlackhole
        , fmap (("DestinationCidrBlock",) . toJSON) _eC2TransitGatewayRouteDestinationCidrBlock
        , fmap (("TransitGatewayAttachmentId",) . toJSON) _eC2TransitGatewayRouteTransitGatewayAttachmentId
        , (Just . ("TransitGatewayRouteTableId",) . toJSON) _eC2TransitGatewayRouteTransitGatewayRouteTableId
        ]
    }

-- | Constructor for 'EC2TransitGatewayRoute' containing required fields as
-- arguments.
ec2TransitGatewayRoute
  :: Val Text -- ^ 'ectgrTransitGatewayRouteTableId'
  -> EC2TransitGatewayRoute
ec2TransitGatewayRoute transitGatewayRouteTableIdarg =
  EC2TransitGatewayRoute
  { _eC2TransitGatewayRouteBlackhole = Nothing
  , _eC2TransitGatewayRouteDestinationCidrBlock = Nothing
  , _eC2TransitGatewayRouteTransitGatewayAttachmentId = Nothing
  , _eC2TransitGatewayRouteTransitGatewayRouteTableId = transitGatewayRouteTableIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-blackhole
ectgrBlackhole :: Lens' EC2TransitGatewayRoute (Maybe (Val Bool))
ectgrBlackhole = lens _eC2TransitGatewayRouteBlackhole (\s a -> s { _eC2TransitGatewayRouteBlackhole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-destinationcidrblock
ectgrDestinationCidrBlock :: Lens' EC2TransitGatewayRoute (Maybe (Val Text))
ectgrDestinationCidrBlock = lens _eC2TransitGatewayRouteDestinationCidrBlock (\s a -> s { _eC2TransitGatewayRouteDestinationCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-transitgatewayattachmentid
ectgrTransitGatewayAttachmentId :: Lens' EC2TransitGatewayRoute (Maybe (Val Text))
ectgrTransitGatewayAttachmentId = lens _eC2TransitGatewayRouteTransitGatewayAttachmentId (\s a -> s { _eC2TransitGatewayRouteTransitGatewayAttachmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroute.html#cfn-ec2-transitgatewayroute-transitgatewayroutetableid
ectgrTransitGatewayRouteTableId :: Lens' EC2TransitGatewayRoute (Val Text)
ectgrTransitGatewayRouteTableId = lens _eC2TransitGatewayRouteTransitGatewayRouteTableId (\s a -> s { _eC2TransitGatewayRouteTransitGatewayRouteTableId = a })
