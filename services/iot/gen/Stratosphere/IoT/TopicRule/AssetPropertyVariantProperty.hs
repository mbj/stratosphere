module Stratosphere.IoT.TopicRule.AssetPropertyVariantProperty (
        AssetPropertyVariantProperty(..), mkAssetPropertyVariantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetPropertyVariantProperty
  = AssetPropertyVariantProperty {booleanValue :: (Prelude.Maybe (Value Prelude.Text)),
                                  doubleValue :: (Prelude.Maybe (Value Prelude.Text)),
                                  integerValue :: (Prelude.Maybe (Value Prelude.Text)),
                                  stringValue :: (Prelude.Maybe (Value Prelude.Text))}
mkAssetPropertyVariantProperty :: AssetPropertyVariantProperty
mkAssetPropertyVariantProperty
  = AssetPropertyVariantProperty
      {booleanValue = Prelude.Nothing, doubleValue = Prelude.Nothing,
       integerValue = Prelude.Nothing, stringValue = Prelude.Nothing}
instance ToResourceProperties AssetPropertyVariantProperty where
  toResourceProperties AssetPropertyVariantProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.AssetPropertyVariant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
                            (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                            (JSON..=) "IntegerValue" Prelude.<$> integerValue,
                            (JSON..=) "StringValue" Prelude.<$> stringValue])}
instance JSON.ToJSON AssetPropertyVariantProperty where
  toJSON AssetPropertyVariantProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
               (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
               (JSON..=) "IntegerValue" Prelude.<$> integerValue,
               (JSON..=) "StringValue" Prelude.<$> stringValue]))
instance Property "BooleanValue" AssetPropertyVariantProperty where
  type PropertyType "BooleanValue" AssetPropertyVariantProperty = Value Prelude.Text
  set newValue AssetPropertyVariantProperty {..}
    = AssetPropertyVariantProperty
        {booleanValue = Prelude.pure newValue, ..}
instance Property "DoubleValue" AssetPropertyVariantProperty where
  type PropertyType "DoubleValue" AssetPropertyVariantProperty = Value Prelude.Text
  set newValue AssetPropertyVariantProperty {..}
    = AssetPropertyVariantProperty
        {doubleValue = Prelude.pure newValue, ..}
instance Property "IntegerValue" AssetPropertyVariantProperty where
  type PropertyType "IntegerValue" AssetPropertyVariantProperty = Value Prelude.Text
  set newValue AssetPropertyVariantProperty {..}
    = AssetPropertyVariantProperty
        {integerValue = Prelude.pure newValue, ..}
instance Property "StringValue" AssetPropertyVariantProperty where
  type PropertyType "StringValue" AssetPropertyVariantProperty = Value Prelude.Text
  set newValue AssetPropertyVariantProperty {..}
    = AssetPropertyVariantProperty
        {stringValue = Prelude.pure newValue, ..}