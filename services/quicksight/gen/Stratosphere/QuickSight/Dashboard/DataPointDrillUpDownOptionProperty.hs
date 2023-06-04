module Stratosphere.QuickSight.Dashboard.DataPointDrillUpDownOptionProperty (
        DataPointDrillUpDownOptionProperty(..),
        mkDataPointDrillUpDownOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPointDrillUpDownOptionProperty
  = DataPointDrillUpDownOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkDataPointDrillUpDownOptionProperty ::
  DataPointDrillUpDownOptionProperty
mkDataPointDrillUpDownOptionProperty
  = DataPointDrillUpDownOptionProperty
      {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties DataPointDrillUpDownOptionProperty where
  toResourceProperties DataPointDrillUpDownOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataPointDrillUpDownOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON DataPointDrillUpDownOptionProperty where
  toJSON DataPointDrillUpDownOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" DataPointDrillUpDownOptionProperty where
  type PropertyType "AvailabilityStatus" DataPointDrillUpDownOptionProperty = Value Prelude.Text
  set newValue DataPointDrillUpDownOptionProperty {}
    = DataPointDrillUpDownOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}