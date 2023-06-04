module Stratosphere.QuickSight.Analysis.RangeEndsLabelTypeProperty (
        RangeEndsLabelTypeProperty(..), mkRangeEndsLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeEndsLabelTypeProperty
  = RangeEndsLabelTypeProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkRangeEndsLabelTypeProperty :: RangeEndsLabelTypeProperty
mkRangeEndsLabelTypeProperty
  = RangeEndsLabelTypeProperty {visibility = Prelude.Nothing}
instance ToResourceProperties RangeEndsLabelTypeProperty where
  toResourceProperties RangeEndsLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RangeEndsLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON RangeEndsLabelTypeProperty where
  toJSON RangeEndsLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" RangeEndsLabelTypeProperty where
  type PropertyType "Visibility" RangeEndsLabelTypeProperty = Value Prelude.Text
  set newValue RangeEndsLabelTypeProperty {}
    = RangeEndsLabelTypeProperty
        {visibility = Prelude.pure newValue, ..}