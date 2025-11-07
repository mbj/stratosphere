module Stratosphere.QuickSight.Dashboard.ContextMenuOptionProperty (
        ContextMenuOptionProperty(..), mkContextMenuOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContextMenuOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-contextmenuoption.html>
    ContextMenuOptionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-contextmenuoption.html#cfn-quicksight-dashboard-contextmenuoption-availabilitystatus>
                               availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContextMenuOptionProperty :: ContextMenuOptionProperty
mkContextMenuOptionProperty
  = ContextMenuOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties ContextMenuOptionProperty where
  toResourceProperties ContextMenuOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ContextMenuOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON ContextMenuOptionProperty where
  toJSON ContextMenuOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" ContextMenuOptionProperty where
  type PropertyType "AvailabilityStatus" ContextMenuOptionProperty = Value Prelude.Text
  set newValue ContextMenuOptionProperty {..}
    = ContextMenuOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}