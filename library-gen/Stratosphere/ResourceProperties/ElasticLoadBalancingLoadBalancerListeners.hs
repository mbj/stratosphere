{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerListeners where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingLoadBalancerListeners.
-- See 'elasticLoadBalancingLoadBalancerListeners' for a more convenient
-- constructor.
data ElasticLoadBalancingLoadBalancerListeners =
  ElasticLoadBalancingLoadBalancerListeners
  { _elasticLoadBalancingLoadBalancerListenersInstancePort :: Val Text
  , _elasticLoadBalancingLoadBalancerListenersInstanceProtocol :: Maybe (Val Text)
  , _elasticLoadBalancingLoadBalancerListenersLoadBalancerPort :: Val Text
  , _elasticLoadBalancingLoadBalancerListenersPolicyNames :: Maybe [Val Text]
  , _elasticLoadBalancingLoadBalancerListenersProtocol :: Val Text
  , _elasticLoadBalancingLoadBalancerListenersSSLCertificateId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerListeners where
  toJSON ElasticLoadBalancingLoadBalancerListeners{..} =
    object $
    catMaybes
    [ Just ("InstancePort" .= _elasticLoadBalancingLoadBalancerListenersInstancePort)
    , ("InstanceProtocol" .=) <$> _elasticLoadBalancingLoadBalancerListenersInstanceProtocol
    , Just ("LoadBalancerPort" .= _elasticLoadBalancingLoadBalancerListenersLoadBalancerPort)
    , ("PolicyNames" .=) <$> _elasticLoadBalancingLoadBalancerListenersPolicyNames
    , Just ("Protocol" .= _elasticLoadBalancingLoadBalancerListenersProtocol)
    , ("SSLCertificateId" .=) <$> _elasticLoadBalancingLoadBalancerListenersSSLCertificateId
    ]

instance FromJSON ElasticLoadBalancingLoadBalancerListeners where
  parseJSON (Object obj) =
    ElasticLoadBalancingLoadBalancerListeners <$>
      obj .: "InstancePort" <*>
      obj .:? "InstanceProtocol" <*>
      obj .: "LoadBalancerPort" <*>
      obj .:? "PolicyNames" <*>
      obj .: "Protocol" <*>
      obj .:? "SSLCertificateId"
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingLoadBalancerListeners' containing
-- required fields as arguments.
elasticLoadBalancingLoadBalancerListeners
  :: Val Text -- ^ 'elblblInstancePort'
  -> Val Text -- ^ 'elblblLoadBalancerPort'
  -> Val Text -- ^ 'elblblProtocol'
  -> ElasticLoadBalancingLoadBalancerListeners
elasticLoadBalancingLoadBalancerListeners instancePortarg loadBalancerPortarg protocolarg =
  ElasticLoadBalancingLoadBalancerListeners
  { _elasticLoadBalancingLoadBalancerListenersInstancePort = instancePortarg
  , _elasticLoadBalancingLoadBalancerListenersInstanceProtocol = Nothing
  , _elasticLoadBalancingLoadBalancerListenersLoadBalancerPort = loadBalancerPortarg
  , _elasticLoadBalancingLoadBalancerListenersPolicyNames = Nothing
  , _elasticLoadBalancingLoadBalancerListenersProtocol = protocolarg
  , _elasticLoadBalancingLoadBalancerListenersSSLCertificateId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceport
elblblInstancePort :: Lens' ElasticLoadBalancingLoadBalancerListeners (Val Text)
elblblInstancePort = lens _elasticLoadBalancingLoadBalancerListenersInstancePort (\s a -> s { _elasticLoadBalancingLoadBalancerListenersInstancePort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceprotocol
elblblInstanceProtocol :: Lens' ElasticLoadBalancingLoadBalancerListeners (Maybe (Val Text))
elblblInstanceProtocol = lens _elasticLoadBalancingLoadBalancerListenersInstanceProtocol (\s a -> s { _elasticLoadBalancingLoadBalancerListenersInstanceProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-loadbalancerport
elblblLoadBalancerPort :: Lens' ElasticLoadBalancingLoadBalancerListeners (Val Text)
elblblLoadBalancerPort = lens _elasticLoadBalancingLoadBalancerListenersLoadBalancerPort (\s a -> s { _elasticLoadBalancingLoadBalancerListenersLoadBalancerPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-policynames
elblblPolicyNames :: Lens' ElasticLoadBalancingLoadBalancerListeners (Maybe [Val Text])
elblblPolicyNames = lens _elasticLoadBalancingLoadBalancerListenersPolicyNames (\s a -> s { _elasticLoadBalancingLoadBalancerListenersPolicyNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-protocol
elblblProtocol :: Lens' ElasticLoadBalancingLoadBalancerListeners (Val Text)
elblblProtocol = lens _elasticLoadBalancingLoadBalancerListenersProtocol (\s a -> s { _elasticLoadBalancingLoadBalancerListenersProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-sslcertificateid
elblblSSLCertificateId :: Lens' ElasticLoadBalancingLoadBalancerListeners (Maybe (Val Text))
elblblSSLCertificateId = lens _elasticLoadBalancingLoadBalancerListenersSSLCertificateId (\s a -> s { _elasticLoadBalancingLoadBalancerListenersSSLCertificateId = a })
