module Stratosphere.QuickSight.Dashboard.DashboardPublishOptionsProperty (
        module Exports, DashboardPublishOptionsProperty(..),
        mkDashboardPublishOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AdHocFilteringOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DashboardVisualPublishOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPointDrillUpDownOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPointMenuLabelOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPointTooltipOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExportToCSVOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExportWithHiddenFieldsOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetControlsOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetLayoutElementMaximizationOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualAxisSortOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualMenuOptionProperty as Exports
import Stratosphere.ResourceProperties
data DashboardPublishOptionsProperty
  = DashboardPublishOptionsProperty {adHocFilteringOption :: (Prelude.Maybe AdHocFilteringOptionProperty),
                                     dataPointDrillUpDownOption :: (Prelude.Maybe DataPointDrillUpDownOptionProperty),
                                     dataPointMenuLabelOption :: (Prelude.Maybe DataPointMenuLabelOptionProperty),
                                     dataPointTooltipOption :: (Prelude.Maybe DataPointTooltipOptionProperty),
                                     exportToCSVOption :: (Prelude.Maybe ExportToCSVOptionProperty),
                                     exportWithHiddenFieldsOption :: (Prelude.Maybe ExportWithHiddenFieldsOptionProperty),
                                     sheetControlsOption :: (Prelude.Maybe SheetControlsOptionProperty),
                                     sheetLayoutElementMaximizationOption :: (Prelude.Maybe SheetLayoutElementMaximizationOptionProperty),
                                     visualAxisSortOption :: (Prelude.Maybe VisualAxisSortOptionProperty),
                                     visualMenuOption :: (Prelude.Maybe VisualMenuOptionProperty),
                                     visualPublishOptions :: (Prelude.Maybe DashboardVisualPublishOptionsProperty)}
mkDashboardPublishOptionsProperty ::
  DashboardPublishOptionsProperty
mkDashboardPublishOptionsProperty
  = DashboardPublishOptionsProperty
      {adHocFilteringOption = Prelude.Nothing,
       dataPointDrillUpDownOption = Prelude.Nothing,
       dataPointMenuLabelOption = Prelude.Nothing,
       dataPointTooltipOption = Prelude.Nothing,
       exportToCSVOption = Prelude.Nothing,
       exportWithHiddenFieldsOption = Prelude.Nothing,
       sheetControlsOption = Prelude.Nothing,
       sheetLayoutElementMaximizationOption = Prelude.Nothing,
       visualAxisSortOption = Prelude.Nothing,
       visualMenuOption = Prelude.Nothing,
       visualPublishOptions = Prelude.Nothing}
instance ToResourceProperties DashboardPublishOptionsProperty where
  toResourceProperties DashboardPublishOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardPublishOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdHocFilteringOption" Prelude.<$> adHocFilteringOption,
                            (JSON..=) "DataPointDrillUpDownOption"
                              Prelude.<$> dataPointDrillUpDownOption,
                            (JSON..=) "DataPointMenuLabelOption"
                              Prelude.<$> dataPointMenuLabelOption,
                            (JSON..=) "DataPointTooltipOption"
                              Prelude.<$> dataPointTooltipOption,
                            (JSON..=) "ExportToCSVOption" Prelude.<$> exportToCSVOption,
                            (JSON..=) "ExportWithHiddenFieldsOption"
                              Prelude.<$> exportWithHiddenFieldsOption,
                            (JSON..=) "SheetControlsOption" Prelude.<$> sheetControlsOption,
                            (JSON..=) "SheetLayoutElementMaximizationOption"
                              Prelude.<$> sheetLayoutElementMaximizationOption,
                            (JSON..=) "VisualAxisSortOption" Prelude.<$> visualAxisSortOption,
                            (JSON..=) "VisualMenuOption" Prelude.<$> visualMenuOption,
                            (JSON..=) "VisualPublishOptions"
                              Prelude.<$> visualPublishOptions])}
instance JSON.ToJSON DashboardPublishOptionsProperty where
  toJSON DashboardPublishOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdHocFilteringOption" Prelude.<$> adHocFilteringOption,
               (JSON..=) "DataPointDrillUpDownOption"
                 Prelude.<$> dataPointDrillUpDownOption,
               (JSON..=) "DataPointMenuLabelOption"
                 Prelude.<$> dataPointMenuLabelOption,
               (JSON..=) "DataPointTooltipOption"
                 Prelude.<$> dataPointTooltipOption,
               (JSON..=) "ExportToCSVOption" Prelude.<$> exportToCSVOption,
               (JSON..=) "ExportWithHiddenFieldsOption"
                 Prelude.<$> exportWithHiddenFieldsOption,
               (JSON..=) "SheetControlsOption" Prelude.<$> sheetControlsOption,
               (JSON..=) "SheetLayoutElementMaximizationOption"
                 Prelude.<$> sheetLayoutElementMaximizationOption,
               (JSON..=) "VisualAxisSortOption" Prelude.<$> visualAxisSortOption,
               (JSON..=) "VisualMenuOption" Prelude.<$> visualMenuOption,
               (JSON..=) "VisualPublishOptions"
                 Prelude.<$> visualPublishOptions]))
instance Property "AdHocFilteringOption" DashboardPublishOptionsProperty where
  type PropertyType "AdHocFilteringOption" DashboardPublishOptionsProperty = AdHocFilteringOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {adHocFilteringOption = Prelude.pure newValue, ..}
instance Property "DataPointDrillUpDownOption" DashboardPublishOptionsProperty where
  type PropertyType "DataPointDrillUpDownOption" DashboardPublishOptionsProperty = DataPointDrillUpDownOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {dataPointDrillUpDownOption = Prelude.pure newValue, ..}
instance Property "DataPointMenuLabelOption" DashboardPublishOptionsProperty where
  type PropertyType "DataPointMenuLabelOption" DashboardPublishOptionsProperty = DataPointMenuLabelOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {dataPointMenuLabelOption = Prelude.pure newValue, ..}
instance Property "DataPointTooltipOption" DashboardPublishOptionsProperty where
  type PropertyType "DataPointTooltipOption" DashboardPublishOptionsProperty = DataPointTooltipOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {dataPointTooltipOption = Prelude.pure newValue, ..}
instance Property "ExportToCSVOption" DashboardPublishOptionsProperty where
  type PropertyType "ExportToCSVOption" DashboardPublishOptionsProperty = ExportToCSVOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {exportToCSVOption = Prelude.pure newValue, ..}
instance Property "ExportWithHiddenFieldsOption" DashboardPublishOptionsProperty where
  type PropertyType "ExportWithHiddenFieldsOption" DashboardPublishOptionsProperty = ExportWithHiddenFieldsOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {exportWithHiddenFieldsOption = Prelude.pure newValue, ..}
instance Property "SheetControlsOption" DashboardPublishOptionsProperty where
  type PropertyType "SheetControlsOption" DashboardPublishOptionsProperty = SheetControlsOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {sheetControlsOption = Prelude.pure newValue, ..}
instance Property "SheetLayoutElementMaximizationOption" DashboardPublishOptionsProperty where
  type PropertyType "SheetLayoutElementMaximizationOption" DashboardPublishOptionsProperty = SheetLayoutElementMaximizationOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {sheetLayoutElementMaximizationOption = Prelude.pure newValue, ..}
instance Property "VisualAxisSortOption" DashboardPublishOptionsProperty where
  type PropertyType "VisualAxisSortOption" DashboardPublishOptionsProperty = VisualAxisSortOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {visualAxisSortOption = Prelude.pure newValue, ..}
instance Property "VisualMenuOption" DashboardPublishOptionsProperty where
  type PropertyType "VisualMenuOption" DashboardPublishOptionsProperty = VisualMenuOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {visualMenuOption = Prelude.pure newValue, ..}
instance Property "VisualPublishOptions" DashboardPublishOptionsProperty where
  type PropertyType "VisualPublishOptions" DashboardPublishOptionsProperty = DashboardVisualPublishOptionsProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {visualPublishOptions = Prelude.pure newValue, ..}