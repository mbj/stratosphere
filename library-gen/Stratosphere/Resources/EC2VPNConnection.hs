{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html

module Stratosphere.Resources.EC2VPNConnection where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.EC2VPNConnectionVpnTunnelOptionsSpecification

-- | Full data type definition for EC2VPNConnection. See 'ec2VPNConnection'
-- for a more convenient constructor.
data EC2VPNConnection =
  EC2VPNConnection
  { _eC2VPNConnectionCustomerGatewayId :: Val Text
  , _eC2VPNConnectionStaticRoutesOnly :: Maybe (Val Bool)
  , _eC2VPNConnectionTags :: Maybe [Tag]
  , _eC2VPNConnectionTransitGatewayId :: Maybe (Val Text)
  , _eC2VPNConnectionType :: Val Text
  , _eC2VPNConnectionVpnGatewayId :: Maybe (Val Text)
  , _eC2VPNConnectionVpnTunnelOptionsSpecifications :: Maybe [EC2VPNConnectionVpnTunnelOptionsSpecification]
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPNConnection where
  toResourceProperties EC2VPNConnection{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPNConnection"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CustomerGatewayId",) . toJSON) _eC2VPNConnectionCustomerGatewayId
        , fmap (("StaticRoutesOnly",) . toJSON) _eC2VPNConnectionStaticRoutesOnly
        , fmap (("Tags",) . toJSON) _eC2VPNConnectionTags
        , fmap (("TransitGatewayId",) . toJSON) _eC2VPNConnectionTransitGatewayId
        , (Just . ("Type",) . toJSON) _eC2VPNConnectionType
        , fmap (("VpnGatewayId",) . toJSON) _eC2VPNConnectionVpnGatewayId
        , fmap (("VpnTunnelOptionsSpecifications",) . toJSON) _eC2VPNConnectionVpnTunnelOptionsSpecifications
        ]
    }

-- | Constructor for 'EC2VPNConnection' containing required fields as
-- arguments.
ec2VPNConnection
  :: Val Text -- ^ 'ecvpncCustomerGatewayId'
  -> Val Text -- ^ 'ecvpncType'
  -> EC2VPNConnection
ec2VPNConnection customerGatewayIdarg typearg =
  EC2VPNConnection
  { _eC2VPNConnectionCustomerGatewayId = customerGatewayIdarg
  , _eC2VPNConnectionStaticRoutesOnly = Nothing
  , _eC2VPNConnectionTags = Nothing
  , _eC2VPNConnectionTransitGatewayId = Nothing
  , _eC2VPNConnectionType = typearg
  , _eC2VPNConnectionVpnGatewayId = Nothing
  , _eC2VPNConnectionVpnTunnelOptionsSpecifications = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-customergatewayid
ecvpncCustomerGatewayId :: Lens' EC2VPNConnection (Val Text)
ecvpncCustomerGatewayId = lens _eC2VPNConnectionCustomerGatewayId (\s a -> s { _eC2VPNConnectionCustomerGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-StaticRoutesOnly
ecvpncStaticRoutesOnly :: Lens' EC2VPNConnection (Maybe (Val Bool))
ecvpncStaticRoutesOnly = lens _eC2VPNConnectionStaticRoutesOnly (\s a -> s { _eC2VPNConnectionStaticRoutesOnly = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-tags
ecvpncTags :: Lens' EC2VPNConnection (Maybe [Tag])
ecvpncTags = lens _eC2VPNConnectionTags (\s a -> s { _eC2VPNConnectionTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-transitgatewayid
ecvpncTransitGatewayId :: Lens' EC2VPNConnection (Maybe (Val Text))
ecvpncTransitGatewayId = lens _eC2VPNConnectionTransitGatewayId (\s a -> s { _eC2VPNConnectionTransitGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-type
ecvpncType :: Lens' EC2VPNConnection (Val Text)
ecvpncType = lens _eC2VPNConnectionType (\s a -> s { _eC2VPNConnectionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-vpngatewayid
ecvpncVpnGatewayId :: Lens' EC2VPNConnection (Maybe (Val Text))
ecvpncVpnGatewayId = lens _eC2VPNConnectionVpnGatewayId (\s a -> s { _eC2VPNConnectionVpnGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-vpntunneloptionsspecifications
ecvpncVpnTunnelOptionsSpecifications :: Lens' EC2VPNConnection (Maybe [EC2VPNConnectionVpnTunnelOptionsSpecification])
ecvpncVpnTunnelOptionsSpecifications = lens _eC2VPNConnectionVpnTunnelOptionsSpecifications (\s a -> s { _eC2VPNConnectionVpnTunnelOptionsSpecifications = a })
