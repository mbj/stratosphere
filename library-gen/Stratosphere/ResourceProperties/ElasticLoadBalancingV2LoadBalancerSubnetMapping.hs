{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2LoadBalancerSubnetMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2LoadBalancerSubnetMapping. See
-- 'elasticLoadBalancingV2LoadBalancerSubnetMapping' for a more convenient
-- constructor.
data ElasticLoadBalancingV2LoadBalancerSubnetMapping =
  ElasticLoadBalancingV2LoadBalancerSubnetMapping
  { _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId :: Val Text
  , _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2LoadBalancerSubnetMapping where
  toJSON ElasticLoadBalancingV2LoadBalancerSubnetMapping{..} =
    object $
    catMaybes
    [ (Just . ("AllocationId",) . toJSON) _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId
    , (Just . ("SubnetId",) . toJSON) _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId
    ]

-- | Constructor for 'ElasticLoadBalancingV2LoadBalancerSubnetMapping'
-- containing required fields as arguments.
elasticLoadBalancingV2LoadBalancerSubnetMapping
  :: Val Text -- ^ 'elbvlbsmAllocationId'
  -> Val Text -- ^ 'elbvlbsmSubnetId'
  -> ElasticLoadBalancingV2LoadBalancerSubnetMapping
elasticLoadBalancingV2LoadBalancerSubnetMapping allocationIdarg subnetIdarg =
  ElasticLoadBalancingV2LoadBalancerSubnetMapping
  { _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId = allocationIdarg
  , _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-allocationid
elbvlbsmAllocationId :: Lens' ElasticLoadBalancingV2LoadBalancerSubnetMapping (Val Text)
elbvlbsmAllocationId = lens _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId (\s a -> s { _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-subnetid
elbvlbsmSubnetId :: Lens' ElasticLoadBalancingV2LoadBalancerSubnetMapping (Val Text)
elbvlbsmSubnetId = lens _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId (\s a -> s { _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId = a })
