module Stratosphere.QuickSight.Dashboard.VisualMenuOptionProperty (
        VisualMenuOptionProperty(..), mkVisualMenuOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualMenuOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualmenuoption.html>
    VisualMenuOptionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualmenuoption.html#cfn-quicksight-dashboard-visualmenuoption-availabilitystatus>
                              availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualMenuOptionProperty :: VisualMenuOptionProperty
mkVisualMenuOptionProperty
  = VisualMenuOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
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
  set newValue VisualMenuOptionProperty {..}
    = VisualMenuOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}