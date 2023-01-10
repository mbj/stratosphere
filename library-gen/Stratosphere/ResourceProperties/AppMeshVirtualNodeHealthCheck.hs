
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeHealthCheck where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualNodeHealthCheck. See
-- 'appMeshVirtualNodeHealthCheck' for a more convenient constructor.
data AppMeshVirtualNodeHealthCheck =
  AppMeshVirtualNodeHealthCheck
  { _appMeshVirtualNodeHealthCheckHealthyThreshold :: Val Integer
  , _appMeshVirtualNodeHealthCheckIntervalMillis :: Val Integer
  , _appMeshVirtualNodeHealthCheckPath :: Maybe (Val Text)
  , _appMeshVirtualNodeHealthCheckPort :: Maybe (Val Integer)
  , _appMeshVirtualNodeHealthCheckProtocol :: Val Text
  , _appMeshVirtualNodeHealthCheckTimeoutMillis :: Val Integer
  , _appMeshVirtualNodeHealthCheckUnhealthyThreshold :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeHealthCheck where
  toJSON AppMeshVirtualNodeHealthCheck{..} =
    object $
    catMaybes
    [ (Just . ("HealthyThreshold",) . toJSON) _appMeshVirtualNodeHealthCheckHealthyThreshold
    , (Just . ("IntervalMillis",) . toJSON) _appMeshVirtualNodeHealthCheckIntervalMillis
    , fmap (("Path",) . toJSON) _appMeshVirtualNodeHealthCheckPath
    , fmap (("Port",) . toJSON) _appMeshVirtualNodeHealthCheckPort
    , (Just . ("Protocol",) . toJSON) _appMeshVirtualNodeHealthCheckProtocol
    , (Just . ("TimeoutMillis",) . toJSON) _appMeshVirtualNodeHealthCheckTimeoutMillis
    , (Just . ("UnhealthyThreshold",) . toJSON) _appMeshVirtualNodeHealthCheckUnhealthyThreshold
    ]

-- | Constructor for 'AppMeshVirtualNodeHealthCheck' containing required
-- fields as arguments.
appMeshVirtualNodeHealthCheck
  :: Val Integer -- ^ 'amvnhcHealthyThreshold'
  -> Val Integer -- ^ 'amvnhcIntervalMillis'
  -> Val Text -- ^ 'amvnhcProtocol'
  -> Val Integer -- ^ 'amvnhcTimeoutMillis'
  -> Val Integer -- ^ 'amvnhcUnhealthyThreshold'
  -> AppMeshVirtualNodeHealthCheck
appMeshVirtualNodeHealthCheck healthyThresholdarg intervalMillisarg protocolarg timeoutMillisarg unhealthyThresholdarg =
  AppMeshVirtualNodeHealthCheck
  { _appMeshVirtualNodeHealthCheckHealthyThreshold = healthyThresholdarg
  , _appMeshVirtualNodeHealthCheckIntervalMillis = intervalMillisarg
  , _appMeshVirtualNodeHealthCheckPath = Nothing
  , _appMeshVirtualNodeHealthCheckPort = Nothing
  , _appMeshVirtualNodeHealthCheckProtocol = protocolarg
  , _appMeshVirtualNodeHealthCheckTimeoutMillis = timeoutMillisarg
  , _appMeshVirtualNodeHealthCheckUnhealthyThreshold = unhealthyThresholdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-healthythreshold
amvnhcHealthyThreshold :: Lens' AppMeshVirtualNodeHealthCheck (Val Integer)
amvnhcHealthyThreshold = lens _appMeshVirtualNodeHealthCheckHealthyThreshold (\s a -> s { _appMeshVirtualNodeHealthCheckHealthyThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-intervalmillis
amvnhcIntervalMillis :: Lens' AppMeshVirtualNodeHealthCheck (Val Integer)
amvnhcIntervalMillis = lens _appMeshVirtualNodeHealthCheckIntervalMillis (\s a -> s { _appMeshVirtualNodeHealthCheckIntervalMillis = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-path
amvnhcPath :: Lens' AppMeshVirtualNodeHealthCheck (Maybe (Val Text))
amvnhcPath = lens _appMeshVirtualNodeHealthCheckPath (\s a -> s { _appMeshVirtualNodeHealthCheckPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-port
amvnhcPort :: Lens' AppMeshVirtualNodeHealthCheck (Maybe (Val Integer))
amvnhcPort = lens _appMeshVirtualNodeHealthCheckPort (\s a -> s { _appMeshVirtualNodeHealthCheckPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-protocol
amvnhcProtocol :: Lens' AppMeshVirtualNodeHealthCheck (Val Text)
amvnhcProtocol = lens _appMeshVirtualNodeHealthCheckProtocol (\s a -> s { _appMeshVirtualNodeHealthCheckProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-timeoutmillis
amvnhcTimeoutMillis :: Lens' AppMeshVirtualNodeHealthCheck (Val Integer)
amvnhcTimeoutMillis = lens _appMeshVirtualNodeHealthCheckTimeoutMillis (\s a -> s { _appMeshVirtualNodeHealthCheckTimeoutMillis = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-unhealthythreshold
amvnhcUnhealthyThreshold :: Lens' AppMeshVirtualNodeHealthCheck (Val Integer)
amvnhcUnhealthyThreshold = lens _appMeshVirtualNodeHealthCheckUnhealthyThreshold (\s a -> s { _appMeshVirtualNodeHealthCheckUnhealthyThreshold = a })
