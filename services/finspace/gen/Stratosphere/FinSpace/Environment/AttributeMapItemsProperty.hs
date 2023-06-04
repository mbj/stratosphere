module Stratosphere.FinSpace.Environment.AttributeMapItemsProperty (
        AttributeMapItemsProperty(..), mkAttributeMapItemsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeMapItemsProperty
  = AttributeMapItemsProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                               value :: (Prelude.Maybe (Value Prelude.Text))}
mkAttributeMapItemsProperty :: AttributeMapItemsProperty
mkAttributeMapItemsProperty
  = AttributeMapItemsProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties AttributeMapItemsProperty where
  toResourceProperties AttributeMapItemsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FinSpace::Environment.AttributeMapItems",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON AttributeMapItemsProperty where
  toJSON AttributeMapItemsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" AttributeMapItemsProperty where
  type PropertyType "Key" AttributeMapItemsProperty = Value Prelude.Text
  set newValue AttributeMapItemsProperty {..}
    = AttributeMapItemsProperty {key = Prelude.pure newValue, ..}
instance Property "Value" AttributeMapItemsProperty where
  type PropertyType "Value" AttributeMapItemsProperty = Value Prelude.Text
  set newValue AttributeMapItemsProperty {..}
    = AttributeMapItemsProperty {value = Prelude.pure newValue, ..}