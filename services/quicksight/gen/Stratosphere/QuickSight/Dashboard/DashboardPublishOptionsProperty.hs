module Stratosphere.QuickSight.Dashboard.DashboardPublishOptionsProperty (
        module Exports, DashboardPublishOptionsProperty(..),
        mkDashboardPublishOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AdHocFilteringOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExportToCSVOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetControlsOptionProperty as Exports
import Stratosphere.ResourceProperties
data DashboardPublishOptionsProperty
  = DashboardPublishOptionsProperty {adHocFilteringOption :: (Prelude.Maybe AdHocFilteringOptionProperty),
                                     exportToCSVOption :: (Prelude.Maybe ExportToCSVOptionProperty),
                                     sheetControlsOption :: (Prelude.Maybe SheetControlsOptionProperty)}
mkDashboardPublishOptionsProperty ::
  DashboardPublishOptionsProperty
mkDashboardPublishOptionsProperty
  = DashboardPublishOptionsProperty
      {adHocFilteringOption = Prelude.Nothing,
       exportToCSVOption = Prelude.Nothing,
       sheetControlsOption = Prelude.Nothing}
instance ToResourceProperties DashboardPublishOptionsProperty where
  toResourceProperties DashboardPublishOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardPublishOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdHocFilteringOption" Prelude.<$> adHocFilteringOption,
                            (JSON..=) "ExportToCSVOption" Prelude.<$> exportToCSVOption,
                            (JSON..=) "SheetControlsOption" Prelude.<$> sheetControlsOption])}
instance JSON.ToJSON DashboardPublishOptionsProperty where
  toJSON DashboardPublishOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdHocFilteringOption" Prelude.<$> adHocFilteringOption,
               (JSON..=) "ExportToCSVOption" Prelude.<$> exportToCSVOption,
               (JSON..=) "SheetControlsOption" Prelude.<$> sheetControlsOption]))
instance Property "AdHocFilteringOption" DashboardPublishOptionsProperty where
  type PropertyType "AdHocFilteringOption" DashboardPublishOptionsProperty = AdHocFilteringOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {adHocFilteringOption = Prelude.pure newValue, ..}
instance Property "ExportToCSVOption" DashboardPublishOptionsProperty where
  type PropertyType "ExportToCSVOption" DashboardPublishOptionsProperty = ExportToCSVOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {exportToCSVOption = Prelude.pure newValue, ..}
instance Property "SheetControlsOption" DashboardPublishOptionsProperty where
  type PropertyType "SheetControlsOption" DashboardPublishOptionsProperty = SheetControlsOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {sheetControlsOption = Prelude.pure newValue, ..}