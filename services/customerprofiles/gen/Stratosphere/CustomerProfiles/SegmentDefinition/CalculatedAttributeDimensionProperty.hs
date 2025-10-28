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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-calculatedattributedimension.html>
    CalculatedAttributeDimensionProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-calculatedattributedimension.html#cfn-customerprofiles-segmentdefinition-calculatedattributedimension-conditionoverrides>
                                          conditionOverrides :: (Prelude.Maybe ConditionOverridesProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-calculatedattributedimension.html#cfn-customerprofiles-segmentdefinition-calculatedattributedimension-dimensiontype>
                                          dimensionType :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-calculatedattributedimension.html#cfn-customerprofiles-segmentdefinition-calculatedattributedimension-values>
                                          values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalculatedAttributeDimensionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> CalculatedAttributeDimensionProperty
mkCalculatedAttributeDimensionProperty dimensionType values
  = CalculatedAttributeDimensionProperty
      {haddock_workaround_ = (), dimensionType = dimensionType,
       values = values, conditionOverrides = Prelude.Nothing}
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