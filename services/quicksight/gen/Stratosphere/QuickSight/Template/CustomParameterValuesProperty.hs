module Stratosphere.QuickSight.Template.CustomParameterValuesProperty (
        CustomParameterValuesProperty(..), mkCustomParameterValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomParameterValuesProperty
  = CustomParameterValuesProperty {dateTimeValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   decimalValues :: (Prelude.Maybe (ValueList Prelude.Double)),
                                   integerValues :: (Prelude.Maybe (ValueList Prelude.Double)),
                                   stringValues :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomParameterValuesProperty :: CustomParameterValuesProperty
mkCustomParameterValuesProperty
  = CustomParameterValuesProperty
      {dateTimeValues = Prelude.Nothing, decimalValues = Prelude.Nothing,
       integerValues = Prelude.Nothing, stringValues = Prelude.Nothing}
instance ToResourceProperties CustomParameterValuesProperty where
  toResourceProperties CustomParameterValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomParameterValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeValues" Prelude.<$> dateTimeValues,
                            (JSON..=) "DecimalValues" Prelude.<$> decimalValues,
                            (JSON..=) "IntegerValues" Prelude.<$> integerValues,
                            (JSON..=) "StringValues" Prelude.<$> stringValues])}
instance JSON.ToJSON CustomParameterValuesProperty where
  toJSON CustomParameterValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeValues" Prelude.<$> dateTimeValues,
               (JSON..=) "DecimalValues" Prelude.<$> decimalValues,
               (JSON..=) "IntegerValues" Prelude.<$> integerValues,
               (JSON..=) "StringValues" Prelude.<$> stringValues]))
instance Property "DateTimeValues" CustomParameterValuesProperty where
  type PropertyType "DateTimeValues" CustomParameterValuesProperty = ValueList Prelude.Text
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {dateTimeValues = Prelude.pure newValue, ..}
instance Property "DecimalValues" CustomParameterValuesProperty where
  type PropertyType "DecimalValues" CustomParameterValuesProperty = ValueList Prelude.Double
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {decimalValues = Prelude.pure newValue, ..}
instance Property "IntegerValues" CustomParameterValuesProperty where
  type PropertyType "IntegerValues" CustomParameterValuesProperty = ValueList Prelude.Double
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {integerValues = Prelude.pure newValue, ..}
instance Property "StringValues" CustomParameterValuesProperty where
  type PropertyType "StringValues" CustomParameterValuesProperty = ValueList Prelude.Text
  set newValue CustomParameterValuesProperty {..}
    = CustomParameterValuesProperty
        {stringValues = Prelude.pure newValue, ..}