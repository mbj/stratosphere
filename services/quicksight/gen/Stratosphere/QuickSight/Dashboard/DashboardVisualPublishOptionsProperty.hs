module Stratosphere.QuickSight.Dashboard.DashboardVisualPublishOptionsProperty (
        module Exports, DashboardVisualPublishOptionsProperty(..),
        mkDashboardVisualPublishOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExportHiddenFieldsOptionProperty as Exports
import Stratosphere.ResourceProperties
data DashboardVisualPublishOptionsProperty
  = DashboardVisualPublishOptionsProperty {exportHiddenFieldsOption :: (Prelude.Maybe ExportHiddenFieldsOptionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardVisualPublishOptionsProperty ::
  DashboardVisualPublishOptionsProperty
mkDashboardVisualPublishOptionsProperty
  = DashboardVisualPublishOptionsProperty
      {exportHiddenFieldsOption = Prelude.Nothing}
instance ToResourceProperties DashboardVisualPublishOptionsProperty where
  toResourceProperties DashboardVisualPublishOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardVisualPublishOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExportHiddenFieldsOption"
                              Prelude.<$> exportHiddenFieldsOption])}
instance JSON.ToJSON DashboardVisualPublishOptionsProperty where
  toJSON DashboardVisualPublishOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExportHiddenFieldsOption"
                 Prelude.<$> exportHiddenFieldsOption]))
instance Property "ExportHiddenFieldsOption" DashboardVisualPublishOptionsProperty where
  type PropertyType "ExportHiddenFieldsOption" DashboardVisualPublishOptionsProperty = ExportHiddenFieldsOptionProperty
  set newValue DashboardVisualPublishOptionsProperty {}
    = DashboardVisualPublishOptionsProperty
        {exportHiddenFieldsOption = Prelude.pure newValue, ..}