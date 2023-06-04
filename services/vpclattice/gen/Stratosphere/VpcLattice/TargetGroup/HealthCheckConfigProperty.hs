module Stratosphere.VpcLattice.TargetGroup.HealthCheckConfigProperty (
        module Exports, HealthCheckConfigProperty(..),
        mkHealthCheckConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.TargetGroup.MatcherProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckConfigProperty
  = HealthCheckConfigProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                               healthCheckIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               healthCheckTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               healthyThresholdCount :: (Prelude.Maybe (Value Prelude.Integer)),
                               matcher :: (Prelude.Maybe MatcherProperty),
                               path :: (Prelude.Maybe (Value Prelude.Text)),
                               port :: (Prelude.Maybe (Value Prelude.Integer)),
                               protocol :: (Prelude.Maybe (Value Prelude.Text)),
                               protocolVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               unhealthyThresholdCount :: (Prelude.Maybe (Value Prelude.Integer))}
mkHealthCheckConfigProperty :: HealthCheckConfigProperty
mkHealthCheckConfigProperty
  = HealthCheckConfigProperty
      {enabled = Prelude.Nothing,
       healthCheckIntervalSeconds = Prelude.Nothing,
       healthCheckTimeoutSeconds = Prelude.Nothing,
       healthyThresholdCount = Prelude.Nothing, matcher = Prelude.Nothing,
       path = Prelude.Nothing, port = Prelude.Nothing,
       protocol = Prelude.Nothing, protocolVersion = Prelude.Nothing,
       unhealthyThresholdCount = Prelude.Nothing}
instance ToResourceProperties HealthCheckConfigProperty where
  toResourceProperties HealthCheckConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::TargetGroup.HealthCheckConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "HealthCheckIntervalSeconds"
                              Prelude.<$> healthCheckIntervalSeconds,
                            (JSON..=) "HealthCheckTimeoutSeconds"
                              Prelude.<$> healthCheckTimeoutSeconds,
                            (JSON..=) "HealthyThresholdCount"
                              Prelude.<$> healthyThresholdCount,
                            (JSON..=) "Matcher" Prelude.<$> matcher,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion,
                            (JSON..=) "UnhealthyThresholdCount"
                              Prelude.<$> unhealthyThresholdCount])}
instance JSON.ToJSON HealthCheckConfigProperty where
  toJSON HealthCheckConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "HealthCheckIntervalSeconds"
                 Prelude.<$> healthCheckIntervalSeconds,
               (JSON..=) "HealthCheckTimeoutSeconds"
                 Prelude.<$> healthCheckTimeoutSeconds,
               (JSON..=) "HealthyThresholdCount"
                 Prelude.<$> healthyThresholdCount,
               (JSON..=) "Matcher" Prelude.<$> matcher,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion,
               (JSON..=) "UnhealthyThresholdCount"
                 Prelude.<$> unhealthyThresholdCount]))
instance Property "Enabled" HealthCheckConfigProperty where
  type PropertyType "Enabled" HealthCheckConfigProperty = Value Prelude.Bool
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {enabled = Prelude.pure newValue, ..}
instance Property "HealthCheckIntervalSeconds" HealthCheckConfigProperty where
  type PropertyType "HealthCheckIntervalSeconds" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {healthCheckIntervalSeconds = Prelude.pure newValue, ..}
instance Property "HealthCheckTimeoutSeconds" HealthCheckConfigProperty where
  type PropertyType "HealthCheckTimeoutSeconds" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {healthCheckTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "HealthyThresholdCount" HealthCheckConfigProperty where
  type PropertyType "HealthyThresholdCount" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {healthyThresholdCount = Prelude.pure newValue, ..}
instance Property "Matcher" HealthCheckConfigProperty where
  type PropertyType "Matcher" HealthCheckConfigProperty = MatcherProperty
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {matcher = Prelude.pure newValue, ..}
instance Property "Path" HealthCheckConfigProperty where
  type PropertyType "Path" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {path = Prelude.pure newValue, ..}
instance Property "Port" HealthCheckConfigProperty where
  type PropertyType "Port" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" HealthCheckConfigProperty where
  type PropertyType "Protocol" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty {protocol = Prelude.pure newValue, ..}
instance Property "ProtocolVersion" HealthCheckConfigProperty where
  type PropertyType "ProtocolVersion" HealthCheckConfigProperty = Value Prelude.Text
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {protocolVersion = Prelude.pure newValue, ..}
instance Property "UnhealthyThresholdCount" HealthCheckConfigProperty where
  type PropertyType "UnhealthyThresholdCount" HealthCheckConfigProperty = Value Prelude.Integer
  set newValue HealthCheckConfigProperty {..}
    = HealthCheckConfigProperty
        {unhealthyThresholdCount = Prelude.pure newValue, ..}