{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html

module Stratosphere.Resources.EC2TransitGatewayRouteTableAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2TransitGatewayRouteTableAssociation. See
-- 'ec2TransitGatewayRouteTableAssociation' for a more convenient
-- constructor.
data EC2TransitGatewayRouteTableAssociation =
  EC2TransitGatewayRouteTableAssociation
  { _eC2TransitGatewayRouteTableAssociationTransitGatewayAttachmentId :: Val Text
  , _eC2TransitGatewayRouteTableAssociationTransitGatewayRouteTableId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2TransitGatewayRouteTableAssociation where
  toResourceProperties EC2TransitGatewayRouteTableAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TransitGatewayRouteTableAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("TransitGatewayAttachmentId",) . toJSON) _eC2TransitGatewayRouteTableAssociationTransitGatewayAttachmentId
        , (Just . ("TransitGatewayRouteTableId",) . toJSON) _eC2TransitGatewayRouteTableAssociationTransitGatewayRouteTableId
        ]
    }

-- | Constructor for 'EC2TransitGatewayRouteTableAssociation' containing
-- required fields as arguments.
ec2TransitGatewayRouteTableAssociation
  :: Val Text -- ^ 'ectgrtaTransitGatewayAttachmentId'
  -> Val Text -- ^ 'ectgrtaTransitGatewayRouteTableId'
  -> EC2TransitGatewayRouteTableAssociation
ec2TransitGatewayRouteTableAssociation transitGatewayAttachmentIdarg transitGatewayRouteTableIdarg =
  EC2TransitGatewayRouteTableAssociation
  { _eC2TransitGatewayRouteTableAssociationTransitGatewayAttachmentId = transitGatewayAttachmentIdarg
  , _eC2TransitGatewayRouteTableAssociationTransitGatewayRouteTableId = transitGatewayRouteTableIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayattachmentid
ectgrtaTransitGatewayAttachmentId :: Lens' EC2TransitGatewayRouteTableAssociation (Val Text)
ectgrtaTransitGatewayAttachmentId = lens _eC2TransitGatewayRouteTableAssociationTransitGatewayAttachmentId (\s a -> s { _eC2TransitGatewayRouteTableAssociationTransitGatewayAttachmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayroutetableassociation.html#cfn-ec2-transitgatewayroutetableassociation-transitgatewayroutetableid
ectgrtaTransitGatewayRouteTableId :: Lens' EC2TransitGatewayRouteTableAssociation (Val Text)
ectgrtaTransitGatewayRouteTableId = lens _eC2TransitGatewayRouteTableAssociationTransitGatewayRouteTableId (\s a -> s { _eC2TransitGatewayRouteTableAssociationTransitGatewayRouteTableId = a })
