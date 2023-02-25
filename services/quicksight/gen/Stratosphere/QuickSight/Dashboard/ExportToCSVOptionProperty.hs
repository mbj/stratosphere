module Stratosphere.QuickSight.Dashboard.ExportToCSVOptionProperty (
        ExportToCSVOptionProperty(..), mkExportToCSVOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExportToCSVOptionProperty
  = ExportToCSVOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkExportToCSVOptionProperty :: ExportToCSVOptionProperty
mkExportToCSVOptionProperty
  = ExportToCSVOptionProperty {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties ExportToCSVOptionProperty where
  toResourceProperties ExportToCSVOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ExportToCSVOption",
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
  set newValue ExportToCSVOptionProperty {}
    = ExportToCSVOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}