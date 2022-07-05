{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html

module Stratosphere.Resources.NetworkManagerCustomerGatewayAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for NetworkManagerCustomerGatewayAssociation.
-- See 'networkManagerCustomerGatewayAssociation' for a more convenient
-- constructor.
data NetworkManagerCustomerGatewayAssociation =
  NetworkManagerCustomerGatewayAssociation
  { _networkManagerCustomerGatewayAssociationCustomerGatewayArn :: Val Text
  , _networkManagerCustomerGatewayAssociationDeviceId :: Val Text
  , _networkManagerCustomerGatewayAssociationGlobalNetworkId :: Val Text
  , _networkManagerCustomerGatewayAssociationLinkId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties NetworkManagerCustomerGatewayAssociation where
  toResourceProperties NetworkManagerCustomerGatewayAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::NetworkManager::CustomerGatewayAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CustomerGatewayArn",) . toJSON) _networkManagerCustomerGatewayAssociationCustomerGatewayArn
        , (Just . ("DeviceId",) . toJSON) _networkManagerCustomerGatewayAssociationDeviceId
        , (Just . ("GlobalNetworkId",) . toJSON) _networkManagerCustomerGatewayAssociationGlobalNetworkId
        , fmap (("LinkId",) . toJSON) _networkManagerCustomerGatewayAssociationLinkId
        ]
    }

-- | Constructor for 'NetworkManagerCustomerGatewayAssociation' containing
-- required fields as arguments.
networkManagerCustomerGatewayAssociation
  :: Val Text -- ^ 'nmcgaCustomerGatewayArn'
  -> Val Text -- ^ 'nmcgaDeviceId'
  -> Val Text -- ^ 'nmcgaGlobalNetworkId'
  -> NetworkManagerCustomerGatewayAssociation
networkManagerCustomerGatewayAssociation customerGatewayArnarg deviceIdarg globalNetworkIdarg =
  NetworkManagerCustomerGatewayAssociation
  { _networkManagerCustomerGatewayAssociationCustomerGatewayArn = customerGatewayArnarg
  , _networkManagerCustomerGatewayAssociationDeviceId = deviceIdarg
  , _networkManagerCustomerGatewayAssociationGlobalNetworkId = globalNetworkIdarg
  , _networkManagerCustomerGatewayAssociationLinkId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-customergatewayarn
nmcgaCustomerGatewayArn :: Lens' NetworkManagerCustomerGatewayAssociation (Val Text)
nmcgaCustomerGatewayArn = lens _networkManagerCustomerGatewayAssociationCustomerGatewayArn (\s a -> s { _networkManagerCustomerGatewayAssociationCustomerGatewayArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-deviceid
nmcgaDeviceId :: Lens' NetworkManagerCustomerGatewayAssociation (Val Text)
nmcgaDeviceId = lens _networkManagerCustomerGatewayAssociationDeviceId (\s a -> s { _networkManagerCustomerGatewayAssociationDeviceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-globalnetworkid
nmcgaGlobalNetworkId :: Lens' NetworkManagerCustomerGatewayAssociation (Val Text)
nmcgaGlobalNetworkId = lens _networkManagerCustomerGatewayAssociationGlobalNetworkId (\s a -> s { _networkManagerCustomerGatewayAssociationGlobalNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-customergatewayassociation.html#cfn-networkmanager-customergatewayassociation-linkid
nmcgaLinkId :: Lens' NetworkManagerCustomerGatewayAssociation (Maybe (Val Text))
nmcgaLinkId = lens _networkManagerCustomerGatewayAssociationLinkId (\s a -> s { _networkManagerCustomerGatewayAssociationLinkId = a })
