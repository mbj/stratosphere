module Stratosphere.ECS.TaskDefinition.HealthCheckProperty (
        HealthCheckProperty(..), mkHealthCheckProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckProperty
  = HealthCheckProperty {command :: (Prelude.Maybe (ValueList Prelude.Text)),
                         interval :: (Prelude.Maybe (Value Prelude.Integer)),
                         retries :: (Prelude.Maybe (Value Prelude.Integer)),
                         startPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                         timeout :: (Prelude.Maybe (Value Prelude.Integer))}
mkHealthCheckProperty :: HealthCheckProperty
mkHealthCheckProperty
  = HealthCheckProperty
      {command = Prelude.Nothing, interval = Prelude.Nothing,
       retries = Prelude.Nothing, startPeriod = Prelude.Nothing,
       timeout = Prelude.Nothing}
instance ToResourceProperties HealthCheckProperty where
  toResourceProperties HealthCheckProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.HealthCheck",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Command" Prelude.<$> command,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "Retries" Prelude.<$> retries,
                            (JSON..=) "StartPeriod" Prelude.<$> startPeriod,
                            (JSON..=) "Timeout" Prelude.<$> timeout])}
instance JSON.ToJSON HealthCheckProperty where
  toJSON HealthCheckProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Command" Prelude.<$> command,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "Retries" Prelude.<$> retries,
               (JSON..=) "StartPeriod" Prelude.<$> startPeriod,
               (JSON..=) "Timeout" Prelude.<$> timeout]))
instance Property "Command" HealthCheckProperty where
  type PropertyType "Command" HealthCheckProperty = ValueList Prelude.Text
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {command = Prelude.pure newValue, ..}
instance Property "Interval" HealthCheckProperty where
  type PropertyType "Interval" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {interval = Prelude.pure newValue, ..}
instance Property "Retries" HealthCheckProperty where
  type PropertyType "Retries" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {retries = Prelude.pure newValue, ..}
instance Property "StartPeriod" HealthCheckProperty where
  type PropertyType "StartPeriod" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {startPeriod = Prelude.pure newValue, ..}
instance Property "Timeout" HealthCheckProperty where
  type PropertyType "Timeout" HealthCheckProperty = Value Prelude.Integer
  set newValue HealthCheckProperty {..}
    = HealthCheckProperty {timeout = Prelude.pure newValue, ..}