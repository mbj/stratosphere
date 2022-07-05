{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewayregistration.html

module Stratosphere.Resources.NetworkManagerTransitGatewayRegistration where

import Stratosphere.ResourceImports


-- | Full data type definition for NetworkManagerTransitGatewayRegistration.
-- See 'networkManagerTransitGatewayRegistration' for a more convenient
-- constructor.
data NetworkManagerTransitGatewayRegistration =
  NetworkManagerTransitGatewayRegistration
  { _networkManagerTransitGatewayRegistrationGlobalNetworkId :: Val Text
  , _networkManagerTransitGatewayRegistrationTransitGatewayArn :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties NetworkManagerTransitGatewayRegistration where
  toResourceProperties NetworkManagerTransitGatewayRegistration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::NetworkManager::TransitGatewayRegistration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("GlobalNetworkId",) . toJSON) _networkManagerTransitGatewayRegistrationGlobalNetworkId
        , (Just . ("TransitGatewayArn",) . toJSON) _networkManagerTransitGatewayRegistrationTransitGatewayArn
        ]
    }

-- | Constructor for 'NetworkManagerTransitGatewayRegistration' containing
-- required fields as arguments.
networkManagerTransitGatewayRegistration
  :: Val Text -- ^ 'nmtgrGlobalNetworkId'
  -> Val Text -- ^ 'nmtgrTransitGatewayArn'
  -> NetworkManagerTransitGatewayRegistration
networkManagerTransitGatewayRegistration globalNetworkIdarg transitGatewayArnarg =
  NetworkManagerTransitGatewayRegistration
  { _networkManagerTransitGatewayRegistrationGlobalNetworkId = globalNetworkIdarg
  , _networkManagerTransitGatewayRegistrationTransitGatewayArn = transitGatewayArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewayregistration.html#cfn-networkmanager-transitgatewayregistration-globalnetworkid
nmtgrGlobalNetworkId :: Lens' NetworkManagerTransitGatewayRegistration (Val Text)
nmtgrGlobalNetworkId = lens _networkManagerTransitGatewayRegistrationGlobalNetworkId (\s a -> s { _networkManagerTransitGatewayRegistrationGlobalNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-transitgatewayregistration.html#cfn-networkmanager-transitgatewayregistration-transitgatewayarn
nmtgrTransitGatewayArn :: Lens' NetworkManagerTransitGatewayRegistration (Val Text)
nmtgrTransitGatewayArn = lens _networkManagerTransitGatewayRegistrationTransitGatewayArn (\s a -> s { _networkManagerTransitGatewayRegistrationTransitGatewayArn = a })
