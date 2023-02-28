module Stratosphere.Evidently.Feature.VariationObjectProperty (
        VariationObjectProperty(..), mkVariationObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariationObjectProperty
  = VariationObjectProperty {booleanValue :: (Prelude.Maybe (Value Prelude.Bool)),
                             doubleValue :: (Prelude.Maybe (Value Prelude.Double)),
                             longValue :: (Prelude.Maybe (Value Prelude.Double)),
                             stringValue :: (Prelude.Maybe (Value Prelude.Text)),
                             variationName :: (Value Prelude.Text)}
mkVariationObjectProperty ::
  Value Prelude.Text -> VariationObjectProperty
mkVariationObjectProperty variationName
  = VariationObjectProperty
      {variationName = variationName, booleanValue = Prelude.Nothing,
       doubleValue = Prelude.Nothing, longValue = Prelude.Nothing,
       stringValue = Prelude.Nothing}
instance ToResourceProperties VariationObjectProperty where
  toResourceProperties VariationObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Feature.VariationObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VariationName" JSON..= variationName]
                           (Prelude.catMaybes
                              [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
                               (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                               (JSON..=) "LongValue" Prelude.<$> longValue,
                               (JSON..=) "StringValue" Prelude.<$> stringValue]))}
instance JSON.ToJSON VariationObjectProperty where
  toJSON VariationObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VariationName" JSON..= variationName]
              (Prelude.catMaybes
                 [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
                  (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                  (JSON..=) "LongValue" Prelude.<$> longValue,
                  (JSON..=) "StringValue" Prelude.<$> stringValue])))
instance Property "BooleanValue" VariationObjectProperty where
  type PropertyType "BooleanValue" VariationObjectProperty = Value Prelude.Bool
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty
        {booleanValue = Prelude.pure newValue, ..}
instance Property "DoubleValue" VariationObjectProperty where
  type PropertyType "DoubleValue" VariationObjectProperty = Value Prelude.Double
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {doubleValue = Prelude.pure newValue, ..}
instance Property "LongValue" VariationObjectProperty where
  type PropertyType "LongValue" VariationObjectProperty = Value Prelude.Double
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {longValue = Prelude.pure newValue, ..}
instance Property "StringValue" VariationObjectProperty where
  type PropertyType "StringValue" VariationObjectProperty = Value Prelude.Text
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {stringValue = Prelude.pure newValue, ..}
instance Property "VariationName" VariationObjectProperty where
  type PropertyType "VariationName" VariationObjectProperty = Value Prelude.Text
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {variationName = newValue, ..}