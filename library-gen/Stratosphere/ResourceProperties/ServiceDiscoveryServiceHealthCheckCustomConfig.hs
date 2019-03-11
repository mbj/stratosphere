{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html

module Stratosphere.ResourceProperties.ServiceDiscoveryServiceHealthCheckCustomConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ServiceDiscoveryServiceHealthCheckCustomConfig. See
-- 'serviceDiscoveryServiceHealthCheckCustomConfig' for a more convenient
-- constructor.
data ServiceDiscoveryServiceHealthCheckCustomConfig =
  ServiceDiscoveryServiceHealthCheckCustomConfig
  { _serviceDiscoveryServiceHealthCheckCustomConfigFailureThreshold :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryServiceHealthCheckCustomConfig where
  toJSON ServiceDiscoveryServiceHealthCheckCustomConfig{..} =
    object $
    catMaybes
    [ fmap (("FailureThreshold",) . toJSON . fmap Double') _serviceDiscoveryServiceHealthCheckCustomConfigFailureThreshold
    ]

-- | Constructor for 'ServiceDiscoveryServiceHealthCheckCustomConfig'
-- containing required fields as arguments.
serviceDiscoveryServiceHealthCheckCustomConfig
  :: ServiceDiscoveryServiceHealthCheckCustomConfig
serviceDiscoveryServiceHealthCheckCustomConfig  =
  ServiceDiscoveryServiceHealthCheckCustomConfig
  { _serviceDiscoveryServiceHealthCheckCustomConfigFailureThreshold = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html#cfn-servicediscovery-service-healthcheckcustomconfig-failurethreshold
sdshcccFailureThreshold :: Lens' ServiceDiscoveryServiceHealthCheckCustomConfig (Maybe (Val Double))
sdshcccFailureThreshold = lens _serviceDiscoveryServiceHealthCheckCustomConfigFailureThreshold (\s a -> s { _serviceDiscoveryServiceHealthCheckCustomConfigFailureThreshold = a })
