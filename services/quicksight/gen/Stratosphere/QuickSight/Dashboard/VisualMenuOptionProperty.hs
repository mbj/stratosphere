module Stratosphere.QuickSight.Dashboard.VisualMenuOptionProperty (
        VisualMenuOptionProperty(..), mkVisualMenuOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualMenuOptionProperty
  = VisualMenuOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkVisualMenuOptionProperty :: VisualMenuOptionProperty
mkVisualMenuOptionProperty
  = VisualMenuOptionProperty {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties VisualMenuOptionProperty where
  toResourceProperties VisualMenuOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.VisualMenuOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON VisualMenuOptionProperty where
  toJSON VisualMenuOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" VisualMenuOptionProperty where
  type PropertyType "AvailabilityStatus" VisualMenuOptionProperty = Value Prelude.Text
  set newValue VisualMenuOptionProperty {}
    = VisualMenuOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}