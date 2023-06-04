module Stratosphere.QuickSight.Dashboard.ExportWithHiddenFieldsOptionProperty (
        ExportWithHiddenFieldsOptionProperty(..),
        mkExportWithHiddenFieldsOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExportWithHiddenFieldsOptionProperty
  = ExportWithHiddenFieldsOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkExportWithHiddenFieldsOptionProperty ::
  ExportWithHiddenFieldsOptionProperty
mkExportWithHiddenFieldsOptionProperty
  = ExportWithHiddenFieldsOptionProperty
      {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties ExportWithHiddenFieldsOptionProperty where
  toResourceProperties ExportWithHiddenFieldsOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ExportWithHiddenFieldsOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON ExportWithHiddenFieldsOptionProperty where
  toJSON ExportWithHiddenFieldsOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" ExportWithHiddenFieldsOptionProperty where
  type PropertyType "AvailabilityStatus" ExportWithHiddenFieldsOptionProperty = Value Prelude.Text
  set newValue ExportWithHiddenFieldsOptionProperty {}
    = ExportWithHiddenFieldsOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}