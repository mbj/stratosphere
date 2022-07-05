{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-linkassociation.html

module Stratosphere.Resources.NetworkManagerLinkAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for NetworkManagerLinkAssociation. See
-- 'networkManagerLinkAssociation' for a more convenient constructor.
data NetworkManagerLinkAssociation =
  NetworkManagerLinkAssociation
  { _networkManagerLinkAssociationDeviceId :: Val Text
  , _networkManagerLinkAssociationGlobalNetworkId :: Val Text
  , _networkManagerLinkAssociationLinkId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties NetworkManagerLinkAssociation where
  toResourceProperties NetworkManagerLinkAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::NetworkManager::LinkAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DeviceId",) . toJSON) _networkManagerLinkAssociationDeviceId
        , (Just . ("GlobalNetworkId",) . toJSON) _networkManagerLinkAssociationGlobalNetworkId
        , (Just . ("LinkId",) . toJSON) _networkManagerLinkAssociationLinkId
        ]
    }

-- | Constructor for 'NetworkManagerLinkAssociation' containing required
-- fields as arguments.
networkManagerLinkAssociation
  :: Val Text -- ^ 'nmlaDeviceId'
  -> Val Text -- ^ 'nmlaGlobalNetworkId'
  -> Val Text -- ^ 'nmlaLinkId'
  -> NetworkManagerLinkAssociation
networkManagerLinkAssociation deviceIdarg globalNetworkIdarg linkIdarg =
  NetworkManagerLinkAssociation
  { _networkManagerLinkAssociationDeviceId = deviceIdarg
  , _networkManagerLinkAssociationGlobalNetworkId = globalNetworkIdarg
  , _networkManagerLinkAssociationLinkId = linkIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-linkassociation.html#cfn-networkmanager-linkassociation-deviceid
nmlaDeviceId :: Lens' NetworkManagerLinkAssociation (Val Text)
nmlaDeviceId = lens _networkManagerLinkAssociationDeviceId (\s a -> s { _networkManagerLinkAssociationDeviceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-linkassociation.html#cfn-networkmanager-linkassociation-globalnetworkid
nmlaGlobalNetworkId :: Lens' NetworkManagerLinkAssociation (Val Text)
nmlaGlobalNetworkId = lens _networkManagerLinkAssociationGlobalNetworkId (\s a -> s { _networkManagerLinkAssociationGlobalNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-linkassociation.html#cfn-networkmanager-linkassociation-linkid
nmlaLinkId :: Lens' NetworkManagerLinkAssociation (Val Text)
nmlaLinkId = lens _networkManagerLinkAssociationLinkId (\s a -> s { _networkManagerLinkAssociationLinkId = a })
