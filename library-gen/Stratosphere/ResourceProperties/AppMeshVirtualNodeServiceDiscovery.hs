
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeServiceDiscovery where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeAwsCloudMapServiceDiscovery
import Stratosphere.ResourceProperties.AppMeshVirtualNodeDnsServiceDiscovery

-- | Full data type definition for AppMeshVirtualNodeServiceDiscovery. See
-- 'appMeshVirtualNodeServiceDiscovery' for a more convenient constructor.
data AppMeshVirtualNodeServiceDiscovery =
  AppMeshVirtualNodeServiceDiscovery
  { _appMeshVirtualNodeServiceDiscoveryAWSCloudMap :: Maybe AppMeshVirtualNodeAwsCloudMapServiceDiscovery
  , _appMeshVirtualNodeServiceDiscoveryDNS :: Maybe AppMeshVirtualNodeDnsServiceDiscovery
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeServiceDiscovery where
  toJSON AppMeshVirtualNodeServiceDiscovery{..} =
    object $
    catMaybes
    [ fmap (("AWSCloudMap",) . toJSON) _appMeshVirtualNodeServiceDiscoveryAWSCloudMap
    , fmap (("DNS",) . toJSON) _appMeshVirtualNodeServiceDiscoveryDNS
    ]

-- | Constructor for 'AppMeshVirtualNodeServiceDiscovery' containing required
-- fields as arguments.
appMeshVirtualNodeServiceDiscovery
  :: AppMeshVirtualNodeServiceDiscovery
appMeshVirtualNodeServiceDiscovery  =
  AppMeshVirtualNodeServiceDiscovery
  { _appMeshVirtualNodeServiceDiscoveryAWSCloudMap = Nothing
  , _appMeshVirtualNodeServiceDiscoveryDNS = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html#cfn-appmesh-virtualnode-servicediscovery-awscloudmap
amvnsdAWSCloudMap :: Lens' AppMeshVirtualNodeServiceDiscovery (Maybe AppMeshVirtualNodeAwsCloudMapServiceDiscovery)
amvnsdAWSCloudMap = lens _appMeshVirtualNodeServiceDiscoveryAWSCloudMap (\s a -> s { _appMeshVirtualNodeServiceDiscoveryAWSCloudMap = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html#cfn-appmesh-virtualnode-servicediscovery-dns
amvnsdDNS :: Lens' AppMeshVirtualNodeServiceDiscovery (Maybe AppMeshVirtualNodeDnsServiceDiscovery)
amvnsdDNS = lens _appMeshVirtualNodeServiceDiscoveryDNS (\s a -> s { _appMeshVirtualNodeServiceDiscoveryDNS = a })
