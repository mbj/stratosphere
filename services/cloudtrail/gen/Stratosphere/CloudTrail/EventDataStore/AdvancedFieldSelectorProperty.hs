module Stratosphere.CloudTrail.EventDataStore.AdvancedFieldSelectorProperty (
        AdvancedFieldSelectorProperty(..), mkAdvancedFieldSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedFieldSelectorProperty
  = AdvancedFieldSelectorProperty {endsWith :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                   equals :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                   field :: (Value Prelude.Text),
                                   notEndsWith :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                   notEquals :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                   notStartsWith :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                   startsWith :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
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
        {awsType = "AWS::CloudTrail::EventDataStore.AdvancedFieldSelector",
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
  type PropertyType "EndsWith" AdvancedFieldSelectorProperty = ValueList (Value Prelude.Text)
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {endsWith = Prelude.pure newValue, ..}
instance Property "Equals" AdvancedFieldSelectorProperty where
  type PropertyType "Equals" AdvancedFieldSelectorProperty = ValueList (Value Prelude.Text)
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {equals = Prelude.pure newValue, ..}
instance Property "Field" AdvancedFieldSelectorProperty where
  type PropertyType "Field" AdvancedFieldSelectorProperty = Value Prelude.Text
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty {field = newValue, ..}
instance Property "NotEndsWith" AdvancedFieldSelectorProperty where
  type PropertyType "NotEndsWith" AdvancedFieldSelectorProperty = ValueList (Value Prelude.Text)
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {notEndsWith = Prelude.pure newValue, ..}
instance Property "NotEquals" AdvancedFieldSelectorProperty where
  type PropertyType "NotEquals" AdvancedFieldSelectorProperty = ValueList (Value Prelude.Text)
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {notEquals = Prelude.pure newValue, ..}
instance Property "NotStartsWith" AdvancedFieldSelectorProperty where
  type PropertyType "NotStartsWith" AdvancedFieldSelectorProperty = ValueList (Value Prelude.Text)
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {notStartsWith = Prelude.pure newValue, ..}
instance Property "StartsWith" AdvancedFieldSelectorProperty where
  type PropertyType "StartsWith" AdvancedFieldSelectorProperty = ValueList (Value Prelude.Text)
  set newValue AdvancedFieldSelectorProperty {..}
    = AdvancedFieldSelectorProperty
        {startsWith = Prelude.pure newValue, ..}