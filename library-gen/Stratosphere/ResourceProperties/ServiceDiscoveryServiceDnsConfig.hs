{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html

module Stratosphere.ResourceProperties.ServiceDiscoveryServiceDnsConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ServiceDiscoveryServiceDnsRecord

-- | Full data type definition for ServiceDiscoveryServiceDnsConfig. See
-- 'serviceDiscoveryServiceDnsConfig' for a more convenient constructor.
data ServiceDiscoveryServiceDnsConfig =
  ServiceDiscoveryServiceDnsConfig
  { _serviceDiscoveryServiceDnsConfigDnsRecords :: [ServiceDiscoveryServiceDnsRecord]
  , _serviceDiscoveryServiceDnsConfigNamespaceId :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryServiceDnsConfig where
  toJSON ServiceDiscoveryServiceDnsConfig{..} =
    object $
    catMaybes
    [ (Just . ("DnsRecords",) . toJSON) _serviceDiscoveryServiceDnsConfigDnsRecords
    , (Just . ("NamespaceId",) . toJSON) _serviceDiscoveryServiceDnsConfigNamespaceId
    ]

instance FromJSON ServiceDiscoveryServiceDnsConfig where
  parseJSON (Object obj) =
    ServiceDiscoveryServiceDnsConfig <$>
      (obj .: "DnsRecords") <*>
      (obj .: "NamespaceId")
  parseJSON _ = mempty

-- | Constructor for 'ServiceDiscoveryServiceDnsConfig' containing required
-- fields as arguments.
serviceDiscoveryServiceDnsConfig
  :: [ServiceDiscoveryServiceDnsRecord] -- ^ 'sdsdcDnsRecords'
  -> Val Text -- ^ 'sdsdcNamespaceId'
  -> ServiceDiscoveryServiceDnsConfig
serviceDiscoveryServiceDnsConfig dnsRecordsarg namespaceIdarg =
  ServiceDiscoveryServiceDnsConfig
  { _serviceDiscoveryServiceDnsConfigDnsRecords = dnsRecordsarg
  , _serviceDiscoveryServiceDnsConfigNamespaceId = namespaceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-dnsrecords
sdsdcDnsRecords :: Lens' ServiceDiscoveryServiceDnsConfig [ServiceDiscoveryServiceDnsRecord]
sdsdcDnsRecords = lens _serviceDiscoveryServiceDnsConfigDnsRecords (\s a -> s { _serviceDiscoveryServiceDnsConfigDnsRecords = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-namespaceid
sdsdcNamespaceId :: Lens' ServiceDiscoveryServiceDnsConfig (Val Text)
sdsdcNamespaceId = lens _serviceDiscoveryServiceDnsConfigNamespaceId (\s a -> s { _serviceDiscoveryServiceDnsConfigNamespaceId = a })
