{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeServiceDiscovery where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeDnsServiceDiscovery

-- | Full data type definition for AppMeshVirtualNodeServiceDiscovery. See
-- 'appMeshVirtualNodeServiceDiscovery' for a more convenient constructor.
data AppMeshVirtualNodeServiceDiscovery =
  AppMeshVirtualNodeServiceDiscovery
  { _appMeshVirtualNodeServiceDiscoveryDNS :: AppMeshVirtualNodeDnsServiceDiscovery
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeServiceDiscovery where
  toJSON AppMeshVirtualNodeServiceDiscovery{..} =
    object $
    catMaybes
    [ (Just . ("DNS",) . toJSON) _appMeshVirtualNodeServiceDiscoveryDNS
    ]

-- | Constructor for 'AppMeshVirtualNodeServiceDiscovery' containing required
-- fields as arguments.
appMeshVirtualNodeServiceDiscovery
  :: AppMeshVirtualNodeDnsServiceDiscovery -- ^ 'amvnsdDNS'
  -> AppMeshVirtualNodeServiceDiscovery
appMeshVirtualNodeServiceDiscovery dNSarg =
  AppMeshVirtualNodeServiceDiscovery
  { _appMeshVirtualNodeServiceDiscoveryDNS = dNSarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html#cfn-appmesh-virtualnode-servicediscovery-dns
amvnsdDNS :: Lens' AppMeshVirtualNodeServiceDiscovery AppMeshVirtualNodeDnsServiceDiscovery
amvnsdDNS = lens _appMeshVirtualNodeServiceDiscoveryDNS (\s a -> s { _appMeshVirtualNodeServiceDiscoveryDNS = a })
