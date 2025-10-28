module Stratosphere.CodeDeploy.DeploymentGroup.AlarmProperty (
        AlarmProperty(..), mkAlarmProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html>
    AlarmProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html#cfn-codedeploy-deploymentgroup-alarm-name>
                   name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmProperty :: AlarmProperty
mkAlarmProperty
  = AlarmProperty {haddock_workaround_ = (), name = Prelude.Nothing}
instance ToResourceProperties AlarmProperty where
  toResourceProperties AlarmProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.Alarm",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON AlarmProperty where
  toJSON AlarmProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" AlarmProperty where
  type PropertyType "Name" AlarmProperty = Value Prelude.Text
  set newValue AlarmProperty {..}
    = AlarmProperty {name = Prelude.pure newValue, ..}