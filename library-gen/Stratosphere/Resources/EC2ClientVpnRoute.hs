{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html

module Stratosphere.Resources.EC2ClientVpnRoute where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2ClientVpnRoute. See 'ec2ClientVpnRoute'
-- for a more convenient constructor.
data EC2ClientVpnRoute =
  EC2ClientVpnRoute
  { _eC2ClientVpnRouteClientVpnEndpointId :: Val Text
  , _eC2ClientVpnRouteDescription :: Maybe (Val Text)
  , _eC2ClientVpnRouteDestinationCidrBlock :: Val Text
  , _eC2ClientVpnRouteTargetVpcSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2ClientVpnRoute where
  toResourceProperties EC2ClientVpnRoute{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::ClientVpnRoute"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ClientVpnEndpointId",) . toJSON) _eC2ClientVpnRouteClientVpnEndpointId
        , fmap (("Description",) . toJSON) _eC2ClientVpnRouteDescription
        , (Just . ("DestinationCidrBlock",) . toJSON) _eC2ClientVpnRouteDestinationCidrBlock
        , (Just . ("TargetVpcSubnetId",) . toJSON) _eC2ClientVpnRouteTargetVpcSubnetId
        ]
    }

-- | Constructor for 'EC2ClientVpnRoute' containing required fields as
-- arguments.
ec2ClientVpnRoute
  :: Val Text -- ^ 'eccvrClientVpnEndpointId'
  -> Val Text -- ^ 'eccvrDestinationCidrBlock'
  -> Val Text -- ^ 'eccvrTargetVpcSubnetId'
  -> EC2ClientVpnRoute
ec2ClientVpnRoute clientVpnEndpointIdarg destinationCidrBlockarg targetVpcSubnetIdarg =
  EC2ClientVpnRoute
  { _eC2ClientVpnRouteClientVpnEndpointId = clientVpnEndpointIdarg
  , _eC2ClientVpnRouteDescription = Nothing
  , _eC2ClientVpnRouteDestinationCidrBlock = destinationCidrBlockarg
  , _eC2ClientVpnRouteTargetVpcSubnetId = targetVpcSubnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-clientvpnendpointid
eccvrClientVpnEndpointId :: Lens' EC2ClientVpnRoute (Val Text)
eccvrClientVpnEndpointId = lens _eC2ClientVpnRouteClientVpnEndpointId (\s a -> s { _eC2ClientVpnRouteClientVpnEndpointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-description
eccvrDescription :: Lens' EC2ClientVpnRoute (Maybe (Val Text))
eccvrDescription = lens _eC2ClientVpnRouteDescription (\s a -> s { _eC2ClientVpnRouteDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-destinationcidrblock
eccvrDestinationCidrBlock :: Lens' EC2ClientVpnRoute (Val Text)
eccvrDestinationCidrBlock = lens _eC2ClientVpnRouteDestinationCidrBlock (\s a -> s { _eC2ClientVpnRouteDestinationCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-targetvpcsubnetid
eccvrTargetVpcSubnetId :: Lens' EC2ClientVpnRoute (Val Text)
eccvrTargetVpcSubnetId = lens _eC2ClientVpnRouteTargetVpcSubnetId (\s a -> s { _eC2ClientVpnRouteTargetVpcSubnetId = a })
