module Stratosphere.QuickSight.Dashboard.VisualAxisSortOptionProperty (
        VisualAxisSortOptionProperty(..), mkVisualAxisSortOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualAxisSortOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualaxissortoption.html>
    VisualAxisSortOptionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualaxissortoption.html#cfn-quicksight-dashboard-visualaxissortoption-availabilitystatus>
                                  availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualAxisSortOptionProperty :: VisualAxisSortOptionProperty
mkVisualAxisSortOptionProperty
  = VisualAxisSortOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
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
  set newValue VisualAxisSortOptionProperty {..}
    = VisualAxisSortOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}