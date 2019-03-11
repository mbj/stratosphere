{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-matcher.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2TargetGroupMatcher where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticLoadBalancingV2TargetGroupMatcher.
-- See 'elasticLoadBalancingV2TargetGroupMatcher' for a more convenient
-- constructor.
data ElasticLoadBalancingV2TargetGroupMatcher =
  ElasticLoadBalancingV2TargetGroupMatcher
  { _elasticLoadBalancingV2TargetGroupMatcherHttpCode :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2TargetGroupMatcher where
  toJSON ElasticLoadBalancingV2TargetGroupMatcher{..} =
    object $
    catMaybes
    [ (Just . ("HttpCode",) . toJSON) _elasticLoadBalancingV2TargetGroupMatcherHttpCode
    ]

-- | Constructor for 'ElasticLoadBalancingV2TargetGroupMatcher' containing
-- required fields as arguments.
elasticLoadBalancingV2TargetGroupMatcher
  :: Val Text -- ^ 'elbvtgmHttpCode'
  -> ElasticLoadBalancingV2TargetGroupMatcher
elasticLoadBalancingV2TargetGroupMatcher httpCodearg =
  ElasticLoadBalancingV2TargetGroupMatcher
  { _elasticLoadBalancingV2TargetGroupMatcherHttpCode = httpCodearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-matcher.html#cfn-elasticloadbalancingv2-targetgroup-matcher-httpcode
elbvtgmHttpCode :: Lens' ElasticLoadBalancingV2TargetGroupMatcher (Val Text)
elbvtgmHttpCode = lens _elasticLoadBalancingV2TargetGroupMatcherHttpCode (\s a -> s { _elasticLoadBalancingV2TargetGroupMatcherHttpCode = a })
