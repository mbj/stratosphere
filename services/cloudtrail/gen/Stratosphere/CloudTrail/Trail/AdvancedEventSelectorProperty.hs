module Stratosphere.CloudTrail.Trail.AdvancedEventSelectorProperty (
        module Exports, AdvancedEventSelectorProperty(..),
        mkAdvancedEventSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.Trail.AdvancedFieldSelectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedEventSelectorProperty
  = AdvancedEventSelectorProperty {fieldSelectors :: [AdvancedFieldSelectorProperty],
                                   name :: (Prelude.Maybe (Value Prelude.Text))}
mkAdvancedEventSelectorProperty ::
  [AdvancedFieldSelectorProperty] -> AdvancedEventSelectorProperty
mkAdvancedEventSelectorProperty fieldSelectors
  = AdvancedEventSelectorProperty
      {fieldSelectors = fieldSelectors, name = Prelude.Nothing}
instance ToResourceProperties AdvancedEventSelectorProperty where
  toResourceProperties AdvancedEventSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail.AdvancedEventSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldSelectors" JSON..= fieldSelectors]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON AdvancedEventSelectorProperty where
  toJSON AdvancedEventSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldSelectors" JSON..= fieldSelectors]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "FieldSelectors" AdvancedEventSelectorProperty where
  type PropertyType "FieldSelectors" AdvancedEventSelectorProperty = [AdvancedFieldSelectorProperty]
  set newValue AdvancedEventSelectorProperty {..}
    = AdvancedEventSelectorProperty {fieldSelectors = newValue, ..}
instance Property "Name" AdvancedEventSelectorProperty where
  type PropertyType "Name" AdvancedEventSelectorProperty = Value Prelude.Text
  set newValue AdvancedEventSelectorProperty {..}
    = AdvancedEventSelectorProperty {name = Prelude.pure newValue, ..}