{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html

module Stratosphere.Resources.EC2SubnetRouteTableAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SubnetRouteTableAssociation. See
-- 'ec2SubnetRouteTableAssociation' for a more convenient constructor.
data EC2SubnetRouteTableAssociation =
  EC2SubnetRouteTableAssociation
  { _eC2SubnetRouteTableAssociationRouteTableId :: Val Text
  , _eC2SubnetRouteTableAssociationSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2SubnetRouteTableAssociation where
  toResourceProperties EC2SubnetRouteTableAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::SubnetRouteTableAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("RouteTableId",) . toJSON) _eC2SubnetRouteTableAssociationRouteTableId
        , (Just . ("SubnetId",) . toJSON) _eC2SubnetRouteTableAssociationSubnetId
        ]
    }

-- | Constructor for 'EC2SubnetRouteTableAssociation' containing required
-- fields as arguments.
ec2SubnetRouteTableAssociation
  :: Val Text -- ^ 'ecsrtaRouteTableId'
  -> Val Text -- ^ 'ecsrtaSubnetId'
  -> EC2SubnetRouteTableAssociation
ec2SubnetRouteTableAssociation routeTableIdarg subnetIdarg =
  EC2SubnetRouteTableAssociation
  { _eC2SubnetRouteTableAssociationRouteTableId = routeTableIdarg
  , _eC2SubnetRouteTableAssociationSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-routetableid
ecsrtaRouteTableId :: Lens' EC2SubnetRouteTableAssociation (Val Text)
ecsrtaRouteTableId = lens _eC2SubnetRouteTableAssociationRouteTableId (\s a -> s { _eC2SubnetRouteTableAssociationRouteTableId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-route-table-assoc.html#cfn-ec2-subnetroutetableassociation-subnetid
ecsrtaSubnetId :: Lens' EC2SubnetRouteTableAssociation (Val Text)
ecsrtaSubnetId = lens _eC2SubnetRouteTableAssociationSubnetId (\s a -> s { _eC2SubnetRouteTableAssociationSubnetId = a })
