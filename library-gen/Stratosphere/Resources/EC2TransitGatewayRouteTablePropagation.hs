{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html

module Stratosphere.Resources.EC2TransitGatewayRouteTablePropagation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2TransitGatewayRouteTablePropagation. See
-- 'ec2TransitGatewayRouteTablePropagation' for a more convenient
-- constructor.
data EC2TransitGatewayRouteTablePropagation =
  EC2TransitGatewayRouteTablePropagation
  { _eC2TransitGatewayRouteTablePropagationTransitGatewayAttachmentId :: Val Text
  , _eC2TransitGatewayRouteTablePropagationTransitGatewayRouteTableId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2TransitGatewayRouteTablePropagation where
  toResourceProperties EC2TransitGatewayRouteTablePropagation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TransitGatewayRouteTablePropagation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("TransitGatewayAttachmentId",) . toJSON) _eC2TransitGatewayRouteTablePropagationTransitGatewayAttachmentId
        , (Just . ("TransitGatewayRouteTableId",) . toJSON) _eC2TransitGatewayRouteTablePropagationTransitGatewayRouteTableId
        ]
    }

-- | Constructor for 'EC2TransitGatewayRouteTablePropagation' containing
-- required fields as arguments.
ec2TransitGatewayRouteTablePropagation
  :: Val Text -- ^ 'ectgrtpTransitGatewayAttachmentId'
  -> Val Text -- ^ 'ectgrtpTransitGatewayRouteTableId'
  -> EC2TransitGatewayRouteTablePropagation
ec2TransitGatewayRouteTablePropagation transitGatewayAttachmentIdarg transitGatewayRouteTableIdarg =
  EC2TransitGatewayRouteTablePropagation
  { _eC2TransitGatewayRouteTablePropagationTransitGatewayAttachmentId = transitGatewayAttachmentIdarg
  , _eC2TransitGatewayRouteTablePropagationTransitGatewayRouteTableId = transitGatewayRouteTableIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayattachmentid
ectgrtpTransitGatewayAttachmentId :: Lens' EC2TransitGatewayRouteTablePropagation (Val Text)
ectgrtpTransitGatewayAttachmentId = lens _eC2TransitGatewayRouteTablePropagationTransitGatewayAttachmentId (\s a -> s { _eC2TransitGatewayRouteTablePropagationTransitGatewayAttachmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetablepropagation.html#cfn-ec2-transitgatewayroutetablepropagation-transitgatewayroutetableid
ectgrtpTransitGatewayRouteTableId :: Lens' EC2TransitGatewayRouteTablePropagation (Val Text)
ectgrtpTransitGatewayRouteTableId = lens _eC2TransitGatewayRouteTablePropagationTransitGatewayRouteTableId (\s a -> s { _eC2TransitGatewayRouteTablePropagationTransitGatewayRouteTableId = a })
