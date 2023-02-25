module Stratosphere.AppRunner.Service.HealthCheckConfigurationProperty (
        HealthCheckConfigurationProperty(..),
        mkHealthCheckConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckConfigurationProperty
  = HealthCheckConfigurationProperty {healthyThreshold :: (Prelude.Maybe (Value Prelude.Integer)),
                                      interval :: (Prelude.Maybe (Value Prelude.Integer)),
                                      path :: (Prelude.Maybe (Value Prelude.Text)),
                                      protocol :: (Prelude.Maybe (Value Prelude.Text)),
                                      timeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                      unhealthyThreshold :: (Prelude.Maybe (Value Prelude.Integer))}
mkHealthCheckConfigurationProperty ::
  HealthCheckConfigurationProperty
mkHealthCheckConfigurationProperty
  = HealthCheckConfigurationProperty
      {healthyThreshold = Prelude.Nothing, interval = Prelude.Nothing,
       path = Prelude.Nothing, protocol = Prelude.Nothing,
       timeout = Prelude.Nothing, unhealthyThreshold = Prelude.Nothing}
instance ToResourceProperties HealthCheckConfigurationProperty where
  toResourceProperties HealthCheckConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.HealthCheckConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HealthyThreshold" Prelude.<$> healthyThreshold,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "Timeout" Prelude.<$> timeout,
                            (JSON..=) "UnhealthyThreshold" Prelude.<$> unhealthyThreshold])}
instance JSON.ToJSON HealthCheckConfigurationProperty where
  toJSON HealthCheckConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HealthyThreshold" Prelude.<$> healthyThreshold,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "Timeout" Prelude.<$> timeout,
               (JSON..=) "UnhealthyThreshold" Prelude.<$> unhealthyThreshold]))
instance Property "HealthyThreshold" HealthCheckConfigurationProperty where
  type PropertyType "HealthyThreshold" HealthCheckConfigurationProperty = Value Prelude.Integer
  set newValue HealthCheckConfigurationProperty {..}
    = HealthCheckConfigurationProperty
        {healthyThreshold = Prelude.pure newValue, ..}
instance Property "Interval" HealthCheckConfigurationProperty where
  type PropertyType "Interval" HealthCheckConfigurationProperty = Value Prelude.Integer
  set newValue HealthCheckConfigurationProperty {..}
    = HealthCheckConfigurationProperty
        {interval = Prelude.pure newValue, ..}
instance Property "Path" HealthCheckConfigurationProperty where
  type PropertyType "Path" HealthCheckConfigurationProperty = Value Prelude.Text
  set newValue HealthCheckConfigurationProperty {..}
    = HealthCheckConfigurationProperty
        {path = Prelude.pure newValue, ..}
instance Property "Protocol" HealthCheckConfigurationProperty where
  type PropertyType "Protocol" HealthCheckConfigurationProperty = Value Prelude.Text
  set newValue HealthCheckConfigurationProperty {..}
    = HealthCheckConfigurationProperty
        {protocol = Prelude.pure newValue, ..}
instance Property "Timeout" HealthCheckConfigurationProperty where
  type PropertyType "Timeout" HealthCheckConfigurationProperty = Value Prelude.Integer
  set newValue HealthCheckConfigurationProperty {..}
    = HealthCheckConfigurationProperty
        {timeout = Prelude.pure newValue, ..}
instance Property "UnhealthyThreshold" HealthCheckConfigurationProperty where
  type PropertyType "UnhealthyThreshold" HealthCheckConfigurationProperty = Value Prelude.Integer
  set newValue HealthCheckConfigurationProperty {..}
    = HealthCheckConfigurationProperty
        {unhealthyThreshold = Prelude.pure newValue, ..}