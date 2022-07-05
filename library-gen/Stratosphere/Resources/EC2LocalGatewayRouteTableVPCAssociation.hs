{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html

module Stratosphere.Resources.EC2LocalGatewayRouteTableVPCAssociation where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2LocalGatewayRouteTableVPCAssociationTags

-- | Full data type definition for EC2LocalGatewayRouteTableVPCAssociation.
-- See 'ec2LocalGatewayRouteTableVPCAssociation' for a more convenient
-- constructor.
data EC2LocalGatewayRouteTableVPCAssociation =
  EC2LocalGatewayRouteTableVPCAssociation
  { _eC2LocalGatewayRouteTableVPCAssociationLocalGatewayRouteTableId :: Val Text
  , _eC2LocalGatewayRouteTableVPCAssociationTags :: Maybe EC2LocalGatewayRouteTableVPCAssociationTags
  , _eC2LocalGatewayRouteTableVPCAssociationVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2LocalGatewayRouteTableVPCAssociation where
  toResourceProperties EC2LocalGatewayRouteTableVPCAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::LocalGatewayRouteTableVPCAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("LocalGatewayRouteTableId",) . toJSON) _eC2LocalGatewayRouteTableVPCAssociationLocalGatewayRouteTableId
        , fmap (("Tags",) . toJSON) _eC2LocalGatewayRouteTableVPCAssociationTags
        , (Just . ("VpcId",) . toJSON) _eC2LocalGatewayRouteTableVPCAssociationVpcId
        ]
    }

-- | Constructor for 'EC2LocalGatewayRouteTableVPCAssociation' containing
-- required fields as arguments.
ec2LocalGatewayRouteTableVPCAssociation
  :: Val Text -- ^ 'eclgrtvpcaLocalGatewayRouteTableId'
  -> Val Text -- ^ 'eclgrtvpcaVpcId'
  -> EC2LocalGatewayRouteTableVPCAssociation
ec2LocalGatewayRouteTableVPCAssociation localGatewayRouteTableIdarg vpcIdarg =
  EC2LocalGatewayRouteTableVPCAssociation
  { _eC2LocalGatewayRouteTableVPCAssociationLocalGatewayRouteTableId = localGatewayRouteTableIdarg
  , _eC2LocalGatewayRouteTableVPCAssociationTags = Nothing
  , _eC2LocalGatewayRouteTableVPCAssociationVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html#cfn-ec2-localgatewayroutetablevpcassociation-localgatewayroutetableid
eclgrtvpcaLocalGatewayRouteTableId :: Lens' EC2LocalGatewayRouteTableVPCAssociation (Val Text)
eclgrtvpcaLocalGatewayRouteTableId = lens _eC2LocalGatewayRouteTableVPCAssociationLocalGatewayRouteTableId (\s a -> s { _eC2LocalGatewayRouteTableVPCAssociationLocalGatewayRouteTableId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html#cfn-ec2-localgatewayroutetablevpcassociation-tags
eclgrtvpcaTags :: Lens' EC2LocalGatewayRouteTableVPCAssociation (Maybe EC2LocalGatewayRouteTableVPCAssociationTags)
eclgrtvpcaTags = lens _eC2LocalGatewayRouteTableVPCAssociationTags (\s a -> s { _eC2LocalGatewayRouteTableVPCAssociationTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroutetablevpcassociation.html#cfn-ec2-localgatewayroutetablevpcassociation-vpcid
eclgrtvpcaVpcId :: Lens' EC2LocalGatewayRouteTableVPCAssociation (Val Text)
eclgrtvpcaVpcId = lens _eC2LocalGatewayRouteTableVPCAssociationVpcId (\s a -> s { _eC2LocalGatewayRouteTableVPCAssociationVpcId = a })
