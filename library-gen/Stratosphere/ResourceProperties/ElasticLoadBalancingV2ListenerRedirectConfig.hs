
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRedirectConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRedirectConfig. See
-- 'elasticLoadBalancingV2ListenerRedirectConfig' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerRedirectConfig =
  ElasticLoadBalancingV2ListenerRedirectConfig
  { _elasticLoadBalancingV2ListenerRedirectConfigHost :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRedirectConfigPath :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRedirectConfigPort :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRedirectConfigProtocol :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRedirectConfigQuery :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRedirectConfigStatusCode :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRedirectConfig where
  toJSON ElasticLoadBalancingV2ListenerRedirectConfig{..} =
    object $
    catMaybes
    [ fmap (("Host",) . toJSON) _elasticLoadBalancingV2ListenerRedirectConfigHost
    , fmap (("Path",) . toJSON) _elasticLoadBalancingV2ListenerRedirectConfigPath
    , fmap (("Port",) . toJSON) _elasticLoadBalancingV2ListenerRedirectConfigPort
    , fmap (("Protocol",) . toJSON) _elasticLoadBalancingV2ListenerRedirectConfigProtocol
    , fmap (("Query",) . toJSON) _elasticLoadBalancingV2ListenerRedirectConfigQuery
    , (Just . ("StatusCode",) . toJSON) _elasticLoadBalancingV2ListenerRedirectConfigStatusCode
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRedirectConfig' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerRedirectConfig
  :: Val Text -- ^ 'elbvlrcStatusCode'
  -> ElasticLoadBalancingV2ListenerRedirectConfig
elasticLoadBalancingV2ListenerRedirectConfig statusCodearg =
  ElasticLoadBalancingV2ListenerRedirectConfig
  { _elasticLoadBalancingV2ListenerRedirectConfigHost = Nothing
  , _elasticLoadBalancingV2ListenerRedirectConfigPath = Nothing
  , _elasticLoadBalancingV2ListenerRedirectConfigPort = Nothing
  , _elasticLoadBalancingV2ListenerRedirectConfigProtocol = Nothing
  , _elasticLoadBalancingV2ListenerRedirectConfigQuery = Nothing
  , _elasticLoadBalancingV2ListenerRedirectConfigStatusCode = statusCodearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-host
elbvlrcHost :: Lens' ElasticLoadBalancingV2ListenerRedirectConfig (Maybe (Val Text))
elbvlrcHost = lens _elasticLoadBalancingV2ListenerRedirectConfigHost (\s a -> s { _elasticLoadBalancingV2ListenerRedirectConfigHost = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-path
elbvlrcPath :: Lens' ElasticLoadBalancingV2ListenerRedirectConfig (Maybe (Val Text))
elbvlrcPath = lens _elasticLoadBalancingV2ListenerRedirectConfigPath (\s a -> s { _elasticLoadBalancingV2ListenerRedirectConfigPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-port
elbvlrcPort :: Lens' ElasticLoadBalancingV2ListenerRedirectConfig (Maybe (Val Text))
elbvlrcPort = lens _elasticLoadBalancingV2ListenerRedirectConfigPort (\s a -> s { _elasticLoadBalancingV2ListenerRedirectConfigPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-protocol
elbvlrcProtocol :: Lens' ElasticLoadBalancingV2ListenerRedirectConfig (Maybe (Val Text))
elbvlrcProtocol = lens _elasticLoadBalancingV2ListenerRedirectConfigProtocol (\s a -> s { _elasticLoadBalancingV2ListenerRedirectConfigProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-query
elbvlrcQuery :: Lens' ElasticLoadBalancingV2ListenerRedirectConfig (Maybe (Val Text))
elbvlrcQuery = lens _elasticLoadBalancingV2ListenerRedirectConfigQuery (\s a -> s { _elasticLoadBalancingV2ListenerRedirectConfigQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-statuscode
elbvlrcStatusCode :: Lens' ElasticLoadBalancingV2ListenerRedirectConfig (Val Text)
elbvlrcStatusCode = lens _elasticLoadBalancingV2ListenerRedirectConfigStatusCode (\s a -> s { _elasticLoadBalancingV2ListenerRedirectConfigStatusCode = a })
