module Stratosphere.QuickSight.Analysis.FilterSelectableValuesProperty (
        FilterSelectableValuesProperty(..),
        mkFilterSelectableValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterSelectableValuesProperty
  = FilterSelectableValuesProperty {values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterSelectableValuesProperty :: FilterSelectableValuesProperty
mkFilterSelectableValuesProperty
  = FilterSelectableValuesProperty {values = Prelude.Nothing}
instance ToResourceProperties FilterSelectableValuesProperty where
  toResourceProperties FilterSelectableValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterSelectableValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON FilterSelectableValuesProperty where
  toJSON FilterSelectableValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" FilterSelectableValuesProperty where
  type PropertyType "Values" FilterSelectableValuesProperty = ValueList Prelude.Text
  set newValue FilterSelectableValuesProperty {}
    = FilterSelectableValuesProperty
        {values = Prelude.pure newValue, ..}