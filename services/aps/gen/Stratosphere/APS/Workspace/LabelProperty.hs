module Stratosphere.APS.Workspace.LabelProperty (
        LabelProperty(..), mkLabelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-label.html>
    LabelProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-label.html#cfn-aps-workspace-label-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-label.html#cfn-aps-workspace-label-value>
                   value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LabelProperty
mkLabelProperty name value
  = LabelProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties LabelProperty where
  toResourceProperties LabelProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.Label",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON LabelProperty where
  toJSON LabelProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" LabelProperty where
  type PropertyType "Name" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {name = newValue, ..}
instance Property "Value" LabelProperty where
  type PropertyType "Value" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {value = newValue, ..}