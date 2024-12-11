module Stratosphere.GameLift.ContainerGroupDefinition.ContainerHealthCheckProperty (
        ContainerHealthCheckProperty(..), mkContainerHealthCheckProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerHealthCheckProperty
  = ContainerHealthCheckProperty {command :: (ValueList Prelude.Text),
                                  interval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  retries :: (Prelude.Maybe (Value Prelude.Integer)),
                                  startPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                                  timeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerHealthCheckProperty ::
  ValueList Prelude.Text -> ContainerHealthCheckProperty
mkContainerHealthCheckProperty command
  = ContainerHealthCheckProperty
      {command = command, interval = Prelude.Nothing,
       retries = Prelude.Nothing, startPeriod = Prelude.Nothing,
       timeout = Prelude.Nothing}
instance ToResourceProperties ContainerHealthCheckProperty where
  toResourceProperties ContainerHealthCheckProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.ContainerHealthCheck",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Command" JSON..= command]
                           (Prelude.catMaybes
                              [(JSON..=) "Interval" Prelude.<$> interval,
                               (JSON..=) "Retries" Prelude.<$> retries,
                               (JSON..=) "StartPeriod" Prelude.<$> startPeriod,
                               (JSON..=) "Timeout" Prelude.<$> timeout]))}
instance JSON.ToJSON ContainerHealthCheckProperty where
  toJSON ContainerHealthCheckProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Command" JSON..= command]
              (Prelude.catMaybes
                 [(JSON..=) "Interval" Prelude.<$> interval,
                  (JSON..=) "Retries" Prelude.<$> retries,
                  (JSON..=) "StartPeriod" Prelude.<$> startPeriod,
                  (JSON..=) "Timeout" Prelude.<$> timeout])))
instance Property "Command" ContainerHealthCheckProperty where
  type PropertyType "Command" ContainerHealthCheckProperty = ValueList Prelude.Text
  set newValue ContainerHealthCheckProperty {..}
    = ContainerHealthCheckProperty {command = newValue, ..}
instance Property "Interval" ContainerHealthCheckProperty where
  type PropertyType "Interval" ContainerHealthCheckProperty = Value Prelude.Integer
  set newValue ContainerHealthCheckProperty {..}
    = ContainerHealthCheckProperty
        {interval = Prelude.pure newValue, ..}
instance Property "Retries" ContainerHealthCheckProperty where
  type PropertyType "Retries" ContainerHealthCheckProperty = Value Prelude.Integer
  set newValue ContainerHealthCheckProperty {..}
    = ContainerHealthCheckProperty
        {retries = Prelude.pure newValue, ..}
instance Property "StartPeriod" ContainerHealthCheckProperty where
  type PropertyType "StartPeriod" ContainerHealthCheckProperty = Value Prelude.Integer
  set newValue ContainerHealthCheckProperty {..}
    = ContainerHealthCheckProperty
        {startPeriod = Prelude.pure newValue, ..}
instance Property "Timeout" ContainerHealthCheckProperty where
  type PropertyType "Timeout" ContainerHealthCheckProperty = Value Prelude.Integer
  set newValue ContainerHealthCheckProperty {..}
    = ContainerHealthCheckProperty
        {timeout = Prelude.pure newValue, ..}