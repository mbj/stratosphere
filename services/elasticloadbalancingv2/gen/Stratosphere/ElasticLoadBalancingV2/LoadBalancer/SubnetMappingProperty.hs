module Stratosphere.ElasticLoadBalancingV2.LoadBalancer.SubnetMappingProperty (
        SubnetMappingProperty(..), mkSubnetMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html>
    SubnetMappingProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-allocationid>
                           allocationId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-ipv6address>
                           iPv6Address :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-privateipv4address>
                           privateIPv4Address :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-sourcenatipv6prefix>
                           sourceNatIpv6Prefix :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-subnetmapping.html#cfn-elasticloadbalancingv2-loadbalancer-subnetmapping-subnetid>
                           subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetMappingProperty ::
  Value Prelude.Text -> SubnetMappingProperty
mkSubnetMappingProperty subnetId
  = SubnetMappingProperty
      {haddock_workaround_ = (), subnetId = subnetId,
       allocationId = Prelude.Nothing, iPv6Address = Prelude.Nothing,
       privateIPv4Address = Prelude.Nothing,
       sourceNatIpv6Prefix = Prelude.Nothing}
instance ToResourceProperties SubnetMappingProperty where
  toResourceProperties SubnetMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::LoadBalancer.SubnetMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "AllocationId" Prelude.<$> allocationId,
                               (JSON..=) "IPv6Address" Prelude.<$> iPv6Address,
                               (JSON..=) "PrivateIPv4Address" Prelude.<$> privateIPv4Address,
                               (JSON..=) "SourceNatIpv6Prefix" Prelude.<$> sourceNatIpv6Prefix]))}
instance JSON.ToJSON SubnetMappingProperty where
  toJSON SubnetMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "AllocationId" Prelude.<$> allocationId,
                  (JSON..=) "IPv6Address" Prelude.<$> iPv6Address,
                  (JSON..=) "PrivateIPv4Address" Prelude.<$> privateIPv4Address,
                  (JSON..=) "SourceNatIpv6Prefix" Prelude.<$> sourceNatIpv6Prefix])))
instance Property "AllocationId" SubnetMappingProperty where
  type PropertyType "AllocationId" SubnetMappingProperty = Value Prelude.Text
  set newValue SubnetMappingProperty {..}
    = SubnetMappingProperty {allocationId = Prelude.pure newValue, ..}
instance Property "IPv6Address" SubnetMappingProperty where
  type PropertyType "IPv6Address" SubnetMappingProperty = Value Prelude.Text
  set newValue SubnetMappingProperty {..}
    = SubnetMappingProperty {iPv6Address = Prelude.pure newValue, ..}
instance Property "PrivateIPv4Address" SubnetMappingProperty where
  type PropertyType "PrivateIPv4Address" SubnetMappingProperty = Value Prelude.Text
  set newValue SubnetMappingProperty {..}
    = SubnetMappingProperty
        {privateIPv4Address = Prelude.pure newValue, ..}
instance Property "SourceNatIpv6Prefix" SubnetMappingProperty where
  type PropertyType "SourceNatIpv6Prefix" SubnetMappingProperty = Value Prelude.Text
  set newValue SubnetMappingProperty {..}
    = SubnetMappingProperty
        {sourceNatIpv6Prefix = Prelude.pure newValue, ..}
instance Property "SubnetId" SubnetMappingProperty where
  type PropertyType "SubnetId" SubnetMappingProperty = Value Prelude.Text
  set newValue SubnetMappingProperty {..}
    = SubnetMappingProperty {subnetId = newValue, ..}