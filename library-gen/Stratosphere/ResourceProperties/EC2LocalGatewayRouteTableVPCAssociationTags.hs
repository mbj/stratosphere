{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-localgatewayroutetablevpcassociation-tags.html

module Stratosphere.ResourceProperties.EC2LocalGatewayRouteTableVPCAssociationTags where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for
-- EC2LocalGatewayRouteTableVPCAssociationTags. See
-- 'ec2LocalGatewayRouteTableVPCAssociationTags' for a more convenient
-- constructor.
data EC2LocalGatewayRouteTableVPCAssociationTags =
  EC2LocalGatewayRouteTableVPCAssociationTags
  { _eC2LocalGatewayRouteTableVPCAssociationTagsTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2LocalGatewayRouteTableVPCAssociationTags where
  toJSON EC2LocalGatewayRouteTableVPCAssociationTags{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _eC2LocalGatewayRouteTableVPCAssociationTagsTags
    ]

-- | Constructor for 'EC2LocalGatewayRouteTableVPCAssociationTags' containing
-- required fields as arguments.
ec2LocalGatewayRouteTableVPCAssociationTags
  :: EC2LocalGatewayRouteTableVPCAssociationTags
ec2LocalGatewayRouteTableVPCAssociationTags  =
  EC2LocalGatewayRouteTableVPCAssociationTags
  { _eC2LocalGatewayRouteTableVPCAssociationTagsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-localgatewayroutetablevpcassociation-tags.html#cfn-ec2-localgatewayroutetablevpcassociation-tags-tags
eclgrtvpcatTags :: Lens' EC2LocalGatewayRouteTableVPCAssociationTags (Maybe [Tag])
eclgrtvpcatTags = lens _eC2LocalGatewayRouteTableVPCAssociationTagsTags (\s a -> s { _eC2LocalGatewayRouteTableVPCAssociationTagsTags = a })
