module Stratosphere.Forecast.Dataset.AttributesItemsProperty (
        AttributesItemsProperty(..), mkAttributesItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributesItemsProperty
  = AttributesItemsProperty {attributeName :: (Prelude.Maybe (Value Prelude.Text)),
                             attributeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributesItemsProperty :: AttributesItemsProperty
mkAttributesItemsProperty
  = AttributesItemsProperty
      {attributeName = Prelude.Nothing, attributeType = Prelude.Nothing}
instance ToResourceProperties AttributesItemsProperty where
  toResourceProperties AttributesItemsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::Dataset.AttributesItems",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributeName" Prelude.<$> attributeName,
                            (JSON..=) "AttributeType" Prelude.<$> attributeType])}
instance JSON.ToJSON AttributesItemsProperty where
  toJSON AttributesItemsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributeName" Prelude.<$> attributeName,
               (JSON..=) "AttributeType" Prelude.<$> attributeType]))
instance Property "AttributeName" AttributesItemsProperty where
  type PropertyType "AttributeName" AttributesItemsProperty = Value Prelude.Text
  set newValue AttributesItemsProperty {..}
    = AttributesItemsProperty
        {attributeName = Prelude.pure newValue, ..}
instance Property "AttributeType" AttributesItemsProperty where
  type PropertyType "AttributeType" AttributesItemsProperty = Value Prelude.Text
  set newValue AttributesItemsProperty {..}
    = AttributesItemsProperty
        {attributeType = Prelude.pure newValue, ..}