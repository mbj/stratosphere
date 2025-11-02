module Stratosphere.ECS.TaskDefinition.HealthCheckProperty (
        HealthCheckProperty(..), mkHealthCheckProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HealthCheckProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html>
    HealthCheckProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-command>
                         command :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-interval>
                         interval :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-retries>
                         retries :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-startperiod>
                         startPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-timeout>
                         timeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHealthCheckProperty :: HealthCheckProperty
mkHealthCheckProperty
  = HealthCheckProperty
      {haddock_workaround_ = (), command = Prelude.Nothing,
       interval = Prelude.Nothing, retries = Prelude.Nothing,
       startPeriod = Prelude.Nothing, timeout = Prelude.Nothing}
instance ToResourceProperties HealthCheckProperty where
  toResourceProperties HealthCheckProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.HealthCheck",
         supportsTags = Prelude.False,
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