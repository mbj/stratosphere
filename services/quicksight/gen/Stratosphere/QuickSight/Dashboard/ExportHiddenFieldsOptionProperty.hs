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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-exporthiddenfieldsoption.html>
    ExportHiddenFieldsOptionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-exporthiddenfieldsoption.html#cfn-quicksight-dashboard-exporthiddenfieldsoption-availabilitystatus>
                                      availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExportHiddenFieldsOptionProperty ::
  ExportHiddenFieldsOptionProperty
mkExportHiddenFieldsOptionProperty
  = ExportHiddenFieldsOptionProperty
      {haddock_workaround_ = (), availabilityStatus = Prelude.Nothing}
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
  set newValue ExportHiddenFieldsOptionProperty {..}
    = ExportHiddenFieldsOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}