{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerHealthCheck where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingLoadBalancerHealthCheck. See
-- 'elasticLoadBalancingLoadBalancerHealthCheck' for a more convenient
-- constructor.
data ElasticLoadBalancingLoadBalancerHealthCheck =
  ElasticLoadBalancingLoadBalancerHealthCheck
  { _elasticLoadBalancingLoadBalancerHealthCheckHealthyThreshold :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckInterval :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckTarget :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckTimeout :: Val Text
  , _elasticLoadBalancingLoadBalancerHealthCheckUnhealthyThreshold :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerHealthCheck where
  toJSON ElasticLoadBalancingLoadBalancerHealthCheck{..} =
    object $
    catMaybes
    [ (Just . ("HealthyThreshold",) . toJSON) _elasticLoadBalancingLoadBalancerHealthCheckHealthyThreshold
    , (Just . ("Interval",) . toJSON) _elasticLoadBalancingLoadBalancerHealthCheckInterval
    , (Just . ("Target",) . toJSON) _elasticLoadBalancingLoadBalancerHealthCheckTarget
    , (Just . ("Timeout",) . toJSON) _elasticLoadBalancingLoadBalancerHealthCheckTimeout
    , (Just . ("UnhealthyThreshold",) . toJSON) _elasticLoadBalancingLoadBalancerHealthCheckUnhealthyThreshold
    ]

instance FromJSON ElasticLoadBalancingLoadBalancerHealthCheck where
  parseJSON (Object obj) =
    ElasticLoadBalancingLoadBalancerHealthCheck <$>
      (obj .: "HealthyThreshold") <*>
      (obj .: "Interval") <*>
      (obj .: "Target") <*>
      (obj .: "Timeout") <*>
      (obj .: "UnhealthyThreshold")
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingLoadBalancerHealthCheck' containing
-- required fields as arguments.
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
