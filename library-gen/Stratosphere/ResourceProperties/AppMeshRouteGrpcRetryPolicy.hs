{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcretrypolicy.html

module Stratosphere.ResourceProperties.AppMeshRouteGrpcRetryPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteDuration

-- | Full data type definition for AppMeshRouteGrpcRetryPolicy. See
-- 'appMeshRouteGrpcRetryPolicy' for a more convenient constructor.
data AppMeshRouteGrpcRetryPolicy =
  AppMeshRouteGrpcRetryPolicy
  { _appMeshRouteGrpcRetryPolicyGrpcRetryEvents :: Maybe (ValList Text)
  , _appMeshRouteGrpcRetryPolicyHttpRetryEvents :: Maybe (ValList Text)
  , _appMeshRouteGrpcRetryPolicyMaxRetries :: Val Integer
  , _appMeshRouteGrpcRetryPolicyPerRetryTimeout :: AppMeshRouteDuration
  , _appMeshRouteGrpcRetryPolicyTcpRetryEvents :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteGrpcRetryPolicy where
  toJSON AppMeshRouteGrpcRetryPolicy{..} =
    object $
    catMaybes
    [ fmap (("GrpcRetryEvents",) . toJSON) _appMeshRouteGrpcRetryPolicyGrpcRetryEvents
    , fmap (("HttpRetryEvents",) . toJSON) _appMeshRouteGrpcRetryPolicyHttpRetryEvents
    , (Just . ("MaxRetries",) . toJSON) _appMeshRouteGrpcRetryPolicyMaxRetries
    , (Just . ("PerRetryTimeout",) . toJSON) _appMeshRouteGrpcRetryPolicyPerRetryTimeout
    , fmap (("TcpRetryEvents",) . toJSON) _appMeshRouteGrpcRetryPolicyTcpRetryEvents
    ]

-- | Constructor for 'AppMeshRouteGrpcRetryPolicy' containing required fields
-- as arguments.
appMeshRouteGrpcRetryPolicy
  :: Val Integer -- ^ 'amrgrpMaxRetries'
  -> AppMeshRouteDuration -- ^ 'amrgrpPerRetryTimeout'
  -> AppMeshRouteGrpcRetryPolicy
appMeshRouteGrpcRetryPolicy maxRetriesarg perRetryTimeoutarg =
  AppMeshRouteGrpcRetryPolicy
  { _appMeshRouteGrpcRetryPolicyGrpcRetryEvents = Nothing
  , _appMeshRouteGrpcRetryPolicyHttpRetryEvents = Nothing
  , _appMeshRouteGrpcRetryPolicyMaxRetries = maxRetriesarg
  , _appMeshRouteGrpcRetryPolicyPerRetryTimeout = perRetryTimeoutarg
  , _appMeshRouteGrpcRetryPolicyTcpRetryEvents = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcretrypolicy.html#cfn-appmesh-route-grpcretrypolicy-grpcretryevents
amrgrpGrpcRetryEvents :: Lens' AppMeshRouteGrpcRetryPolicy (Maybe (ValList Text))
amrgrpGrpcRetryEvents = lens _appMeshRouteGrpcRetryPolicyGrpcRetryEvents (\s a -> s { _appMeshRouteGrpcRetryPolicyGrpcRetryEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcretrypolicy.html#cfn-appmesh-route-grpcretrypolicy-httpretryevents
amrgrpHttpRetryEvents :: Lens' AppMeshRouteGrpcRetryPolicy (Maybe (ValList Text))
amrgrpHttpRetryEvents = lens _appMeshRouteGrpcRetryPolicyHttpRetryEvents (\s a -> s { _appMeshRouteGrpcRetryPolicyHttpRetryEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcretrypolicy.html#cfn-appmesh-route-grpcretrypolicy-maxretries
amrgrpMaxRetries :: Lens' AppMeshRouteGrpcRetryPolicy (Val Integer)
amrgrpMaxRetries = lens _appMeshRouteGrpcRetryPolicyMaxRetries (\s a -> s { _appMeshRouteGrpcRetryPolicyMaxRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcretrypolicy.html#cfn-appmesh-route-grpcretrypolicy-perretrytimeout
amrgrpPerRetryTimeout :: Lens' AppMeshRouteGrpcRetryPolicy AppMeshRouteDuration
amrgrpPerRetryTimeout = lens _appMeshRouteGrpcRetryPolicyPerRetryTimeout (\s a -> s { _appMeshRouteGrpcRetryPolicyPerRetryTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcretrypolicy.html#cfn-appmesh-route-grpcretrypolicy-tcpretryevents
amrgrpTcpRetryEvents :: Lens' AppMeshRouteGrpcRetryPolicy (Maybe (ValList Text))
amrgrpTcpRetryEvents = lens _appMeshRouteGrpcRetryPolicyTcpRetryEvents (\s a -> s { _appMeshRouteGrpcRetryPolicyTcpRetryEvents = a })
