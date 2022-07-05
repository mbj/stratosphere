{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html

module Stratosphere.Resources.EC2LocalGatewayRoute where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LocalGatewayRoute. See
-- 'ec2LocalGatewayRoute' for a more convenient constructor.
data EC2LocalGatewayRoute =
  EC2LocalGatewayRoute
  { _eC2LocalGatewayRouteDestinationCidrBlock :: Val Text
  , _eC2LocalGatewayRouteLocalGatewayRouteTableId :: Val Text
  , _eC2LocalGatewayRouteLocalGatewayVirtualInterfaceGroupId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2LocalGatewayRoute where
  toResourceProperties EC2LocalGatewayRoute{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::LocalGatewayRoute"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DestinationCidrBlock",) . toJSON) _eC2LocalGatewayRouteDestinationCidrBlock
        , (Just . ("LocalGatewayRouteTableId",) . toJSON) _eC2LocalGatewayRouteLocalGatewayRouteTableId
        , (Just . ("LocalGatewayVirtualInterfaceGroupId",) . toJSON) _eC2LocalGatewayRouteLocalGatewayVirtualInterfaceGroupId
        ]
    }

-- | Constructor for 'EC2LocalGatewayRoute' containing required fields as
-- arguments.
ec2LocalGatewayRoute
  :: Val Text -- ^ 'eclgrDestinationCidrBlock'
  -> Val Text -- ^ 'eclgrLocalGatewayRouteTableId'
  -> Val Text -- ^ 'eclgrLocalGatewayVirtualInterfaceGroupId'
  -> EC2LocalGatewayRoute
ec2LocalGatewayRoute destinationCidrBlockarg localGatewayRouteTableIdarg localGatewayVirtualInterfaceGroupIdarg =
  EC2LocalGatewayRoute
  { _eC2LocalGatewayRouteDestinationCidrBlock = destinationCidrBlockarg
  , _eC2LocalGatewayRouteLocalGatewayRouteTableId = localGatewayRouteTableIdarg
  , _eC2LocalGatewayRouteLocalGatewayVirtualInterfaceGroupId = localGatewayVirtualInterfaceGroupIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html#cfn-ec2-localgatewayroute-destinationcidrblock
eclgrDestinationCidrBlock :: Lens' EC2LocalGatewayRoute (Val Text)
eclgrDestinationCidrBlock = lens _eC2LocalGatewayRouteDestinationCidrBlock (\s a -> s { _eC2LocalGatewayRouteDestinationCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html#cfn-ec2-localgatewayroute-localgatewayroutetableid
eclgrLocalGatewayRouteTableId :: Lens' EC2LocalGatewayRoute (Val Text)
eclgrLocalGatewayRouteTableId = lens _eC2LocalGatewayRouteLocalGatewayRouteTableId (\s a -> s { _eC2LocalGatewayRouteLocalGatewayRouteTableId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-localgatewayroute.html#cfn-ec2-localgatewayroute-localgatewayvirtualinterfacegroupid
eclgrLocalGatewayVirtualInterfaceGroupId :: Lens' EC2LocalGatewayRoute (Val Text)
eclgrLocalGatewayVirtualInterfaceGroupId = lens _eC2LocalGatewayRouteLocalGatewayVirtualInterfaceGroupId (\s a -> s { _eC2LocalGatewayRouteLocalGatewayVirtualInterfaceGroupId = a })
