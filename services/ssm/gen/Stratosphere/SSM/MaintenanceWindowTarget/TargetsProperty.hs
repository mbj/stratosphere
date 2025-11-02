module Stratosphere.SSM.MaintenanceWindowTarget.TargetsProperty (
        TargetsProperty(..), mkTargetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html>
    TargetsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-key>
                     key :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-values>
                     values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetsProperty ::
  Value Prelude.Text -> ValueList Prelude.Text -> TargetsProperty
mkTargetsProperty key values
  = TargetsProperty
      {haddock_workaround_ = (), key = key, values = values}
instance ToResourceProperties TargetsProperty where
  toResourceProperties TargetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTarget.Targets",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Values" JSON..= values]}
instance JSON.ToJSON TargetsProperty where
  toJSON TargetsProperty {..}
    = JSON.object ["Key" JSON..= key, "Values" JSON..= values]
instance Property "Key" TargetsProperty where
  type PropertyType "Key" TargetsProperty = Value Prelude.Text
  set newValue TargetsProperty {..}
    = TargetsProperty {key = newValue, ..}
instance Property "Values" TargetsProperty where
  type PropertyType "Values" TargetsProperty = ValueList Prelude.Text
  set newValue TargetsProperty {..}
    = TargetsProperty {values = newValue, ..}