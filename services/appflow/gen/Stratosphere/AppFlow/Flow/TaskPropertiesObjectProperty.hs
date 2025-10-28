module Stratosphere.AppFlow.Flow.TaskPropertiesObjectProperty (
        TaskPropertiesObjectProperty(..), mkTaskPropertiesObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskPropertiesObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-taskpropertiesobject.html>
    TaskPropertiesObjectProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-taskpropertiesobject.html#cfn-appflow-flow-taskpropertiesobject-key>
                                  key :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-taskpropertiesobject.html#cfn-appflow-flow-taskpropertiesobject-value>
                                  value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskPropertiesObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TaskPropertiesObjectProperty
mkTaskPropertiesObjectProperty key value
  = TaskPropertiesObjectProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties TaskPropertiesObjectProperty where
  toResourceProperties TaskPropertiesObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.TaskPropertiesObject",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON TaskPropertiesObjectProperty where
  toJSON TaskPropertiesObjectProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" TaskPropertiesObjectProperty where
  type PropertyType "Key" TaskPropertiesObjectProperty = Value Prelude.Text
  set newValue TaskPropertiesObjectProperty {..}
    = TaskPropertiesObjectProperty {key = newValue, ..}
instance Property "Value" TaskPropertiesObjectProperty where
  type PropertyType "Value" TaskPropertiesObjectProperty = Value Prelude.Text
  set newValue TaskPropertiesObjectProperty {..}
    = TaskPropertiesObjectProperty {value = newValue, ..}