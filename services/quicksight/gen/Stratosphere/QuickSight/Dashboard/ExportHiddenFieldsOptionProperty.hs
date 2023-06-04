module Stratosphere.QuickSight.Dashboard.ExportHiddenFieldsOptionProperty (
        ExportHiddenFieldsOptionProperty(..),
        mkExportHiddenFieldsOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExportHiddenFieldsOptionProperty
  = ExportHiddenFieldsOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkExportHiddenFieldsOptionProperty ::
  ExportHiddenFieldsOptionProperty
mkExportHiddenFieldsOptionProperty
  = ExportHiddenFieldsOptionProperty
      {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties ExportHiddenFieldsOptionProperty where
  toResourceProperties ExportHiddenFieldsOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ExportHiddenFieldsOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON ExportHiddenFieldsOptionProperty where
  toJSON ExportHiddenFieldsOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" ExportHiddenFieldsOptionProperty where
  type PropertyType "AvailabilityStatus" ExportHiddenFieldsOptionProperty = Value Prelude.Text
  set newValue ExportHiddenFieldsOptionProperty {}
    = ExportHiddenFieldsOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}