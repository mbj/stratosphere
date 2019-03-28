{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeDnsServiceDiscovery where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualNodeDnsServiceDiscovery. See
-- 'appMeshVirtualNodeDnsServiceDiscovery' for a more convenient
-- constructor.
data AppMeshVirtualNodeDnsServiceDiscovery =
  AppMeshVirtualNodeDnsServiceDiscovery
  { _appMeshVirtualNodeDnsServiceDiscoveryHostname :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeDnsServiceDiscovery where
  toJSON AppMeshVirtualNodeDnsServiceDiscovery{..} =
    object $
    catMaybes
    [ (Just . ("Hostname",) . toJSON) _appMeshVirtualNodeDnsServiceDiscoveryHostname
    ]

-- | Constructor for 'AppMeshVirtualNodeDnsServiceDiscovery' containing
-- required fields as arguments.
appMeshVirtualNodeDnsServiceDiscovery
  :: Val Text -- ^ 'amvndsdHostname'
  -> AppMeshVirtualNodeDnsServiceDiscovery
appMeshVirtualNodeDnsServiceDiscovery hostnamearg =
  AppMeshVirtualNodeDnsServiceDiscovery
  { _appMeshVirtualNodeDnsServiceDiscoveryHostname = hostnamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html#cfn-appmesh-virtualnode-dnsservicediscovery-hostname
amvndsdHostname :: Lens' AppMeshVirtualNodeDnsServiceDiscovery (Val Text)
amvndsdHostname = lens _appMeshVirtualNodeDnsServiceDiscoveryHostname (\s a -> s { _appMeshVirtualNodeDnsServiceDiscoveryHostname = a })
