{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerListeners where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticLoadBalancingLoadBalancerListeners.
-- See 'elasticLoadBalancingLoadBalancerListeners' for a more convenient
-- constructor.
data ElasticLoadBalancingLoadBalancerListeners =
  ElasticLoadBalancingLoadBalancerListeners
  { _elasticLoadBalancingLoadBalancerListenersInstancePort :: Val Text
  , _elasticLoadBalancingLoadBalancerListenersInstanceProtocol :: Maybe (Val Text)
  , _elasticLoadBalancingLoadBalancerListenersLoadBalancerPort :: Val Text
  , _elasticLoadBalancingLoadBalancerListenersPolicyNames :: Maybe (ValList Text)
  , _elasticLoadBalancingLoadBalancerListenersProtocol :: Val Text
  , _elasticLoadBalancingLoadBalancerListenersSSLCertificateId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerListeners where
  toJSON ElasticLoadBalancingLoadBalancerListeners{..} =
    object $
    catMaybes
    [ (Just . ("InstancePort",) . toJSON) _elasticLoadBalancingLoadBalancerListenersInstancePort
    , fmap (("InstanceProtocol",) . toJSON) _elasticLoadBalancingLoadBalancerListenersInstanceProtocol
    , (Just . ("LoadBalancerPort",) . toJSON) _elasticLoadBalancingLoadBalancerListenersLoadBalancerPort
    , fmap (("PolicyNames",) . toJSON) _elasticLoadBalancingLoadBalancerListenersPolicyNames
    , (Just . ("Protocol",) . toJSON) _elasticLoadBalancingLoadBalancerListenersProtocol
    , fmap (("SSLCertificateId",) . toJSON) _elasticLoadBalancingLoadBalancerListenersSSLCertificateId
    ]

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
elblblPolicyNames :: Lens' ElasticLoadBalancingLoadBalancerListeners (Maybe (ValList Text))
elblblPolicyNames = lens _elasticLoadBalancingLoadBalancerListenersPolicyNames (\s a -> s { _elasticLoadBalancingLoadBalancerListenersPolicyNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-protocol
elblblProtocol :: Lens' ElasticLoadBalancingLoadBalancerListeners (Val Text)
elblblProtocol = lens _elasticLoadBalancingLoadBalancerListenersProtocol (\s a -> s { _elasticLoadBalancingLoadBalancerListenersProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-sslcertificateid
elblblSSLCertificateId :: Lens' ElasticLoadBalancingLoadBalancerListeners (Maybe (Val Text))
elblblSSLCertificateId = lens _elasticLoadBalancingLoadBalancerListenersSSLCertificateId (\s a -> s { _elasticLoadBalancingLoadBalancerListenersSSLCertificateId = a })
