module Stratosphere.ECS.Service.DeploymentAlarmsProperty (
        DeploymentAlarmsProperty(..), mkDeploymentAlarmsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentAlarmsProperty
  = DeploymentAlarmsProperty {alarmNames :: (ValueList Prelude.Text),
                              enable :: (Value Prelude.Bool),
                              rollback :: (Value Prelude.Bool)}
mkDeploymentAlarmsProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Bool
     -> Value Prelude.Bool -> DeploymentAlarmsProperty
mkDeploymentAlarmsProperty alarmNames enable rollback
  = DeploymentAlarmsProperty
      {alarmNames = alarmNames, enable = enable, rollback = rollback}
instance ToResourceProperties DeploymentAlarmsProperty where
  toResourceProperties DeploymentAlarmsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.DeploymentAlarms",
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