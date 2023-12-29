module Stratosphere.QuickSight.Dashboard.VisualAxisSortOptionProperty (
        VisualAxisSortOptionProperty(..), mkVisualAxisSortOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualAxisSortOptionProperty
  = VisualAxisSortOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualAxisSortOptionProperty :: VisualAxisSortOptionProperty
mkVisualAxisSortOptionProperty
  = VisualAxisSortOptionProperty
      {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties VisualAxisSortOptionProperty where
  toResourceProperties VisualAxisSortOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.VisualAxisSortOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON VisualAxisSortOptionProperty where
  toJSON VisualAxisSortOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" VisualAxisSortOptionProperty where
  type PropertyType "AvailabilityStatus" VisualAxisSortOptionProperty = Value Prelude.Text
  set newValue VisualAxisSortOptionProperty {}
    = VisualAxisSortOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}