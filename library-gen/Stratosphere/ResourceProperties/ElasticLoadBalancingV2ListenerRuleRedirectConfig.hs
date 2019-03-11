{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleRedirectConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleRedirectConfig. See
-- 'elasticLoadBalancingV2ListenerRuleRedirectConfig' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerRuleRedirectConfig =
  ElasticLoadBalancingV2ListenerRuleRedirectConfig
  { _elasticLoadBalancingV2ListenerRuleRedirectConfigHost :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigPath :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigPort :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigProtocol :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigQuery :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigStatusCode :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleRedirectConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleRedirectConfig{..} =
    object $
    catMaybes
    [ fmap (("Host",) . toJSON) _elasticLoadBalancingV2ListenerRuleRedirectConfigHost
    , fmap (("Path",) . toJSON) _elasticLoadBalancingV2ListenerRuleRedirectConfigPath
    , fmap (("Port",) . toJSON) _elasticLoadBalancingV2ListenerRuleRedirectConfigPort
    , fmap (("Protocol",) . toJSON) _elasticLoadBalancingV2ListenerRuleRedirectConfigProtocol
    , fmap (("Query",) . toJSON) _elasticLoadBalancingV2ListenerRuleRedirectConfigQuery
    , (Just . ("StatusCode",) . toJSON) _elasticLoadBalancingV2ListenerRuleRedirectConfigStatusCode
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleRedirectConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleRedirectConfig
  :: Val Text -- ^ 'elbvlrrcStatusCode'
  -> ElasticLoadBalancingV2ListenerRuleRedirectConfig
elasticLoadBalancingV2ListenerRuleRedirectConfig statusCodearg =
  ElasticLoadBalancingV2ListenerRuleRedirectConfig
  { _elasticLoadBalancingV2ListenerRuleRedirectConfigHost = Nothing
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigPath = Nothing
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigPort = Nothing
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigProtocol = Nothing
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigQuery = Nothing
  , _elasticLoadBalancingV2ListenerRuleRedirectConfigStatusCode = statusCodearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-host
elbvlrrcHost :: Lens' ElasticLoadBalancingV2ListenerRuleRedirectConfig (Maybe (Val Text))
elbvlrrcHost = lens _elasticLoadBalancingV2ListenerRuleRedirectConfigHost (\s a -> s { _elasticLoadBalancingV2ListenerRuleRedirectConfigHost = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-path
elbvlrrcPath :: Lens' ElasticLoadBalancingV2ListenerRuleRedirectConfig (Maybe (Val Text))
elbvlrrcPath = lens _elasticLoadBalancingV2ListenerRuleRedirectConfigPath (\s a -> s { _elasticLoadBalancingV2ListenerRuleRedirectConfigPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-port
elbvlrrcPort :: Lens' ElasticLoadBalancingV2ListenerRuleRedirectConfig (Maybe (Val Text))
elbvlrrcPort = lens _elasticLoadBalancingV2ListenerRuleRedirectConfigPort (\s a -> s { _elasticLoadBalancingV2ListenerRuleRedirectConfigPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-protocol
elbvlrrcProtocol :: Lens' ElasticLoadBalancingV2ListenerRuleRedirectConfig (Maybe (Val Text))
elbvlrrcProtocol = lens _elasticLoadBalancingV2ListenerRuleRedirectConfigProtocol (\s a -> s { _elasticLoadBalancingV2ListenerRuleRedirectConfigProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-query
elbvlrrcQuery :: Lens' ElasticLoadBalancingV2ListenerRuleRedirectConfig (Maybe (Val Text))
elbvlrrcQuery = lens _elasticLoadBalancingV2ListenerRuleRedirectConfigQuery (\s a -> s { _elasticLoadBalancingV2ListenerRuleRedirectConfigQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-redirectconfig.html#cfn-elasticloadbalancingv2-listenerrule-redirectconfig-statuscode
elbvlrrcStatusCode :: Lens' ElasticLoadBalancingV2ListenerRuleRedirectConfig (Val Text)
elbvlrrcStatusCode = lens _elasticLoadBalancingV2ListenerRuleRedirectConfigStatusCode (\s a -> s { _elasticLoadBalancingV2ListenerRuleRedirectConfigStatusCode = a })
