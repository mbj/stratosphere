module Stratosphere.SSM.MaintenanceWindowTask.TargetProperty (
        TargetProperty(..), mkTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html>
    TargetProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-key>
                    key :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-values>
                    values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetProperty ::
  Value Prelude.Text -> ValueList Prelude.Text -> TargetProperty
mkTargetProperty key values
  = TargetProperty
      {haddock_workaround_ = (), key = key, values = values}
instance ToResourceProperties TargetProperty where
  toResourceProperties TargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.Target",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Values" JSON..= values]}
instance JSON.ToJSON TargetProperty where
  toJSON TargetProperty {..}
    = JSON.object ["Key" JSON..= key, "Values" JSON..= values]
instance Property "Key" TargetProperty where
  type PropertyType "Key" TargetProperty = Value Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {key = newValue, ..}
instance Property "Values" TargetProperty where
  type PropertyType "Values" TargetProperty = ValueList Prelude.Text
  set newValue TargetProperty {..}
    = TargetProperty {values = newValue, ..}