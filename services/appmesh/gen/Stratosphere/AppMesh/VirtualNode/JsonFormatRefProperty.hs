module Stratosphere.AppMesh.VirtualNode.JsonFormatRefProperty (
        JsonFormatRefProperty(..), mkJsonFormatRefProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonFormatRefProperty
  = JsonFormatRefProperty {key :: (Value Prelude.Text),
                           value :: (Value Prelude.Text)}
mkJsonFormatRefProperty ::
  Value Prelude.Text -> Value Prelude.Text -> JsonFormatRefProperty
mkJsonFormatRefProperty key value
  = JsonFormatRefProperty {key = key, value = value}
instance ToResourceProperties JsonFormatRefProperty where
  toResourceProperties JsonFormatRefProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.JsonFormatRef",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON JsonFormatRefProperty where
  toJSON JsonFormatRefProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" JsonFormatRefProperty where
  type PropertyType "Key" JsonFormatRefProperty = Value Prelude.Text
  set newValue JsonFormatRefProperty {..}
    = JsonFormatRefProperty {key = newValue, ..}
instance Property "Value" JsonFormatRefProperty where
  type PropertyType "Value" JsonFormatRefProperty = Value Prelude.Text
  set newValue JsonFormatRefProperty {..}
    = JsonFormatRefProperty {value = newValue, ..}