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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datapointdrillupdownoption.html>
    DataPointDrillUpDownOptionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datapointdrillupdownoption.html#cfn-quicksight-dashboard-datapointdrillupdownoption-availabilitystatus>
                                        availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPointDrillUpDownOptionProperty ::
  DataPointDrillUpDownOptionProperty
mkDataPointDrillUpDownOptionProperty
  = DataPointDrillUpDownOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
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
  set newValue DataPointDrillUpDownOptionProperty {..}
    = DataPointDrillUpDownOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}