{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html

module Stratosphere.ResourceProperties.ServiceDiscoveryServiceHealthCheckConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceDiscoveryServiceHealthCheckConfig.
-- See 'serviceDiscoveryServiceHealthCheckConfig' for a more convenient
-- constructor.
data ServiceDiscoveryServiceHealthCheckConfig =
  ServiceDiscoveryServiceHealthCheckConfig
  { _serviceDiscoveryServiceHealthCheckConfigFailureThreshold :: Maybe (Val Double)
  , _serviceDiscoveryServiceHealthCheckConfigResourcePath :: Maybe (Val Text)
  , _serviceDiscoveryServiceHealthCheckConfigType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryServiceHealthCheckConfig where
  toJSON ServiceDiscoveryServiceHealthCheckConfig{..} =
    object $
    catMaybes
    [ fmap (("FailureThreshold",) . toJSON . fmap Double') _serviceDiscoveryServiceHealthCheckConfigFailureThreshold
    , fmap (("ResourcePath",) . toJSON) _serviceDiscoveryServiceHealthCheckConfigResourcePath
    , (Just . ("Type",) . toJSON) _serviceDiscoveryServiceHealthCheckConfigType
    ]

instance FromJSON ServiceDiscoveryServiceHealthCheckConfig where
  parseJSON (Object obj) =
    ServiceDiscoveryServiceHealthCheckConfig <$>
      fmap (fmap (fmap unDouble')) (obj .:? "FailureThreshold") <*>
      (obj .:? "ResourcePath") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'ServiceDiscoveryServiceHealthCheckConfig' containing
-- required fields as arguments.
serviceDiscoveryServiceHealthCheckConfig
  :: Val Text -- ^ 'sdshccType'
  -> ServiceDiscoveryServiceHealthCheckConfig
serviceDiscoveryServiceHealthCheckConfig typearg =
  ServiceDiscoveryServiceHealthCheckConfig
  { _serviceDiscoveryServiceHealthCheckConfigFailureThreshold = Nothing
  , _serviceDiscoveryServiceHealthCheckConfigResourcePath = Nothing
  , _serviceDiscoveryServiceHealthCheckConfigType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-failurethreshold
sdshccFailureThreshold :: Lens' ServiceDiscoveryServiceHealthCheckConfig (Maybe (Val Double))
sdshccFailureThreshold = lens _serviceDiscoveryServiceHealthCheckConfigFailureThreshold (\s a -> s { _serviceDiscoveryServiceHealthCheckConfigFailureThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-resourcepath
sdshccResourcePath :: Lens' ServiceDiscoveryServiceHealthCheckConfig (Maybe (Val Text))
sdshccResourcePath = lens _serviceDiscoveryServiceHealthCheckConfigResourcePath (\s a -> s { _serviceDiscoveryServiceHealthCheckConfigResourcePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-type
sdshccType :: Lens' ServiceDiscoveryServiceHealthCheckConfig (Val Text)
sdshccType = lens _serviceDiscoveryServiceHealthCheckConfigType (\s a -> s { _serviceDiscoveryServiceHealthCheckConfigType = a })
