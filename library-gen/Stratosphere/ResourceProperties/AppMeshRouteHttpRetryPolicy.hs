
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRetryPolicy where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteDuration

-- | Full data type definition for AppMeshRouteHttpRetryPolicy. See
-- 'appMeshRouteHttpRetryPolicy' for a more convenient constructor.
data AppMeshRouteHttpRetryPolicy =
  AppMeshRouteHttpRetryPolicy
  { _appMeshRouteHttpRetryPolicyHttpRetryEvents :: Maybe (ValList Text)
  , _appMeshRouteHttpRetryPolicyMaxRetries :: Val Integer
  , _appMeshRouteHttpRetryPolicyPerRetryTimeout :: AppMeshRouteDuration
  , _appMeshRouteHttpRetryPolicyTcpRetryEvents :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRetryPolicy where
  toJSON AppMeshRouteHttpRetryPolicy{..} =
    object $
    catMaybes
    [ fmap (("HttpRetryEvents",) . toJSON) _appMeshRouteHttpRetryPolicyHttpRetryEvents
    , (Just . ("MaxRetries",) . toJSON) _appMeshRouteHttpRetryPolicyMaxRetries
    , (Just . ("PerRetryTimeout",) . toJSON) _appMeshRouteHttpRetryPolicyPerRetryTimeout
    , fmap (("TcpRetryEvents",) . toJSON) _appMeshRouteHttpRetryPolicyTcpRetryEvents
    ]

-- | Constructor for 'AppMeshRouteHttpRetryPolicy' containing required fields
-- as arguments.
appMeshRouteHttpRetryPolicy
  :: Val Integer -- ^ 'amrhrpMaxRetries'
  -> AppMeshRouteDuration -- ^ 'amrhrpPerRetryTimeout'
  -> AppMeshRouteHttpRetryPolicy
appMeshRouteHttpRetryPolicy maxRetriesarg perRetryTimeoutarg =
  AppMeshRouteHttpRetryPolicy
  { _appMeshRouteHttpRetryPolicyHttpRetryEvents = Nothing
  , _appMeshRouteHttpRetryPolicyMaxRetries = maxRetriesarg
  , _appMeshRouteHttpRetryPolicyPerRetryTimeout = perRetryTimeoutarg
  , _appMeshRouteHttpRetryPolicyTcpRetryEvents = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-httpretryevents
amrhrpHttpRetryEvents :: Lens' AppMeshRouteHttpRetryPolicy (Maybe (ValList Text))
amrhrpHttpRetryEvents = lens _appMeshRouteHttpRetryPolicyHttpRetryEvents (\s a -> s { _appMeshRouteHttpRetryPolicyHttpRetryEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-maxretries
amrhrpMaxRetries :: Lens' AppMeshRouteHttpRetryPolicy (Val Integer)
amrhrpMaxRetries = lens _appMeshRouteHttpRetryPolicyMaxRetries (\s a -> s { _appMeshRouteHttpRetryPolicyMaxRetries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-perretrytimeout
amrhrpPerRetryTimeout :: Lens' AppMeshRouteHttpRetryPolicy AppMeshRouteDuration
amrhrpPerRetryTimeout = lens _appMeshRouteHttpRetryPolicyPerRetryTimeout (\s a -> s { _appMeshRouteHttpRetryPolicyPerRetryTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-tcpretryevents
amrhrpTcpRetryEvents :: Lens' AppMeshRouteHttpRetryPolicy (Maybe (ValList Text))
amrhrpTcpRetryEvents = lens _appMeshRouteHttpRetryPolicyTcpRetryEvents (\s a -> s { _appMeshRouteHttpRetryPolicyTcpRetryEvents = a })
