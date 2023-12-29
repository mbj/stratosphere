module Stratosphere.QuickSight.Dashboard.DataPointTooltipOptionProperty (
        DataPointTooltipOptionProperty(..),
        mkDataPointTooltipOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPointTooltipOptionProperty
  = DataPointTooltipOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPointTooltipOptionProperty :: DataPointTooltipOptionProperty
mkDataPointTooltipOptionProperty
  = DataPointTooltipOptionProperty
      {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties DataPointTooltipOptionProperty where
  toResourceProperties DataPointTooltipOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataPointTooltipOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON DataPointTooltipOptionProperty where
  toJSON DataPointTooltipOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" DataPointTooltipOptionProperty where
  type PropertyType "AvailabilityStatus" DataPointTooltipOptionProperty = Value Prelude.Text
  set newValue DataPointTooltipOptionProperty {}
    = DataPointTooltipOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}