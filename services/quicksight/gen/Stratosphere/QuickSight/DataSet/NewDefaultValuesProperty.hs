module Stratosphere.QuickSight.DataSet.NewDefaultValuesProperty (
        NewDefaultValuesProperty(..), mkNewDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NewDefaultValuesProperty
  = NewDefaultValuesProperty {dateTimeStaticValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                              decimalStaticValues :: (Prelude.Maybe (ValueList Prelude.Double)),
                              integerStaticValues :: (Prelude.Maybe (ValueList Prelude.Double)),
                              stringStaticValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNewDefaultValuesProperty :: NewDefaultValuesProperty
mkNewDefaultValuesProperty
  = NewDefaultValuesProperty
      {dateTimeStaticValues = Prelude.Nothing,
       decimalStaticValues = Prelude.Nothing,
       integerStaticValues = Prelude.Nothing,
       stringStaticValues = Prelude.Nothing}
instance ToResourceProperties NewDefaultValuesProperty where
  toResourceProperties NewDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.NewDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeStaticValues" Prelude.<$> dateTimeStaticValues,
                            (JSON..=) "DecimalStaticValues" Prelude.<$> decimalStaticValues,
                            (JSON..=) "IntegerStaticValues" Prelude.<$> integerStaticValues,
                            (JSON..=) "StringStaticValues" Prelude.<$> stringStaticValues])}
instance JSON.ToJSON NewDefaultValuesProperty where
  toJSON NewDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeStaticValues" Prelude.<$> dateTimeStaticValues,
               (JSON..=) "DecimalStaticValues" Prelude.<$> decimalStaticValues,
               (JSON..=) "IntegerStaticValues" Prelude.<$> integerStaticValues,
               (JSON..=) "StringStaticValues" Prelude.<$> stringStaticValues]))
instance Property "DateTimeStaticValues" NewDefaultValuesProperty where
  type PropertyType "DateTimeStaticValues" NewDefaultValuesProperty = ValueList Prelude.Text
  set newValue NewDefaultValuesProperty {..}
    = NewDefaultValuesProperty
        {dateTimeStaticValues = Prelude.pure newValue, ..}
instance Property "DecimalStaticValues" NewDefaultValuesProperty where
  type PropertyType "DecimalStaticValues" NewDefaultValuesProperty = ValueList Prelude.Double
  set newValue NewDefaultValuesProperty {..}
    = NewDefaultValuesProperty
        {decimalStaticValues = Prelude.pure newValue, ..}
instance Property "IntegerStaticValues" NewDefaultValuesProperty where
  type PropertyType "IntegerStaticValues" NewDefaultValuesProperty = ValueList Prelude.Double
  set newValue NewDefaultValuesProperty {..}
    = NewDefaultValuesProperty
        {integerStaticValues = Prelude.pure newValue, ..}
instance Property "StringStaticValues" NewDefaultValuesProperty where
  type PropertyType "StringStaticValues" NewDefaultValuesProperty = ValueList Prelude.Text
  set newValue NewDefaultValuesProperty {..}
    = NewDefaultValuesProperty
        {stringStaticValues = Prelude.pure newValue, ..}