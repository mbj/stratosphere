{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html

module Stratosphere.Resources.ServiceDiscoveryService where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ServiceDiscoveryServiceDnsConfig
import Stratosphere.ResourceProperties.ServiceDiscoveryServiceHealthCheckConfig
import Stratosphere.ResourceProperties.ServiceDiscoveryServiceHealthCheckCustomConfig

-- | Full data type definition for ServiceDiscoveryService. See
-- 'serviceDiscoveryService' for a more convenient constructor.
data ServiceDiscoveryService =
  ServiceDiscoveryService
  { _serviceDiscoveryServiceDescription :: Maybe (Val Text)
  , _serviceDiscoveryServiceDnsConfig :: ServiceDiscoveryServiceDnsConfig
  , _serviceDiscoveryServiceHealthCheckConfig :: Maybe ServiceDiscoveryServiceHealthCheckConfig
  , _serviceDiscoveryServiceHealthCheckCustomConfig :: Maybe ServiceDiscoveryServiceHealthCheckCustomConfig
  , _serviceDiscoveryServiceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryService where
  toJSON ServiceDiscoveryService{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _serviceDiscoveryServiceDescription
    , (Just . ("DnsConfig",) . toJSON) _serviceDiscoveryServiceDnsConfig
    , fmap (("HealthCheckConfig",) . toJSON) _serviceDiscoveryServiceHealthCheckConfig
    , fmap (("HealthCheckCustomConfig",) . toJSON) _serviceDiscoveryServiceHealthCheckCustomConfig
    , fmap (("Name",) . toJSON) _serviceDiscoveryServiceName
    ]

instance FromJSON ServiceDiscoveryService where
  parseJSON (Object obj) =
    ServiceDiscoveryService <$>
      (obj .:? "Description") <*>
      (obj .: "DnsConfig") <*>
      (obj .:? "HealthCheckConfig") <*>
      (obj .:? "HealthCheckCustomConfig") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for 'ServiceDiscoveryService' containing required fields as
-- arguments.
serviceDiscoveryService
  :: ServiceDiscoveryServiceDnsConfig -- ^ 'sdsDnsConfig'
  -> ServiceDiscoveryService
serviceDiscoveryService dnsConfigarg =
  ServiceDiscoveryService
  { _serviceDiscoveryServiceDescription = Nothing
  , _serviceDiscoveryServiceDnsConfig = dnsConfigarg
  , _serviceDiscoveryServiceHealthCheckConfig = Nothing
  , _serviceDiscoveryServiceHealthCheckCustomConfig = Nothing
  , _serviceDiscoveryServiceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-description
sdsDescription :: Lens' ServiceDiscoveryService (Maybe (Val Text))
sdsDescription = lens _serviceDiscoveryServiceDescription (\s a -> s { _serviceDiscoveryServiceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-dnsconfig
sdsDnsConfig :: Lens' ServiceDiscoveryService ServiceDiscoveryServiceDnsConfig
sdsDnsConfig = lens _serviceDiscoveryServiceDnsConfig (\s a -> s { _serviceDiscoveryServiceDnsConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-healthcheckconfig
sdsHealthCheckConfig :: Lens' ServiceDiscoveryService (Maybe ServiceDiscoveryServiceHealthCheckConfig)
sdsHealthCheckConfig = lens _serviceDiscoveryServiceHealthCheckConfig (\s a -> s { _serviceDiscoveryServiceHealthCheckConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-healthcheckcustomconfig
sdsHealthCheckCustomConfig :: Lens' ServiceDiscoveryService (Maybe ServiceDiscoveryServiceHealthCheckCustomConfig)
sdsHealthCheckCustomConfig = lens _serviceDiscoveryServiceHealthCheckCustomConfig (\s a -> s { _serviceDiscoveryServiceHealthCheckCustomConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-name
sdsName :: Lens' ServiceDiscoveryService (Maybe (Val Text))
sdsName = lens _serviceDiscoveryServiceName (\s a -> s { _serviceDiscoveryServiceName = a })
