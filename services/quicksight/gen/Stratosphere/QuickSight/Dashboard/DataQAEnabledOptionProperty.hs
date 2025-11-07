module Stratosphere.QuickSight.Dashboard.DataQAEnabledOptionProperty (
        DataQAEnabledOptionProperty(..), mkDataQAEnabledOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataQAEnabledOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dataqaenabledoption.html>
    DataQAEnabledOptionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dataqaenabledoption.html#cfn-quicksight-dashboard-dataqaenabledoption-availabilitystatus>
                                 availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataQAEnabledOptionProperty :: DataQAEnabledOptionProperty
mkDataQAEnabledOptionProperty
  = DataQAEnabledOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties DataQAEnabledOptionProperty where
  toResourceProperties DataQAEnabledOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataQAEnabledOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON DataQAEnabledOptionProperty where
  toJSON DataQAEnabledOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" DataQAEnabledOptionProperty where
  type PropertyType "AvailabilityStatus" DataQAEnabledOptionProperty = Value Prelude.Text
  set newValue DataQAEnabledOptionProperty {..}
    = DataQAEnabledOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}