module Stratosphere.CodeDeploy.DeploymentGroup.AlarmProperty (
        AlarmProperty(..), mkAlarmProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmProperty
  = AlarmProperty {name :: (Prelude.Maybe (Value Prelude.Text))}
mkAlarmProperty :: AlarmProperty
mkAlarmProperty = AlarmProperty {name = Prelude.Nothing}
instance ToResourceProperties AlarmProperty where
  toResourceProperties AlarmProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.Alarm",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON AlarmProperty where
  toJSON AlarmProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" AlarmProperty where
  type PropertyType "Name" AlarmProperty = Value Prelude.Text
  set newValue AlarmProperty {}
    = AlarmProperty {name = Prelude.pure newValue, ..}