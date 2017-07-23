{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html

module Stratosphere.Resources.ElasticLoadBalancingV2Listener where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificate
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAction

-- | Full data type definition for ElasticLoadBalancingV2Listener. See
-- 'elasticLoadBalancingV2Listener' for a more convenient constructor.
data ElasticLoadBalancingV2Listener =
  ElasticLoadBalancingV2Listener
  { _elasticLoadBalancingV2ListenerCertificates :: Maybe [ElasticLoadBalancingV2ListenerCertificate]
  , _elasticLoadBalancingV2ListenerDefaultActions :: [ElasticLoadBalancingV2ListenerAction]
  , _elasticLoadBalancingV2ListenerLoadBalancerArn :: Val Text
  , _elasticLoadBalancingV2ListenerPort :: Val Integer
  , _elasticLoadBalancingV2ListenerProtocol :: Val Text
  , _elasticLoadBalancingV2ListenerSslPolicy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2Listener where
  toJSON ElasticLoadBalancingV2Listener{..} =
    object $
    catMaybes
    [ fmap (("Certificates",) . toJSON) _elasticLoadBalancingV2ListenerCertificates
    , (Just . ("DefaultActions",) . toJSON) _elasticLoadBalancingV2ListenerDefaultActions
    , (Just . ("LoadBalancerArn",) . toJSON) _elasticLoadBalancingV2ListenerLoadBalancerArn
    , (Just . ("Port",) . toJSON . fmap Integer') _elasticLoadBalancingV2ListenerPort
    , (Just . ("Protocol",) . toJSON) _elasticLoadBalancingV2ListenerProtocol
    , fmap (("SslPolicy",) . toJSON) _elasticLoadBalancingV2ListenerSslPolicy
    ]

instance FromJSON ElasticLoadBalancingV2Listener where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2Listener <$>
      (obj .:? "Certificates") <*>
      (obj .: "DefaultActions") <*>
      (obj .: "LoadBalancerArn") <*>
      fmap (fmap unInteger') (obj .: "Port") <*>
      (obj .: "Protocol") <*>
      (obj .:? "SslPolicy")
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2Listener' containing required
-- fields as arguments.
elasticLoadBalancingV2Listener
  :: [ElasticLoadBalancingV2ListenerAction] -- ^ 'elbvlDefaultActions'
  -> Val Text -- ^ 'elbvlLoadBalancerArn'
  -> Val Integer -- ^ 'elbvlPort'
  -> Val Text -- ^ 'elbvlProtocol'
  -> ElasticLoadBalancingV2Listener
elasticLoadBalancingV2Listener defaultActionsarg loadBalancerArnarg portarg protocolarg =
  ElasticLoadBalancingV2Listener
  { _elasticLoadBalancingV2ListenerCertificates = Nothing
  , _elasticLoadBalancingV2ListenerDefaultActions = defaultActionsarg
  , _elasticLoadBalancingV2ListenerLoadBalancerArn = loadBalancerArnarg
  , _elasticLoadBalancingV2ListenerPort = portarg
  , _elasticLoadBalancingV2ListenerProtocol = protocolarg
  , _elasticLoadBalancingV2ListenerSslPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-certificates
elbvlCertificates :: Lens' ElasticLoadBalancingV2Listener (Maybe [ElasticLoadBalancingV2ListenerCertificate])
elbvlCertificates = lens _elasticLoadBalancingV2ListenerCertificates (\s a -> s { _elasticLoadBalancingV2ListenerCertificates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-defaultactions
elbvlDefaultActions :: Lens' ElasticLoadBalancingV2Listener [ElasticLoadBalancingV2ListenerAction]
elbvlDefaultActions = lens _elasticLoadBalancingV2ListenerDefaultActions (\s a -> s { _elasticLoadBalancingV2ListenerDefaultActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-loadbalancerarn
elbvlLoadBalancerArn :: Lens' ElasticLoadBalancingV2Listener (Val Text)
elbvlLoadBalancerArn = lens _elasticLoadBalancingV2ListenerLoadBalancerArn (\s a -> s { _elasticLoadBalancingV2ListenerLoadBalancerArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-port
elbvlPort :: Lens' ElasticLoadBalancingV2Listener (Val Integer)
elbvlPort = lens _elasticLoadBalancingV2ListenerPort (\s a -> s { _elasticLoadBalancingV2ListenerPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-protocol
elbvlProtocol :: Lens' ElasticLoadBalancingV2Listener (Val Text)
elbvlProtocol = lens _elasticLoadBalancingV2ListenerProtocol (\s a -> s { _elasticLoadBalancingV2ListenerProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listener.html#cfn-elasticloadbalancingv2-listener-sslpolicy
elbvlSslPolicy :: Lens' ElasticLoadBalancingV2Listener (Maybe (Val Text))
elbvlSslPolicy = lens _elasticLoadBalancingV2ListenerSslPolicy (\s a -> s { _elasticLoadBalancingV2ListenerSslPolicy = a })
