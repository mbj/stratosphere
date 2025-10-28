module Stratosphere.ECS.Service.DeploymentAlarmsProperty (
        DeploymentAlarmsProperty(..), mkDeploymentAlarmsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentAlarmsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentalarms.html>
    DeploymentAlarmsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentalarms.html#cfn-ecs-service-deploymentalarms-alarmnames>
                              alarmNames :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentalarms.html#cfn-ecs-service-deploymentalarms-enable>
                              enable :: (Value Prelude.Bool),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentalarms.html#cfn-ecs-service-deploymentalarms-rollback>
                              rollback :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentAlarmsProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Bool
     -> Value Prelude.Bool -> DeploymentAlarmsProperty
mkDeploymentAlarmsProperty alarmNames enable rollback
  = DeploymentAlarmsProperty
      {haddock_workaround_ = (), alarmNames = alarmNames,
       enable = enable, rollback = rollback}
instance ToResourceProperties DeploymentAlarmsProperty where
  toResourceProperties DeploymentAlarmsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentAlarms",
         supportsTags = Prelude.False,
         properties = ["AlarmNames" JSON..= alarmNames,
                       "Enable" JSON..= enable, "Rollback" JSON..= rollback]}
instance JSON.ToJSON DeploymentAlarmsProperty where
  toJSON DeploymentAlarmsProperty {..}
    = JSON.object
        ["AlarmNames" JSON..= alarmNames, "Enable" JSON..= enable,
         "Rollback" JSON..= rollback]
instance Property "AlarmNames" DeploymentAlarmsProperty where
  type PropertyType "AlarmNames" DeploymentAlarmsProperty = ValueList Prelude.Text
  set newValue DeploymentAlarmsProperty {..}
    = DeploymentAlarmsProperty {alarmNames = newValue, ..}
instance Property "Enable" DeploymentAlarmsProperty where
  type PropertyType "Enable" DeploymentAlarmsProperty = Value Prelude.Bool
  set newValue DeploymentAlarmsProperty {..}
    = DeploymentAlarmsProperty {enable = newValue, ..}
instance Property "Rollback" DeploymentAlarmsProperty where
  type PropertyType "Rollback" DeploymentAlarmsProperty = Value Prelude.Bool
  set newValue DeploymentAlarmsProperty {..}
    = DeploymentAlarmsProperty {rollback = newValue, ..}