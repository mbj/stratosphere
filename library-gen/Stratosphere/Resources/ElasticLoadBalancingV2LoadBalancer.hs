{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html

module Stratosphere.Resources.ElasticLoadBalancingV2LoadBalancer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2LoadBalancerSubnetMapping
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ElasticLoadBalancingV2LoadBalancer. See
-- 'elasticLoadBalancingV2LoadBalancer' for a more convenient constructor.
data ElasticLoadBalancingV2LoadBalancer =
  ElasticLoadBalancingV2LoadBalancer
  { _elasticLoadBalancingV2LoadBalancerIpAddressType :: Maybe (Val Text)
  , _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributes :: Maybe [ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute]
  , _elasticLoadBalancingV2LoadBalancerName :: Maybe (Val Text)
  , _elasticLoadBalancingV2LoadBalancerScheme :: Maybe (Val Text)
  , _elasticLoadBalancingV2LoadBalancerSecurityGroups :: Maybe (ValList Text)
  , _elasticLoadBalancingV2LoadBalancerSubnetMappings :: Maybe [ElasticLoadBalancingV2LoadBalancerSubnetMapping]
  , _elasticLoadBalancingV2LoadBalancerSubnets :: Maybe (ValList Text)
  , _elasticLoadBalancingV2LoadBalancerTags :: Maybe [Tag]
  , _elasticLoadBalancingV2LoadBalancerType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ElasticLoadBalancingV2LoadBalancer where
  toResourceProperties ElasticLoadBalancingV2LoadBalancer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElasticLoadBalancingV2::LoadBalancer"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("IpAddressType",) . toJSON) _elasticLoadBalancingV2LoadBalancerIpAddressType
        , fmap (("LoadBalancerAttributes",) . toJSON) _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributes
        , fmap (("Name",) . toJSON) _elasticLoadBalancingV2LoadBalancerName
        , fmap (("Scheme",) . toJSON) _elasticLoadBalancingV2LoadBalancerScheme
        , fmap (("SecurityGroups",) . toJSON) _elasticLoadBalancingV2LoadBalancerSecurityGroups
        , fmap (("SubnetMappings",) . toJSON) _elasticLoadBalancingV2LoadBalancerSubnetMappings
        , fmap (("Subnets",) . toJSON) _elasticLoadBalancingV2LoadBalancerSubnets
        , fmap (("Tags",) . toJSON) _elasticLoadBalancingV2LoadBalancerTags
        , fmap (("Type",) . toJSON) _elasticLoadBalancingV2LoadBalancerType
        ]
    }

-- | Constructor for 'ElasticLoadBalancingV2LoadBalancer' containing required
-- fields as arguments.
elasticLoadBalancingV2LoadBalancer
  :: ElasticLoadBalancingV2LoadBalancer
elasticLoadBalancingV2LoadBalancer  =
  ElasticLoadBalancingV2LoadBalancer
  { _elasticLoadBalancingV2LoadBalancerIpAddressType = Nothing
  , _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributes = Nothing
  , _elasticLoadBalancingV2LoadBalancerName = Nothing
  , _elasticLoadBalancingV2LoadBalancerScheme = Nothing
  , _elasticLoadBalancingV2LoadBalancerSecurityGroups = Nothing
  , _elasticLoadBalancingV2LoadBalancerSubnetMappings = Nothing
  , _elasticLoadBalancingV2LoadBalancerSubnets = Nothing
  , _elasticLoadBalancingV2LoadBalancerTags = Nothing
  , _elasticLoadBalancingV2LoadBalancerType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-ipaddresstype
elbvlbIpAddressType :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe (Val Text))
elbvlbIpAddressType = lens _elasticLoadBalancingV2LoadBalancerIpAddressType (\s a -> s { _elasticLoadBalancingV2LoadBalancerIpAddressType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes
elbvlbLoadBalancerAttributes :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe [ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute])
elbvlbLoadBalancerAttributes = lens _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributes (\s a -> s { _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-name
elbvlbName :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe (Val Text))
elbvlbName = lens _elasticLoadBalancingV2LoadBalancerName (\s a -> s { _elasticLoadBalancingV2LoadBalancerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-scheme
elbvlbScheme :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe (Val Text))
elbvlbScheme = lens _elasticLoadBalancingV2LoadBalancerScheme (\s a -> s { _elasticLoadBalancingV2LoadBalancerScheme = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-securitygroups
elbvlbSecurityGroups :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe (ValList Text))
elbvlbSecurityGroups = lens _elasticLoadBalancingV2LoadBalancerSecurityGroups (\s a -> s { _elasticLoadBalancingV2LoadBalancerSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmappings
elbvlbSubnetMappings :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe [ElasticLoadBalancingV2LoadBalancerSubnetMapping])
elbvlbSubnetMappings = lens _elasticLoadBalancingV2LoadBalancerSubnetMappings (\s a -> s { _elasticLoadBalancingV2LoadBalancerSubnetMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-subnets
elbvlbSubnets :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe (ValList Text))
elbvlbSubnets = lens _elasticLoadBalancingV2LoadBalancerSubnets (\s a -> s { _elasticLoadBalancingV2LoadBalancerSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-tags
elbvlbTags :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe [Tag])
elbvlbTags = lens _elasticLoadBalancingV2LoadBalancerTags (\s a -> s { _elasticLoadBalancingV2LoadBalancerTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-type
elbvlbType :: Lens' ElasticLoadBalancingV2LoadBalancer (Maybe (Val Text))
elbvlbType = lens _elasticLoadBalancingV2LoadBalancerType (\s a -> s { _elasticLoadBalancingV2LoadBalancerType = a })
