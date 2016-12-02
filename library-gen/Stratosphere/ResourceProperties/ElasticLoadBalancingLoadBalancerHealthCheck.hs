{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerHealthCheck where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingLoadBalancerHealthCheck. See
-- | 'elasticLoadBalancingLoadBalancerHealthCheck' for a more convenient
-- | constructor.
data ElasticLoadBalancingLoadBalancerHealthCheck =
  ElasticLoadBalancingLoadBalancerHealthCheck
  { _elasticLoadBalancingLoadBalancerHealthCheckHealthyThreshold :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckInterval :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckTarget :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckTimeout :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckUnhealthyThreshold :: Val Text
  } deriving (Show, Generic)

instance ToJSON ElasticLoadBalancingLoadBalancerHealthCheck where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 44, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingLoadBalancerHealthCheck where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 44, omitNothingFields = True }

-- | Constructor for 'ElasticLoadBalancingLoadBalancerHealthCheck' containing
-- | required fields as arguments.
elasticLoadBalancingLoadBalancerHealthCheck
  :: Val Text -- ^ 'elblbhcHealthyThreshold'
  -> Val Text -- ^ 'elblbhcInterval'
  -> Val Text -- ^ 'elblbhcTarget'
  -> Val Text -- ^ 'elblbhcTimeout'
  -> Val Text -- ^ 'elblbhcUnhealthyThreshold'
  -> ElasticLoadBalancingLoadBalancerHealthCheck
elasticLoadBalancingLoadBalancerHealthCheck healthyThresholdarg intervalarg targetarg timeoutarg unhealthyThresholdarg =
  ElasticLoadBalancingLoadBalancerHealthCheck
  { _elasticLoadBalancingLoadBalancerHealthCheckHealthyThreshold = healthyThresholdarg
  , _elasticLoadBalancingLoadBalancerHealthCheckInterval = intervalarg
  , _elasticLoadBalancingLoadBalancerHealthCheckTarget = targetarg
  , _elasticLoadBalancingLoadBalancerHealthCheckTimeout = timeoutarg
  , _elasticLoadBalancingLoadBalancerHealthCheckUnhealthyThreshold = unhealthyThresholdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-healthythreshold
elblbhcHealthyThreshold :: Lens' ElasticLoadBalancingLoadBalancerHealthCheck (Val Text)
elblbhcHealthyThreshold = lens _elasticLoadBalancingLoadBalancerHealthCheckHealthyThreshold (\s a -> s { _elasticLoadBalancingLoadBalancerHealthCheckHealthyThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-interval
elblbhcInterval :: Lens' ElasticLoadBalancingLoadBalancerHealthCheck (Val Text)
elblbhcInterval = lens _elasticLoadBalancingLoadBalancerHealthCheckInterval (\s a -> s { _elasticLoadBalancingLoadBalancerHealthCheckInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-target
elblbhcTarget :: Lens' ElasticLoadBalancingLoadBalancerHealthCheck (Val Text)
elblbhcTarget = lens _elasticLoadBalancingLoadBalancerHealthCheckTarget (\s a -> s { _elasticLoadBalancingLoadBalancerHealthCheckTarget = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-timeout
elblbhcTimeout :: Lens' ElasticLoadBalancingLoadBalancerHealthCheck (Val Text)
elblbhcTimeout = lens _elasticLoadBalancingLoadBalancerHealthCheckTimeout (\s a -> s { _elasticLoadBalancingLoadBalancerHealthCheckTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-unhealthythreshold
elblbhcUnhealthyThreshold :: Lens' ElasticLoadBalancingLoadBalancerHealthCheck (Val Text)
elblbhcUnhealthyThreshold = lens _elasticLoadBalancingLoadBalancerHealthCheckUnhealthyThreshold (\s a -> s { _elasticLoadBalancingLoadBalancerHealthCheckUnhealthyThreshold = a })
