module Stratosphere.AppStream.Entitlement.AttributeProperty (
        AttributeProperty(..), mkAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeProperty
  = AttributeProperty {name :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
mkAttributeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AttributeProperty
mkAttributeProperty name value
  = AttributeProperty {name = name, value = value}
instance ToResourceProperties AttributeProperty where
  toResourceProperties AttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Entitlement.Attribute",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON AttributeProperty where
  toJSON AttributeProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" AttributeProperty where
  type PropertyType "Name" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {name = newValue, ..}
instance Property "Value" AttributeProperty where
  type PropertyType "Value" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {value = newValue, ..}