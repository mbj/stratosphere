
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTimeout where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeGrpcTimeout
import Stratosphere.ResourceProperties.AppMeshVirtualNodeHttpTimeout
import Stratosphere.ResourceProperties.AppMeshVirtualNodeTcpTimeout

-- | Full data type definition for AppMeshVirtualNodeListenerTimeout. See
-- 'appMeshVirtualNodeListenerTimeout' for a more convenient constructor.
data AppMeshVirtualNodeListenerTimeout =
  AppMeshVirtualNodeListenerTimeout
  { _appMeshVirtualNodeListenerTimeoutGRPC :: Maybe AppMeshVirtualNodeGrpcTimeout
  , _appMeshVirtualNodeListenerTimeoutHTTP :: Maybe AppMeshVirtualNodeHttpTimeout
  , _appMeshVirtualNodeListenerTimeoutHTTP2 :: Maybe AppMeshVirtualNodeHttpTimeout
  , _appMeshVirtualNodeListenerTimeoutTCP :: Maybe AppMeshVirtualNodeTcpTimeout
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeListenerTimeout where
  toJSON AppMeshVirtualNodeListenerTimeout{..} =
    object $
    catMaybes
    [ fmap (("GRPC",) . toJSON) _appMeshVirtualNodeListenerTimeoutGRPC
    , fmap (("HTTP",) . toJSON) _appMeshVirtualNodeListenerTimeoutHTTP
    , fmap (("HTTP2",) . toJSON) _appMeshVirtualNodeListenerTimeoutHTTP2
    , fmap (("TCP",) . toJSON) _appMeshVirtualNodeListenerTimeoutTCP
    ]

-- | Constructor for 'AppMeshVirtualNodeListenerTimeout' containing required
-- fields as arguments.
appMeshVirtualNodeListenerTimeout
  :: AppMeshVirtualNodeListenerTimeout
appMeshVirtualNodeListenerTimeout  =
  AppMeshVirtualNodeListenerTimeout
  { _appMeshVirtualNodeListenerTimeoutGRPC = Nothing
  , _appMeshVirtualNodeListenerTimeoutHTTP = Nothing
  , _appMeshVirtualNodeListenerTimeoutHTTP2 = Nothing
  , _appMeshVirtualNodeListenerTimeoutTCP = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-grpc
amvnltGRPC :: Lens' AppMeshVirtualNodeListenerTimeout (Maybe AppMeshVirtualNodeGrpcTimeout)
amvnltGRPC = lens _appMeshVirtualNodeListenerTimeoutGRPC (\s a -> s { _appMeshVirtualNodeListenerTimeoutGRPC = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-http
amvnltHTTP :: Lens' AppMeshVirtualNodeListenerTimeout (Maybe AppMeshVirtualNodeHttpTimeout)
amvnltHTTP = lens _appMeshVirtualNodeListenerTimeoutHTTP (\s a -> s { _appMeshVirtualNodeListenerTimeoutHTTP = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-http2
amvnltHTTP2 :: Lens' AppMeshVirtualNodeListenerTimeout (Maybe AppMeshVirtualNodeHttpTimeout)
amvnltHTTP2 = lens _appMeshVirtualNodeListenerTimeoutHTTP2 (\s a -> s { _appMeshVirtualNodeListenerTimeoutHTTP2 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertimeout.html#cfn-appmesh-virtualnode-listenertimeout-tcp
amvnltTCP :: Lens' AppMeshVirtualNodeListenerTimeout (Maybe AppMeshVirtualNodeTcpTimeout)
amvnltTCP = lens _appMeshVirtualNodeListenerTimeoutTCP (\s a -> s { _appMeshVirtualNodeListenerTimeoutTCP = a })
