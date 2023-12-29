module Stratosphere.QuickSight.Dashboard.DecimalDefaultValuesProperty (
        module Exports, DecimalDefaultValuesProperty(..),
        mkDecimalDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DynamicDefaultValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalDefaultValuesProperty
  = DecimalDefaultValuesProperty {dynamicValue :: (Prelude.Maybe DynamicDefaultValueProperty),
                                  staticValues :: (Prelude.Maybe (ValueList Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecimalDefaultValuesProperty :: DecimalDefaultValuesProperty
mkDecimalDefaultValuesProperty
  = DecimalDefaultValuesProperty
      {dynamicValue = Prelude.Nothing, staticValues = Prelude.Nothing}
instance ToResourceProperties DecimalDefaultValuesProperty where
  toResourceProperties DecimalDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DecimalDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
                            (JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON DecimalDefaultValuesProperty where
  toJSON DecimalDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
               (JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "DynamicValue" DecimalDefaultValuesProperty where
  type PropertyType "DynamicValue" DecimalDefaultValuesProperty = DynamicDefaultValueProperty
  set newValue DecimalDefaultValuesProperty {..}
    = DecimalDefaultValuesProperty
        {dynamicValue = Prelude.pure newValue, ..}
instance Property "StaticValues" DecimalDefaultValuesProperty where
  type PropertyType "StaticValues" DecimalDefaultValuesProperty = ValueList Prelude.Double
  set newValue DecimalDefaultValuesProperty {..}
    = DecimalDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}