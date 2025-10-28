module Stratosphere.ElasticLoadBalancingV2.LoadBalancer (
        module Exports, LoadBalancer(..), mkLoadBalancer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttributeProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.LoadBalancer.MinimumLoadBalancerCapacityProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.LoadBalancer.SubnetMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LoadBalancer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html>
    LoadBalancer {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-enableprefixforipv6sourcenat>
                  enablePrefixForIpv6SourceNat :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-enforcesecuritygroupinboundrulesonprivatelinktraffic>
                  enforceSecurityGroupInboundRulesOnPrivateLinkTraffic :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-ipaddresstype>
                  ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes>
                  loadBalancerAttributes :: (Prelude.Maybe [LoadBalancerAttributeProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-minimumloadbalancercapacity>
                  minimumLoadBalancerCapacity :: (Prelude.Maybe MinimumLoadBalancerCapacityProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-name>
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-scheme>
                  scheme :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-securitygroups>
                  securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmappings>
                  subnetMappings :: (Prelude.Maybe [SubnetMappingProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-subnets>
                  subnets :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-loadbalancer.html#cfn-elasticloadbalancingv2-loadbalancer-type>
                  type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancer :: LoadBalancer
mkLoadBalancer
  = LoadBalancer
      {haddock_workaround_ = (),
       enablePrefixForIpv6SourceNat = Prelude.Nothing,
       enforceSecurityGroupInboundRulesOnPrivateLinkTraffic = Prelude.Nothing,
       ipAddressType = Prelude.Nothing,
       loadBalancerAttributes = Prelude.Nothing,
       minimumLoadBalancerCapacity = Prelude.Nothing,
       name = Prelude.Nothing, scheme = Prelude.Nothing,
       securityGroups = Prelude.Nothing, subnetMappings = Prelude.Nothing,
       subnets = Prelude.Nothing, tags = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties LoadBalancer where
  toResourceProperties LoadBalancer {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::LoadBalancer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnablePrefixForIpv6SourceNat"
                              Prelude.<$> enablePrefixForIpv6SourceNat,
                            (JSON..=) "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"
                              Prelude.<$> enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
                            (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                            (JSON..=) "LoadBalancerAttributes"
                              Prelude.<$> loadBalancerAttributes,
                            (JSON..=) "MinimumLoadBalancerCapacity"
                              Prelude.<$> minimumLoadBalancerCapacity,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Scheme" Prelude.<$> scheme,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "SubnetMappings" Prelude.<$> subnetMappings,
                            (JSON..=) "Subnets" Prelude.<$> subnets,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON LoadBalancer where
  toJSON LoadBalancer {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnablePrefixForIpv6SourceNat"
                 Prelude.<$> enablePrefixForIpv6SourceNat,
               (JSON..=) "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"
                 Prelude.<$> enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
               (JSON..=) "LoadBalancerAttributes"
                 Prelude.<$> loadBalancerAttributes,
               (JSON..=) "MinimumLoadBalancerCapacity"
                 Prelude.<$> minimumLoadBalancerCapacity,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Scheme" Prelude.<$> scheme,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "SubnetMappings" Prelude.<$> subnetMappings,
               (JSON..=) "Subnets" Prelude.<$> subnets,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "EnablePrefixForIpv6SourceNat" LoadBalancer where
  type PropertyType "EnablePrefixForIpv6SourceNat" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer
        {enablePrefixForIpv6SourceNat = Prelude.pure newValue, ..}
instance Property "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic" LoadBalancer where
  type PropertyType "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer
        {enforceSecurityGroupInboundRulesOnPrivateLinkTraffic = Prelude.pure
                                                                  newValue,
         ..}
instance Property "IpAddressType" LoadBalancer where
  type PropertyType "IpAddressType" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {ipAddressType = Prelude.pure newValue, ..}
instance Property "LoadBalancerAttributes" LoadBalancer where
  type PropertyType "LoadBalancerAttributes" LoadBalancer = [LoadBalancerAttributeProperty]
  set newValue LoadBalancer {..}
    = LoadBalancer {loadBalancerAttributes = Prelude.pure newValue, ..}
instance Property "MinimumLoadBalancerCapacity" LoadBalancer where
  type PropertyType "MinimumLoadBalancerCapacity" LoadBalancer = MinimumLoadBalancerCapacityProperty
  set newValue LoadBalancer {..}
    = LoadBalancer
        {minimumLoadBalancerCapacity = Prelude.pure newValue, ..}
instance Property "Name" LoadBalancer where
  type PropertyType "Name" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {name = Prelude.pure newValue, ..}
instance Property "Scheme" LoadBalancer where
  type PropertyType "Scheme" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {scheme = Prelude.pure newValue, ..}
instance Property "SecurityGroups" LoadBalancer where
  type PropertyType "SecurityGroups" LoadBalancer = ValueList Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {securityGroups = Prelude.pure newValue, ..}
instance Property "SubnetMappings" LoadBalancer where
  type PropertyType "SubnetMappings" LoadBalancer = [SubnetMappingProperty]
  set newValue LoadBalancer {..}
    = LoadBalancer {subnetMappings = Prelude.pure newValue, ..}
instance Property "Subnets" LoadBalancer where
  type PropertyType "Subnets" LoadBalancer = ValueList Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {subnets = Prelude.pure newValue, ..}
instance Property "Tags" LoadBalancer where
  type PropertyType "Tags" LoadBalancer = [Tag]
  set newValue LoadBalancer {..}
    = LoadBalancer {tags = Prelude.pure newValue, ..}
instance Property "Type" LoadBalancer where
  type PropertyType "Type" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {type' = Prelude.pure newValue, ..}