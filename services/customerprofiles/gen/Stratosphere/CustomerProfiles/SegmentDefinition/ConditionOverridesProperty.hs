module Stratosphere.CustomerProfiles.SegmentDefinition.ConditionOverridesProperty (
        module Exports, ConditionOverridesProperty(..),
        mkConditionOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.RangeOverrideProperty as Exports
import Stratosphere.ResourceProperties
data ConditionOverridesProperty
  = ConditionOverridesProperty {range :: (Prelude.Maybe RangeOverrideProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionOverridesProperty :: ConditionOverridesProperty
mkConditionOverridesProperty
  = ConditionOverridesProperty {range = Prelude.Nothing}
instance ToResourceProperties ConditionOverridesProperty where
  toResourceProperties ConditionOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.ConditionOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Range" Prelude.<$> range])}
instance JSON.ToJSON ConditionOverridesProperty where
  toJSON ConditionOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Range" Prelude.<$> range]))
instance Property "Range" ConditionOverridesProperty where
  type PropertyType "Range" ConditionOverridesProperty = RangeOverrideProperty
  set newValue ConditionOverridesProperty {}
    = ConditionOverridesProperty {range = Prelude.pure newValue, ..}