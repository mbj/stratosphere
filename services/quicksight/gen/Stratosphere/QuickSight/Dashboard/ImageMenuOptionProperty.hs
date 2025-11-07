module Stratosphere.QuickSight.Dashboard.ImageMenuOptionProperty (
        ImageMenuOptionProperty(..), mkImageMenuOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageMenuOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-imagemenuoption.html>
    ImageMenuOptionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-imagemenuoption.html#cfn-quicksight-dashboard-imagemenuoption-availabilitystatus>
                             availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageMenuOptionProperty :: ImageMenuOptionProperty
mkImageMenuOptionProperty
  = ImageMenuOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties ImageMenuOptionProperty where
  toResourceProperties ImageMenuOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ImageMenuOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON ImageMenuOptionProperty where
  toJSON ImageMenuOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" ImageMenuOptionProperty where
  type PropertyType "AvailabilityStatus" ImageMenuOptionProperty = Value Prelude.Text
  set newValue ImageMenuOptionProperty {..}
    = ImageMenuOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}