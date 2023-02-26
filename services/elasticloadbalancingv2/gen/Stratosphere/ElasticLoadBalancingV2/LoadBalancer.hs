module Stratosphere.ElasticLoadBalancingV2.LoadBalancer (
        module Exports, LoadBalancer(..), mkLoadBalancer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttributeProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.LoadBalancer.SubnetMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LoadBalancer
  = LoadBalancer {ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                  loadBalancerAttributes :: (Prelude.Maybe [LoadBalancerAttributeProperty]),
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  scheme :: (Prelude.Maybe (Value Prelude.Text)),
                  securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                  subnetMappings :: (Prelude.Maybe [SubnetMappingProperty]),
                  subnets :: (Prelude.Maybe (ValueList Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag]),
                  type' :: (Prelude.Maybe (Value Prelude.Text))}
mkLoadBalancer :: LoadBalancer
mkLoadBalancer
  = LoadBalancer
      {ipAddressType = Prelude.Nothing,
       loadBalancerAttributes = Prelude.Nothing, name = Prelude.Nothing,
       scheme = Prelude.Nothing, securityGroups = Prelude.Nothing,
       subnetMappings = Prelude.Nothing, subnets = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties LoadBalancer where
  toResourceProperties LoadBalancer {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::LoadBalancer",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                            (JSON..=) "LoadBalancerAttributes"
                              Prelude.<$> loadBalancerAttributes,
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
              [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
               (JSON..=) "LoadBalancerAttributes"
                 Prelude.<$> loadBalancerAttributes,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Scheme" Prelude.<$> scheme,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "SubnetMappings" Prelude.<$> subnetMappings,
               (JSON..=) "Subnets" Prelude.<$> subnets,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "IpAddressType" LoadBalancer where
  type PropertyType "IpAddressType" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {ipAddressType = Prelude.pure newValue, ..}
instance Property "LoadBalancerAttributes" LoadBalancer where
  type PropertyType "LoadBalancerAttributes" LoadBalancer = [LoadBalancerAttributeProperty]
  set newValue LoadBalancer {..}
    = LoadBalancer {loadBalancerAttributes = Prelude.pure newValue, ..}
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