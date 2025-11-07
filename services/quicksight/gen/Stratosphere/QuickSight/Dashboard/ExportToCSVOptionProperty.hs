module Stratosphere.QuickSight.Dashboard.ExportToCSVOptionProperty (
        ExportToCSVOptionProperty(..), mkExportToCSVOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExportToCSVOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-exporttocsvoption.html>
    ExportToCSVOptionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-exporttocsvoption.html#cfn-quicksight-dashboard-exporttocsvoption-availabilitystatus>
                               availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExportToCSVOptionProperty :: ExportToCSVOptionProperty
mkExportToCSVOptionProperty
  = ExportToCSVOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
instance ToResourceProperties ExportToCSVOptionProperty where
  toResourceProperties ExportToCSVOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ExportToCSVOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON ExportToCSVOptionProperty where
  toJSON ExportToCSVOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" ExportToCSVOptionProperty where
  type PropertyType "AvailabilityStatus" ExportToCSVOptionProperty = Value Prelude.Text
  set newValue ExportToCSVOptionProperty {..}
    = ExportToCSVOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}