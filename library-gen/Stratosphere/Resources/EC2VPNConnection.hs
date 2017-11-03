{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html

module Stratosphere.Resources.EC2VPNConnection where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.EC2VPNConnectionVpnTunnelOptionsSpecification

-- | Full data type definition for EC2VPNConnection. See 'ec2VPNConnection'
-- for a more convenient constructor.
data EC2VPNConnection =
  EC2VPNConnection
  { _eC2VPNConnectionCustomerGatewayId :: Val Text
  , _eC2VPNConnectionStaticRoutesOnly :: Maybe (Val Bool)
  , _eC2VPNConnectionTags :: Maybe [Tag]
  , _eC2VPNConnectionType :: Val Text
  , _eC2VPNConnectionVpnGatewayId :: Val Text
  , _eC2VPNConnectionVpnTunnelOptionsSpecifications :: Maybe [EC2VPNConnectionVpnTunnelOptionsSpecification]
  } deriving (Show, Eq)

instance ToJSON EC2VPNConnection where
  toJSON EC2VPNConnection{..} =
    object $
    catMaybes
    [ (Just . ("CustomerGatewayId",) . toJSON) _eC2VPNConnectionCustomerGatewayId
    , fmap (("StaticRoutesOnly",) . toJSON . fmap Bool') _eC2VPNConnectionStaticRoutesOnly
    , fmap (("Tags",) . toJSON) _eC2VPNConnectionTags
    , (Just . ("Type",) . toJSON) _eC2VPNConnectionType
    , (Just . ("VpnGatewayId",) . toJSON) _eC2VPNConnectionVpnGatewayId
    , fmap (("VpnTunnelOptionsSpecifications",) . toJSON) _eC2VPNConnectionVpnTunnelOptionsSpecifications
    ]

instance FromJSON EC2VPNConnection where
  parseJSON (Object obj) =
    EC2VPNConnection <$>
      (obj .: "CustomerGatewayId") <*>
      fmap (fmap (fmap unBool')) (obj .:? "StaticRoutesOnly") <*>
      (obj .:? "Tags") <*>
      (obj .: "Type") <*>
      (obj .: "VpnGatewayId") <*>
      (obj .:? "VpnTunnelOptionsSpecifications")
  parseJSON _ = mempty

-- | Constructor for 'EC2VPNConnection' containing required fields as
-- arguments.
ec2VPNConnection
  :: Val Text -- ^ 'ecvpncCustomerGatewayId'
  -> Val Text -- ^ 'ecvpncType'
  -> Val Text -- ^ 'ecvpncVpnGatewayId'
  -> EC2VPNConnection
ec2VPNConnection customerGatewayIdarg typearg vpnGatewayIdarg =
  EC2VPNConnection
  { _eC2VPNConnectionCustomerGatewayId = customerGatewayIdarg
  , _eC2VPNConnectionStaticRoutesOnly = Nothing
  , _eC2VPNConnectionTags = Nothing
  , _eC2VPNConnectionType = typearg
  , _eC2VPNConnectionVpnGatewayId = vpnGatewayIdarg
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-type
ecvpncType :: Lens' EC2VPNConnection (Val Text)
ecvpncType = lens _eC2VPNConnectionType (\s a -> s { _eC2VPNConnectionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-vpngatewayid
ecvpncVpnGatewayId :: Lens' EC2VPNConnection (Val Text)
ecvpncVpnGatewayId = lens _eC2VPNConnectionVpnGatewayId (\s a -> s { _eC2VPNConnectionVpnGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-vpntunneloptionsspecifications
ecvpncVpnTunnelOptionsSpecifications :: Lens' EC2VPNConnection (Maybe [EC2VPNConnectionVpnTunnelOptionsSpecification])
ecvpncVpnTunnelOptionsSpecifications = lens _eC2VPNConnectionVpnTunnelOptionsSpecifications (\s a -> s { _eC2VPNConnectionVpnTunnelOptionsSpecifications = a })
