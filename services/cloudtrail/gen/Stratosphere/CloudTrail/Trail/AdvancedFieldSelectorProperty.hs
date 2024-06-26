module Stratosphere.CloudTrail.Trail.AdvancedFieldSelectorProperty (
        AdvancedFieldSelectorProperty(..), mkAdvancedFieldSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedFieldSelectorProperty
  = AdvancedFieldSelectorProperty {endsWith :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   equals :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   field :: (Value Prelude.Text),
                                   notEndsWith :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   notEquals :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   notStartsWith :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   startsWith :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedFieldSelectorProperty ::
  Value Prelude.Text -> AdvancedFieldSelectorProperty
mkAdvancedFieldSelectorProperty field
  = AdvancedFieldSelectorProperty
      {field = field, endsWith = Prelude.Nothing,
       equals = Prelude.Nothing, notEndsWith = Prelude.Nothing,
       notEquals = Prelude.Nothing, notStartsWith = Prelude.Nothing,
       startsWith = Prelude.Nothing}
instance ToResourceProperties AdvancedFieldSelectorProperty where
  toResourceProperties AdvancedFieldSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail.AdvancedFieldSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Field" JSON..= field]
                           (Prelude.catMaybes
                              [(JSON..=) "EndsWith" Prelude.<$> endsWith,
                               (JSON..=) "Equals" Prelude.<$> equals,
                               (JSON..=) "NotEndsWith" Prelude.<$> notEndsWith,
                               (JSON..=) "NotEquals" Prelude.<$> notEquals,
                               (JSON..=) "NotStartsWith" Prelude.<$> notStartsWith,
                               (JSON..=) "StartsWith" Prelude.<$> startsWith]))}
instance JSON.ToJSON AdvancedFieldSelectorProperty where
  toJSON AdvancedFieldSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Field" JSON..= field]
              (Prelude.catMaybes
                 [(JSON..=) "EndsWith" Prelude.<$> endsWith,
                  (JSON..=) "Equals" Prelude.<$> equals,
                  (JSON..=) "NotEndsWith" Prelude.<$> notEndsWith,
                  (JSON..=) "NotEquals" Prelude.<$> notEquals,
                  (JSON..=) "NotStartsWith" Prelude.<$> notStartsWith,
                  (JSON..=) "StartsWith" Prelude.<$> startsWith])))
instance Property "EndsWith" AdvancedFieldSelectorProperty where
  type PropertyType "EndsWith" AdvancedFieldSelectorProperty = ValueList Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {endsWith = Prelude.pure newValue, ..}
instance Property "Equals" AdvancedFieldSelectorProperty where
  type PropertyType "Equals" AdvancedFieldSelectorProperty = ValueList Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {equals = Prelude.pure newValue, ..}
instance Property "Field" AdvancedFieldSelectorProperty where
  type PropertyType "Field" AdvancedFieldSelectorProperty = Value Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty {field = newValue, ..}
instance Property "NotEndsWith" AdvancedFieldSelectorProperty where
  type PropertyType "NotEndsWith" AdvancedFieldSelectorProperty = ValueList Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {notEndsWith = Prelude.pure newValue, ..}
instance Property "NotEquals" AdvancedFieldSelectorProperty where
  type PropertyType "NotEquals" AdvancedFieldSelectorProperty = ValueList Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {notEquals = Prelude.pure newValue, ..}
instance Property "NotStartsWith" AdvancedFieldSelectorProperty where
  type PropertyType "NotStartsWith" AdvancedFieldSelectorProperty = ValueList Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {notStartsWith = Prelude.pure newValue, ..}
instance Property "StartsWith" AdvancedFieldSelectorProperty where
  type PropertyType "StartsWith" AdvancedFieldSelectorProperty = ValueList Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {startsWith = Prelude.pure newValue, ..}