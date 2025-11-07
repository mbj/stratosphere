module Stratosphere.QuickSight.Dashboard.QuickSuiteActionsOptionProperty (
        QuickSuiteActionsOptionProperty(..),
        mkQuickSuiteActionsOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QuickSuiteActionsOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-quicksuiteactionsoption.html>
    QuickSuiteActionsOptionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-quicksuiteactionsoption.html#cfn-quicksight-dashboard-quicksuiteactionsoption-availabilitystatus>
                                     availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuickSuiteActionsOptionProperty ::
  QuickSuiteActionsOptionProperty
mkQuickSuiteActionsOptionProperty
  = QuickSuiteActionsOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties QuickSuiteActionsOptionProperty where
  toResourceProperties QuickSuiteActionsOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.QuickSuiteActionsOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON QuickSuiteActionsOptionProperty where
  toJSON QuickSuiteActionsOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" QuickSuiteActionsOptionProperty where
  type PropertyType "AvailabilityStatus" QuickSuiteActionsOptionProperty = Value Prelude.Text
  set newValue QuickSuiteActionsOptionProperty {..}
    = QuickSuiteActionsOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}