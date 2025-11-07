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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-exportwithhiddenfieldsoption.html>
    ExportWithHiddenFieldsOptionProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-exportwithhiddenfieldsoption.html#cfn-quicksight-dashboard-exportwithhiddenfieldsoption-availabilitystatus>
                                          availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExportWithHiddenFieldsOptionProperty ::
  ExportWithHiddenFieldsOptionProperty
mkExportWithHiddenFieldsOptionProperty
  = ExportWithHiddenFieldsOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
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
  set newValue ExportWithHiddenFieldsOptionProperty {..}
    = ExportWithHiddenFieldsOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}