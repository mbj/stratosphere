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
  , _serviceDiscoveryServiceDnsConfig :: Maybe ServiceDiscoveryServiceDnsConfig
  , _serviceDiscoveryServiceHealthCheckConfig :: Maybe ServiceDiscoveryServiceHealthCheckConfig
  , _serviceDiscoveryServiceHealthCheckCustomConfig :: Maybe ServiceDiscoveryServiceHealthCheckCustomConfig
  , _serviceDiscoveryServiceName :: Maybe (Val Text)
  , _serviceDiscoveryServiceNamespaceId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryService where
  toJSON ServiceDiscoveryService{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _serviceDiscoveryServiceDescription
    , fmap (("DnsConfig",) . toJSON) _serviceDiscoveryServiceDnsConfig
    , fmap (("HealthCheckConfig",) . toJSON) _serviceDiscoveryServiceHealthCheckConfig
    , fmap (("HealthCheckCustomConfig",) . toJSON) _serviceDiscoveryServiceHealthCheckCustomConfig
    , fmap (("Name",) . toJSON) _serviceDiscoveryServiceName
    , fmap (("NamespaceId",) . toJSON) _serviceDiscoveryServiceNamespaceId
    ]

-- | Constructor for 'ServiceDiscoveryService' containing required fields as
-- arguments.
serviceDiscoveryService
  :: ServiceDiscoveryService
serviceDiscoveryService  =
  ServiceDiscoveryService
  { _serviceDiscoveryServiceDescription = Nothing
  , _serviceDiscoveryServiceDnsConfig = Nothing
  , _serviceDiscoveryServiceHealthCheckConfig = Nothing
  , _serviceDiscoveryServiceHealthCheckCustomConfig = Nothing
  , _serviceDiscoveryServiceName = Nothing
  , _serviceDiscoveryServiceNamespaceId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-description
sdsDescription :: Lens' ServiceDiscoveryService (Maybe (Val Text))
sdsDescription = lens _serviceDiscoveryServiceDescription (\s a -> s { _serviceDiscoveryServiceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-dnsconfig
sdsDnsConfig :: Lens' ServiceDiscoveryService (Maybe ServiceDiscoveryServiceDnsConfig)
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-namespaceid
sdsNamespaceId :: Lens' ServiceDiscoveryService (Maybe (Val Text))
sdsNamespaceId = lens _serviceDiscoveryServiceNamespaceId (\s a -> s { _serviceDiscoveryServiceNamespaceId = a })
