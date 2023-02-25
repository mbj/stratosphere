module Stratosphere.CustomerProfiles.Integration.ObjectTypeMappingProperty (
        ObjectTypeMappingProperty(..), mkObjectTypeMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectTypeMappingProperty
  = ObjectTypeMappingProperty {key :: (Value Prelude.Text),
                               value :: (Value Prelude.Text)}
mkObjectTypeMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ObjectTypeMappingProperty
mkObjectTypeMappingProperty key value
  = ObjectTypeMappingProperty {key = key, value = value}
instance ToResourceProperties ObjectTypeMappingProperty where
  toResourceProperties ObjectTypeMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.ObjectTypeMapping",
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON ObjectTypeMappingProperty where
  toJSON ObjectTypeMappingProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" ObjectTypeMappingProperty where
  type PropertyType "Key" ObjectTypeMappingProperty = Value Prelude.Text
  set newValue ObjectTypeMappingProperty {..}
    = ObjectTypeMappingProperty {key = newValue, ..}
instance Property "Value" ObjectTypeMappingProperty where
  type PropertyType "Value" ObjectTypeMappingProperty = Value Prelude.Text
  set newValue ObjectTypeMappingProperty {..}
    = ObjectTypeMappingProperty {value = newValue, ..}