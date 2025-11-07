module Stratosphere.QuickSight.Dashboard.AdHocFilteringOptionProperty (
        AdHocFilteringOptionProperty(..), mkAdHocFilteringOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdHocFilteringOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-adhocfilteringoption.html>
    AdHocFilteringOptionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-adhocfilteringoption.html#cfn-quicksight-dashboard-adhocfilteringoption-availabilitystatus>
                                  availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdHocFilteringOptionProperty :: AdHocFilteringOptionProperty
mkAdHocFilteringOptionProperty
  = AdHocFilteringOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties AdHocFilteringOptionProperty where
  toResourceProperties AdHocFilteringOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AdHocFilteringOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON AdHocFilteringOptionProperty where
  toJSON AdHocFilteringOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" AdHocFilteringOptionProperty where
  type PropertyType "AvailabilityStatus" AdHocFilteringOptionProperty = Value Prelude.Text
  set newValue AdHocFilteringOptionProperty {..}
    = AdHocFilteringOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}