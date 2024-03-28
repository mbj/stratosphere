module Stratosphere.Connect.Rule.FieldValueProperty (
        FieldValueProperty(..), mkFieldValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldValueProperty
  = FieldValueProperty {booleanValue :: (Prelude.Maybe (Value Prelude.Bool)),
                        doubleValue :: (Prelude.Maybe (Value Prelude.Double)),
                        emptyValue :: (Prelude.Maybe JSON.Object),
                        stringValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldValueProperty :: FieldValueProperty
mkFieldValueProperty
  = FieldValueProperty
      {booleanValue = Prelude.Nothing, doubleValue = Prelude.Nothing,
       emptyValue = Prelude.Nothing, stringValue = Prelude.Nothing}
instance ToResourceProperties FieldValueProperty where
  toResourceProperties FieldValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.FieldValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
                            (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                            (JSON..=) "EmptyValue" Prelude.<$> emptyValue,
                            (JSON..=) "StringValue" Prelude.<$> stringValue])}
instance JSON.ToJSON FieldValueProperty where
  toJSON FieldValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
               (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
               (JSON..=) "EmptyValue" Prelude.<$> emptyValue,
               (JSON..=) "StringValue" Prelude.<$> stringValue]))
instance Property "BooleanValue" FieldValueProperty where
  type PropertyType "BooleanValue" FieldValueProperty = Value Prelude.Bool
  set newValue FieldValueProperty {..}
    = FieldValueProperty {booleanValue = Prelude.pure newValue, ..}
instance Property "DoubleValue" FieldValueProperty where
  type PropertyType "DoubleValue" FieldValueProperty = Value Prelude.Double
  set newValue FieldValueProperty {..}
    = FieldValueProperty {doubleValue = Prelude.pure newValue, ..}
instance Property "EmptyValue" FieldValueProperty where
  type PropertyType "EmptyValue" FieldValueProperty = JSON.Object
  set newValue FieldValueProperty {..}
    = FieldValueProperty {emptyValue = Prelude.pure newValue, ..}
instance Property "StringValue" FieldValueProperty where
  type PropertyType "StringValue" FieldValueProperty = Value Prelude.Text
  set newValue FieldValueProperty {..}
    = FieldValueProperty {stringValue = Prelude.pure newValue, ..}