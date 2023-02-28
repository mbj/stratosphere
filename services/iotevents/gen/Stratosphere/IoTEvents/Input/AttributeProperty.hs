module Stratosphere.IoTEvents.Input.AttributeProperty (
        AttributeProperty(..), mkAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeProperty
  = AttributeProperty {jsonPath :: (Value Prelude.Text)}
mkAttributeProperty :: Value Prelude.Text -> AttributeProperty
mkAttributeProperty jsonPath
  = AttributeProperty {jsonPath = jsonPath}
instance ToResourceProperties AttributeProperty where
  toResourceProperties AttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::Input.Attribute",
         supportsTags = Prelude.False,
         properties = ["JsonPath" JSON..= jsonPath]}
instance JSON.ToJSON AttributeProperty where
  toJSON AttributeProperty {..}
    = JSON.object ["JsonPath" JSON..= jsonPath]
instance Property "JsonPath" AttributeProperty where
  type PropertyType "JsonPath" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {}
    = AttributeProperty {jsonPath = newValue, ..}