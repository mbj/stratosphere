module Stratosphere.AppFlow.Flow.TaskPropertiesObjectProperty (
        TaskPropertiesObjectProperty(..), mkTaskPropertiesObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskPropertiesObjectProperty
  = TaskPropertiesObjectProperty {key :: (Value Prelude.Text),
                                  value :: (Value Prelude.Text)}
mkTaskPropertiesObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TaskPropertiesObjectProperty
mkTaskPropertiesObjectProperty key value
  = TaskPropertiesObjectProperty {key = key, value = value}
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