module Stratosphere.CustomerProfiles.SegmentDefinition.CalculatedAttributeDimensionProperty (
        module Exports, CalculatedAttributeDimensionProperty(..),
        mkCalculatedAttributeDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.ConditionOverridesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalculatedAttributeDimensionProperty
  = CalculatedAttributeDimensionProperty {conditionOverrides :: (Prelude.Maybe ConditionOverridesProperty),
                                          dimensionType :: (Value Prelude.Text),
                                          values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalculatedAttributeDimensionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> CalculatedAttributeDimensionProperty
mkCalculatedAttributeDimensionProperty dimensionType values
  = CalculatedAttributeDimensionProperty
      {dimensionType = dimensionType, values = values,
       conditionOverrides = Prelude.Nothing}
instance ToResourceProperties CalculatedAttributeDimensionProperty where
  toResourceProperties CalculatedAttributeDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.CalculatedAttributeDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DimensionType" JSON..= dimensionType, "Values" JSON..= values]
                           (Prelude.catMaybes
                              [(JSON..=) "ConditionOverrides" Prelude.<$> conditionOverrides]))}
instance JSON.ToJSON CalculatedAttributeDimensionProperty where
  toJSON CalculatedAttributeDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DimensionType" JSON..= dimensionType, "Values" JSON..= values]
              (Prelude.catMaybes
                 [(JSON..=) "ConditionOverrides" Prelude.<$> conditionOverrides])))
instance Property "ConditionOverrides" CalculatedAttributeDimensionProperty where
  type PropertyType "ConditionOverrides" CalculatedAttributeDimensionProperty = ConditionOverridesProperty
  set newValue CalculatedAttributeDimensionProperty {..}
    = CalculatedAttributeDimensionProperty
        {conditionOverrides = Prelude.pure newValue, ..}
instance Property "DimensionType" CalculatedAttributeDimensionProperty where
  type PropertyType "DimensionType" CalculatedAttributeDimensionProperty = Value Prelude.Text
  set newValue CalculatedAttributeDimensionProperty {..}
    = CalculatedAttributeDimensionProperty
        {dimensionType = newValue, ..}
instance Property "Values" CalculatedAttributeDimensionProperty where
  type PropertyType "Values" CalculatedAttributeDimensionProperty = ValueList Prelude.Text
  set newValue CalculatedAttributeDimensionProperty {..}
    = CalculatedAttributeDimensionProperty {values = newValue, ..}