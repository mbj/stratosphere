module Stratosphere.QuickSight.Dashboard.ExecutiveSummaryOptionProperty (
        ExecutiveSummaryOptionProperty(..),
        mkExecutiveSummaryOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecutiveSummaryOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-executivesummaryoption.html>
    ExecutiveSummaryOptionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-executivesummaryoption.html#cfn-quicksight-dashboard-executivesummaryoption-availabilitystatus>
                                    availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutiveSummaryOptionProperty :: ExecutiveSummaryOptionProperty
mkExecutiveSummaryOptionProperty
  = ExecutiveSummaryOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties ExecutiveSummaryOptionProperty where
  toResourceProperties ExecutiveSummaryOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ExecutiveSummaryOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON ExecutiveSummaryOptionProperty where
  toJSON ExecutiveSummaryOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" ExecutiveSummaryOptionProperty where
  type PropertyType "AvailabilityStatus" ExecutiveSummaryOptionProperty = Value Prelude.Text
  set newValue ExecutiveSummaryOptionProperty {..}
    = ExecutiveSummaryOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}