module Stratosphere.QuickSight.Dashboard.DataPointMenuLabelOptionProperty (
        DataPointMenuLabelOptionProperty(..),
        mkDataPointMenuLabelOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPointMenuLabelOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datapointmenulabeloption.html>
    DataPointMenuLabelOptionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datapointmenulabeloption.html#cfn-quicksight-dashboard-datapointmenulabeloption-availabilitystatus>
                                      availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPointMenuLabelOptionProperty ::
  DataPointMenuLabelOptionProperty
mkDataPointMenuLabelOptionProperty
  = DataPointMenuLabelOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties DataPointMenuLabelOptionProperty where
  toResourceProperties DataPointMenuLabelOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataPointMenuLabelOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON DataPointMenuLabelOptionProperty where
  toJSON DataPointMenuLabelOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" DataPointMenuLabelOptionProperty where
  type PropertyType "AvailabilityStatus" DataPointMenuLabelOptionProperty = Value Prelude.Text
  set newValue DataPointMenuLabelOptionProperty {..}
    = DataPointMenuLabelOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}