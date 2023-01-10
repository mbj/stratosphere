
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html

module Stratosphere.ResourceProperties.ServiceDiscoveryServiceDnsRecord where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceDiscoveryServiceDnsRecord. See
-- 'serviceDiscoveryServiceDnsRecord' for a more convenient constructor.
data ServiceDiscoveryServiceDnsRecord =
  ServiceDiscoveryServiceDnsRecord
  { _serviceDiscoveryServiceDnsRecordTTL :: Val Double
  , _serviceDiscoveryServiceDnsRecordType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceDiscoveryServiceDnsRecord where
  toJSON ServiceDiscoveryServiceDnsRecord{..} =
    object $
    catMaybes
    [ (Just . ("TTL",) . toJSON) _serviceDiscoveryServiceDnsRecordTTL
    , (Just . ("Type",) . toJSON) _serviceDiscoveryServiceDnsRecordType
    ]

-- | Constructor for 'ServiceDiscoveryServiceDnsRecord' containing required
-- fields as arguments.
serviceDiscoveryServiceDnsRecord
  :: Val Double -- ^ 'sdsdrTTL'
  -> Val Text -- ^ 'sdsdrType'
  -> ServiceDiscoveryServiceDnsRecord
serviceDiscoveryServiceDnsRecord tTLarg typearg =
  ServiceDiscoveryServiceDnsRecord
  { _serviceDiscoveryServiceDnsRecordTTL = tTLarg
  , _serviceDiscoveryServiceDnsRecordType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-ttl
sdsdrTTL :: Lens' ServiceDiscoveryServiceDnsRecord (Val Double)
sdsdrTTL = lens _serviceDiscoveryServiceDnsRecordTTL (\s a -> s { _serviceDiscoveryServiceDnsRecordTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-type
sdsdrType :: Lens' ServiceDiscoveryServiceDnsRecord (Val Text)
sdsdrType = lens _serviceDiscoveryServiceDnsRecordType (\s a -> s { _serviceDiscoveryServiceDnsRecordType = a })
