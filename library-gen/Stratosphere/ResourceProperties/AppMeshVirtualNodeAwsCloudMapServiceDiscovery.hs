
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeAwsCloudMapServiceDiscovery where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeAwsCloudMapInstanceAttribute

-- | Full data type definition for
-- AppMeshVirtualNodeAwsCloudMapServiceDiscovery. See
-- 'appMeshVirtualNodeAwsCloudMapServiceDiscovery' for a more convenient
-- constructor.
data AppMeshVirtualNodeAwsCloudMapServiceDiscovery =
  AppMeshVirtualNodeAwsCloudMapServiceDiscovery
  { _appMeshVirtualNodeAwsCloudMapServiceDiscoveryAttributes :: Maybe [AppMeshVirtualNodeAwsCloudMapInstanceAttribute]
  , _appMeshVirtualNodeAwsCloudMapServiceDiscoveryNamespaceName :: Val Text
  , _appMeshVirtualNodeAwsCloudMapServiceDiscoveryServiceName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeAwsCloudMapServiceDiscovery where
  toJSON AppMeshVirtualNodeAwsCloudMapServiceDiscovery{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _appMeshVirtualNodeAwsCloudMapServiceDiscoveryAttributes
    , (Just . ("NamespaceName",) . toJSON) _appMeshVirtualNodeAwsCloudMapServiceDiscoveryNamespaceName
    , (Just . ("ServiceName",) . toJSON) _appMeshVirtualNodeAwsCloudMapServiceDiscoveryServiceName
    ]

-- | Constructor for 'AppMeshVirtualNodeAwsCloudMapServiceDiscovery'
-- containing required fields as arguments.
appMeshVirtualNodeAwsCloudMapServiceDiscovery
  :: Val Text -- ^ 'amvnacmsdNamespaceName'
  -> Val Text -- ^ 'amvnacmsdServiceName'
  -> AppMeshVirtualNodeAwsCloudMapServiceDiscovery
appMeshVirtualNodeAwsCloudMapServiceDiscovery namespaceNamearg serviceNamearg =
  AppMeshVirtualNodeAwsCloudMapServiceDiscovery
  { _appMeshVirtualNodeAwsCloudMapServiceDiscoveryAttributes = Nothing
  , _appMeshVirtualNodeAwsCloudMapServiceDiscoveryNamespaceName = namespaceNamearg
  , _appMeshVirtualNodeAwsCloudMapServiceDiscoveryServiceName = serviceNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-attributes
amvnacmsdAttributes :: Lens' AppMeshVirtualNodeAwsCloudMapServiceDiscovery (Maybe [AppMeshVirtualNodeAwsCloudMapInstanceAttribute])
amvnacmsdAttributes = lens _appMeshVirtualNodeAwsCloudMapServiceDiscoveryAttributes (\s a -> s { _appMeshVirtualNodeAwsCloudMapServiceDiscoveryAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-namespacename
amvnacmsdNamespaceName :: Lens' AppMeshVirtualNodeAwsCloudMapServiceDiscovery (Val Text)
amvnacmsdNamespaceName = lens _appMeshVirtualNodeAwsCloudMapServiceDiscoveryNamespaceName (\s a -> s { _appMeshVirtualNodeAwsCloudMapServiceDiscoveryNamespaceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-servicename
amvnacmsdServiceName :: Lens' AppMeshVirtualNodeAwsCloudMapServiceDiscovery (Val Text)
amvnacmsdServiceName = lens _appMeshVirtualNodeAwsCloudMapServiceDiscoveryServiceName (\s a -> s { _appMeshVirtualNodeAwsCloudMapServiceDiscoveryServiceName = a })
