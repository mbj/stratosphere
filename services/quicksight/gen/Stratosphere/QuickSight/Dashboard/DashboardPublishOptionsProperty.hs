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
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataQAEnabledOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataStoriesSharingOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExecutiveSummaryOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExportToCSVOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExportWithHiddenFieldsOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.QuickSuiteActionsOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetControlsOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetLayoutElementMaximizationOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualAxisSortOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualMenuOptionProperty as Exports
import Stratosphere.ResourceProperties
data DashboardPublishOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html>
    DashboardPublishOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-adhocfilteringoption>
                                     adHocFilteringOption :: (Prelude.Maybe AdHocFilteringOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datapointdrillupdownoption>
                                     dataPointDrillUpDownOption :: (Prelude.Maybe DataPointDrillUpDownOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datapointmenulabeloption>
                                     dataPointMenuLabelOption :: (Prelude.Maybe DataPointMenuLabelOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datapointtooltipoption>
                                     dataPointTooltipOption :: (Prelude.Maybe DataPointTooltipOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-dataqaenabledoption>
                                     dataQAEnabledOption :: (Prelude.Maybe DataQAEnabledOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-datastoriessharingoption>
                                     dataStoriesSharingOption :: (Prelude.Maybe DataStoriesSharingOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-executivesummaryoption>
                                     executiveSummaryOption :: (Prelude.Maybe ExecutiveSummaryOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-exporttocsvoption>
                                     exportToCSVOption :: (Prelude.Maybe ExportToCSVOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-exportwithhiddenfieldsoption>
                                     exportWithHiddenFieldsOption :: (Prelude.Maybe ExportWithHiddenFieldsOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-quicksuiteactionsoption>
                                     quickSuiteActionsOption :: (Prelude.Maybe QuickSuiteActionsOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-sheetcontrolsoption>
                                     sheetControlsOption :: (Prelude.Maybe SheetControlsOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-sheetlayoutelementmaximizationoption>
                                     sheetLayoutElementMaximizationOption :: (Prelude.Maybe SheetLayoutElementMaximizationOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-visualaxissortoption>
                                     visualAxisSortOption :: (Prelude.Maybe VisualAxisSortOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-visualmenuoption>
                                     visualMenuOption :: (Prelude.Maybe VisualMenuOptionProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardpublishoptions.html#cfn-quicksight-dashboard-dashboardpublishoptions-visualpublishoptions>
                                     visualPublishOptions :: (Prelude.Maybe DashboardVisualPublishOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardPublishOptionsProperty ::
  DashboardPublishOptionsProperty
mkDashboardPublishOptionsProperty
  = DashboardPublishOptionsProperty
      {haddock_workaround_ = (), adHocFilteringOption = Prelude.Nothing,
       dataPointDrillUpDownOption = Prelude.Nothing,
       dataPointMenuLabelOption = Prelude.Nothing,
       dataPointTooltipOption = Prelude.Nothing,
       dataQAEnabledOption = Prelude.Nothing,
       dataStoriesSharingOption = Prelude.Nothing,
       executiveSummaryOption = Prelude.Nothing,
       exportToCSVOption = Prelude.Nothing,
       exportWithHiddenFieldsOption = Prelude.Nothing,
       quickSuiteActionsOption = Prelude.Nothing,
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
                            (JSON..=) "DataQAEnabledOption" Prelude.<$> dataQAEnabledOption,
                            (JSON..=) "DataStoriesSharingOption"
                              Prelude.<$> dataStoriesSharingOption,
                            (JSON..=) "ExecutiveSummaryOption"
                              Prelude.<$> executiveSummaryOption,
                            (JSON..=) "ExportToCSVOption" Prelude.<$> exportToCSVOption,
                            (JSON..=) "ExportWithHiddenFieldsOption"
                              Prelude.<$> exportWithHiddenFieldsOption,
                            (JSON..=) "QuickSuiteActionsOption"
                              Prelude.<$> quickSuiteActionsOption,
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
               (JSON..=) "DataQAEnabledOption" Prelude.<$> dataQAEnabledOption,
               (JSON..=) "DataStoriesSharingOption"
                 Prelude.<$> dataStoriesSharingOption,
               (JSON..=) "ExecutiveSummaryOption"
                 Prelude.<$> executiveSummaryOption,
               (JSON..=) "ExportToCSVOption" Prelude.<$> exportToCSVOption,
               (JSON..=) "ExportWithHiddenFieldsOption"
                 Prelude.<$> exportWithHiddenFieldsOption,
               (JSON..=) "QuickSuiteActionsOption"
                 Prelude.<$> quickSuiteActionsOption,
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
instance Property "DataQAEnabledOption" DashboardPublishOptionsProperty where
  type PropertyType "DataQAEnabledOption" DashboardPublishOptionsProperty = DataQAEnabledOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {dataQAEnabledOption = Prelude.pure newValue, ..}
instance Property "DataStoriesSharingOption" DashboardPublishOptionsProperty where
  type PropertyType "DataStoriesSharingOption" DashboardPublishOptionsProperty = DataStoriesSharingOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {dataStoriesSharingOption = Prelude.pure newValue, ..}
instance Property "ExecutiveSummaryOption" DashboardPublishOptionsProperty where
  type PropertyType "ExecutiveSummaryOption" DashboardPublishOptionsProperty = ExecutiveSummaryOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {executiveSummaryOption = Prelude.pure newValue, ..}
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
instance Property "QuickSuiteActionsOption" DashboardPublishOptionsProperty where
  type PropertyType "QuickSuiteActionsOption" DashboardPublishOptionsProperty = QuickSuiteActionsOptionProperty
  set newValue DashboardPublishOptionsProperty {..}
    = DashboardPublishOptionsProperty
        {quickSuiteActionsOption = Prelude.pure newValue, ..}
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