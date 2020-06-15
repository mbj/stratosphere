{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
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
  { _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId :: Maybe (Val Text)
  , _elasticLoadBalancingV2LoadBalancerSubnetMappingPrivateIPv4Address :: Maybe (Val Text)
  , _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2LoadBalancerSubnetMapping where
  toJSON ElasticLoadBalancingV2LoadBalancerSubnetMapping{..} =
    object $
    catMaybes
    [ fmap (("AllocationId",) . toJSON) _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId
    , fmap (("PrivateIPv4Address",) . toJSON) _elasticLoadBalancingV2LoadBalancerSubnetMappingPrivateIPv4Address
    , (Just . ("SubnetId",) . toJSON) _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId
    ]

-- | Constructor for 'ElasticLoadBalancingV2LoadBalancerSubnetMapping'
-- containing required fields as arguments.
elasticLoadBalancingV2LoadBalancerSubnetMapping
  :: Val Text -- ^ 'elbvlbsmSubnetId'
  -> ElasticLoadBalancingV2LoadBalancerSubnetMapping
elasticLoadBalancingV2LoadBalancerSubnetMapping subnetIdarg =
  ElasticLoadBalancingV2LoadBalancerSubnetMapping
  { _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId = Nothing
  , _elasticLoadBalancingV2LoadBalancerSubnetMappingPrivateIPv4Address = Nothing
  , _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-allocationid
elbvlbsmAllocationId :: Lens' ElasticLoadBalancingV2LoadBalancerSubnetMapping (Maybe (Val Text))
elbvlbsmAllocationId = lens _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId (\s a -> s { _elasticLoadBalancingV2LoadBalancerSubnetMappingAllocationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-privateipv4address
elbvlbsmPrivateIPv4Address :: Lens' ElasticLoadBalancingV2LoadBalancerSubnetMapping (Maybe (Val Text))
elbvlbsmPrivateIPv4Address = lens _elasticLoadBalancingV2LoadBalancerSubnetMappingPrivateIPv4Address (\s a -> s { _elasticLoadBalancingV2LoadBalancerSubnetMappingPrivateIPv4Address = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-subnetid
elbvlbsmSubnetId :: Lens' ElasticLoadBalancingV2LoadBalancerSubnetMapping (Val Text)
elbvlbsmSubnetId = lens _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId (\s a -> s { _elasticLoadBalancingV2LoadBalancerSubnetMappingSubnetId = a })
