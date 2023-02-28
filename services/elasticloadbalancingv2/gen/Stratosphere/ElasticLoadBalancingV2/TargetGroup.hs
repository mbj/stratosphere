module Stratosphere.ElasticLoadBalancingV2.TargetGroup (
        module Exports, TargetGroup(..), mkTargetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.TargetGroup.MatcherProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.TargetGroup.TargetDescriptionProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.TargetGroup.TargetGroupAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TargetGroup
  = TargetGroup {healthCheckEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 healthCheckIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                 healthCheckPath :: (Prelude.Maybe (Value Prelude.Text)),
                 healthCheckPort :: (Prelude.Maybe (Value Prelude.Text)),
                 healthCheckProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                 healthCheckTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                 healthyThresholdCount :: (Prelude.Maybe (Value Prelude.Integer)),
                 ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                 matcher :: (Prelude.Maybe MatcherProperty),
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 port :: (Prelude.Maybe (Value Prelude.Integer)),
                 protocol :: (Prelude.Maybe (Value Prelude.Text)),
                 protocolVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 targetGroupAttributes :: (Prelude.Maybe [TargetGroupAttributeProperty]),
                 targetType :: (Prelude.Maybe (Value Prelude.Text)),
                 targets :: (Prelude.Maybe [TargetDescriptionProperty]),
                 unhealthyThresholdCount :: (Prelude.Maybe (Value Prelude.Integer)),
                 vpcId :: (Prelude.Maybe (Value Prelude.Text))}
mkTargetGroup :: TargetGroup
mkTargetGroup
  = TargetGroup
      {healthCheckEnabled = Prelude.Nothing,
       healthCheckIntervalSeconds = Prelude.Nothing,
       healthCheckPath = Prelude.Nothing,
       healthCheckPort = Prelude.Nothing,
       healthCheckProtocol = Prelude.Nothing,
       healthCheckTimeoutSeconds = Prelude.Nothing,
       healthyThresholdCount = Prelude.Nothing,
       ipAddressType = Prelude.Nothing, matcher = Prelude.Nothing,
       name = Prelude.Nothing, port = Prelude.Nothing,
       protocol = Prelude.Nothing, protocolVersion = Prelude.Nothing,
       tags = Prelude.Nothing, targetGroupAttributes = Prelude.Nothing,
       targetType = Prelude.Nothing, targets = Prelude.Nothing,
       unhealthyThresholdCount = Prelude.Nothing, vpcId = Prelude.Nothing}
instance ToResourceProperties TargetGroup where
  toResourceProperties TargetGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TargetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HealthCheckEnabled" Prelude.<$> healthCheckEnabled,
                            (JSON..=) "HealthCheckIntervalSeconds"
                              Prelude.<$> healthCheckIntervalSeconds,
                            (JSON..=) "HealthCheckPath" Prelude.<$> healthCheckPath,
                            (JSON..=) "HealthCheckPort" Prelude.<$> healthCheckPort,
                            (JSON..=) "HealthCheckProtocol" Prelude.<$> healthCheckProtocol,
                            (JSON..=) "HealthCheckTimeoutSeconds"
                              Prelude.<$> healthCheckTimeoutSeconds,
                            (JSON..=) "HealthyThresholdCount"
                              Prelude.<$> healthyThresholdCount,
                            (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                            (JSON..=) "Matcher" Prelude.<$> matcher,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TargetGroupAttributes"
                              Prelude.<$> targetGroupAttributes,
                            (JSON..=) "TargetType" Prelude.<$> targetType,
                            (JSON..=) "Targets" Prelude.<$> targets,
                            (JSON..=) "UnhealthyThresholdCount"
                              Prelude.<$> unhealthyThresholdCount,
                            (JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON TargetGroup where
  toJSON TargetGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HealthCheckEnabled" Prelude.<$> healthCheckEnabled,
               (JSON..=) "HealthCheckIntervalSeconds"
                 Prelude.<$> healthCheckIntervalSeconds,
               (JSON..=) "HealthCheckPath" Prelude.<$> healthCheckPath,
               (JSON..=) "HealthCheckPort" Prelude.<$> healthCheckPort,
               (JSON..=) "HealthCheckProtocol" Prelude.<$> healthCheckProtocol,
               (JSON..=) "HealthCheckTimeoutSeconds"
                 Prelude.<$> healthCheckTimeoutSeconds,
               (JSON..=) "HealthyThresholdCount"
                 Prelude.<$> healthyThresholdCount,
               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
               (JSON..=) "Matcher" Prelude.<$> matcher,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TargetGroupAttributes"
                 Prelude.<$> targetGroupAttributes,
               (JSON..=) "TargetType" Prelude.<$> targetType,
               (JSON..=) "Targets" Prelude.<$> targets,
               (JSON..=) "UnhealthyThresholdCount"
                 Prelude.<$> unhealthyThresholdCount,
               (JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "HealthCheckEnabled" TargetGroup where
  type PropertyType "HealthCheckEnabled" TargetGroup = Value Prelude.Bool
  set newValue TargetGroup {..}
    = TargetGroup {healthCheckEnabled = Prelude.pure newValue, ..}
instance Property "HealthCheckIntervalSeconds" TargetGroup where
  type PropertyType "HealthCheckIntervalSeconds" TargetGroup = Value Prelude.Integer
  set newValue TargetGroup {..}
    = TargetGroup
        {healthCheckIntervalSeconds = Prelude.pure newValue, ..}
instance Property "HealthCheckPath" TargetGroup where
  type PropertyType "HealthCheckPath" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {healthCheckPath = Prelude.pure newValue, ..}
instance Property "HealthCheckPort" TargetGroup where
  type PropertyType "HealthCheckPort" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {healthCheckPort = Prelude.pure newValue, ..}
instance Property "HealthCheckProtocol" TargetGroup where
  type PropertyType "HealthCheckProtocol" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {healthCheckProtocol = Prelude.pure newValue, ..}
instance Property "HealthCheckTimeoutSeconds" TargetGroup where
  type PropertyType "HealthCheckTimeoutSeconds" TargetGroup = Value Prelude.Integer
  set newValue TargetGroup {..}
    = TargetGroup
        {healthCheckTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "HealthyThresholdCount" TargetGroup where
  type PropertyType "HealthyThresholdCount" TargetGroup = Value Prelude.Integer
  set newValue TargetGroup {..}
    = TargetGroup {healthyThresholdCount = Prelude.pure newValue, ..}
instance Property "IpAddressType" TargetGroup where
  type PropertyType "IpAddressType" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {ipAddressType = Prelude.pure newValue, ..}
instance Property "Matcher" TargetGroup where
  type PropertyType "Matcher" TargetGroup = MatcherProperty
  set newValue TargetGroup {..}
    = TargetGroup {matcher = Prelude.pure newValue, ..}
instance Property "Name" TargetGroup where
  type PropertyType "Name" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {name = Prelude.pure newValue, ..}
instance Property "Port" TargetGroup where
  type PropertyType "Port" TargetGroup = Value Prelude.Integer
  set newValue TargetGroup {..}
    = TargetGroup {port = Prelude.pure newValue, ..}
instance Property "Protocol" TargetGroup where
  type PropertyType "Protocol" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {protocol = Prelude.pure newValue, ..}
instance Property "ProtocolVersion" TargetGroup where
  type PropertyType "ProtocolVersion" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {protocolVersion = Prelude.pure newValue, ..}
instance Property "Tags" TargetGroup where
  type PropertyType "Tags" TargetGroup = [Tag]
  set newValue TargetGroup {..}
    = TargetGroup {tags = Prelude.pure newValue, ..}
instance Property "TargetGroupAttributes" TargetGroup where
  type PropertyType "TargetGroupAttributes" TargetGroup = [TargetGroupAttributeProperty]
  set newValue TargetGroup {..}
    = TargetGroup {targetGroupAttributes = Prelude.pure newValue, ..}
instance Property "TargetType" TargetGroup where
  type PropertyType "TargetType" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {targetType = Prelude.pure newValue, ..}
instance Property "Targets" TargetGroup where
  type PropertyType "Targets" TargetGroup = [TargetDescriptionProperty]
  set newValue TargetGroup {..}
    = TargetGroup {targets = Prelude.pure newValue, ..}
instance Property "UnhealthyThresholdCount" TargetGroup where
  type PropertyType "UnhealthyThresholdCount" TargetGroup = Value Prelude.Integer
  set newValue TargetGroup {..}
    = TargetGroup {unhealthyThresholdCount = Prelude.pure newValue, ..}
instance Property "VpcId" TargetGroup where
  type PropertyType "VpcId" TargetGroup = Value Prelude.Text
  set newValue TargetGroup {..}
    = TargetGroup {vpcId = Prelude.pure newValue, ..}