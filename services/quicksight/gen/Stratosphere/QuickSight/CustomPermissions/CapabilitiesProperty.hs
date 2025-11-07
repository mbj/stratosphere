module Stratosphere.QuickSight.CustomPermissions.CapabilitiesProperty (
        CapabilitiesProperty(..), mkCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapabilitiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html>
    CapabilitiesProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-addorrunanomalydetectionforanalyses>
                          addOrRunAnomalyDetectionForAnalyses :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-analysis>
                          analysis :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-createandupdatedashboardemailreports>
                          createAndUpdateDashboardEmailReports :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-createandupdatedatasources>
                          createAndUpdateDataSources :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-createandupdatedatasets>
                          createAndUpdateDatasets :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-createandupdatethemes>
                          createAndUpdateThemes :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-createandupdatethresholdalerts>
                          createAndUpdateThresholdAlerts :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-createspicedataset>
                          createSPICEDataset :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-createsharedfolders>
                          createSharedFolders :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-dashboard>
                          dashboard :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-exporttocsv>
                          exportToCsv :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-exporttocsvinscheduledreports>
                          exportToCsvInScheduledReports :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-exporttoexcel>
                          exportToExcel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-exporttoexcelinscheduledreports>
                          exportToExcelInScheduledReports :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-exporttopdf>
                          exportToPdf :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-exporttopdfinscheduledreports>
                          exportToPdfInScheduledReports :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-includecontentinscheduledreportsemail>
                          includeContentInScheduledReportsEmail :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-printreports>
                          printReports :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-renamesharedfolders>
                          renameSharedFolders :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-shareanalyses>
                          shareAnalyses :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-sharedashboards>
                          shareDashboards :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-sharedatasources>
                          shareDataSources :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-sharedatasets>
                          shareDatasets :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-subscribedashboardemailreports>
                          subscribeDashboardEmailReports :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-custompermissions-capabilities.html#cfn-quicksight-custompermissions-capabilities-viewaccountspicecapacity>
                          viewAccountSPICECapacity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapabilitiesProperty :: CapabilitiesProperty
mkCapabilitiesProperty
  = CapabilitiesProperty
      {haddock_workaround_ = (),
       addOrRunAnomalyDetectionForAnalyses = Prelude.Nothing,
       analysis = Prelude.Nothing,
       createAndUpdateDashboardEmailReports = Prelude.Nothing,
       createAndUpdateDataSources = Prelude.Nothing,
       createAndUpdateDatasets = Prelude.Nothing,
       createAndUpdateThemes = Prelude.Nothing,
       createAndUpdateThresholdAlerts = Prelude.Nothing,
       createSPICEDataset = Prelude.Nothing,
       createSharedFolders = Prelude.Nothing, dashboard = Prelude.Nothing,
       exportToCsv = Prelude.Nothing,
       exportToCsvInScheduledReports = Prelude.Nothing,
       exportToExcel = Prelude.Nothing,
       exportToExcelInScheduledReports = Prelude.Nothing,
       exportToPdf = Prelude.Nothing,
       exportToPdfInScheduledReports = Prelude.Nothing,
       includeContentInScheduledReportsEmail = Prelude.Nothing,
       printReports = Prelude.Nothing,
       renameSharedFolders = Prelude.Nothing,
       shareAnalyses = Prelude.Nothing, shareDashboards = Prelude.Nothing,
       shareDataSources = Prelude.Nothing,
       shareDatasets = Prelude.Nothing,
       subscribeDashboardEmailReports = Prelude.Nothing,
       viewAccountSPICECapacity = Prelude.Nothing}
instance ToResourceProperties CapabilitiesProperty where
  toResourceProperties CapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::CustomPermissions.Capabilities",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddOrRunAnomalyDetectionForAnalyses"
                              Prelude.<$> addOrRunAnomalyDetectionForAnalyses,
                            (JSON..=) "Analysis" Prelude.<$> analysis,
                            (JSON..=) "CreateAndUpdateDashboardEmailReports"
                              Prelude.<$> createAndUpdateDashboardEmailReports,
                            (JSON..=) "CreateAndUpdateDataSources"
                              Prelude.<$> createAndUpdateDataSources,
                            (JSON..=) "CreateAndUpdateDatasets"
                              Prelude.<$> createAndUpdateDatasets,
                            (JSON..=) "CreateAndUpdateThemes"
                              Prelude.<$> createAndUpdateThemes,
                            (JSON..=) "CreateAndUpdateThresholdAlerts"
                              Prelude.<$> createAndUpdateThresholdAlerts,
                            (JSON..=) "CreateSPICEDataset" Prelude.<$> createSPICEDataset,
                            (JSON..=) "CreateSharedFolders" Prelude.<$> createSharedFolders,
                            (JSON..=) "Dashboard" Prelude.<$> dashboard,
                            (JSON..=) "ExportToCsv" Prelude.<$> exportToCsv,
                            (JSON..=) "ExportToCsvInScheduledReports"
                              Prelude.<$> exportToCsvInScheduledReports,
                            (JSON..=) "ExportToExcel" Prelude.<$> exportToExcel,
                            (JSON..=) "ExportToExcelInScheduledReports"
                              Prelude.<$> exportToExcelInScheduledReports,
                            (JSON..=) "ExportToPdf" Prelude.<$> exportToPdf,
                            (JSON..=) "ExportToPdfInScheduledReports"
                              Prelude.<$> exportToPdfInScheduledReports,
                            (JSON..=) "IncludeContentInScheduledReportsEmail"
                              Prelude.<$> includeContentInScheduledReportsEmail,
                            (JSON..=) "PrintReports" Prelude.<$> printReports,
                            (JSON..=) "RenameSharedFolders" Prelude.<$> renameSharedFolders,
                            (JSON..=) "ShareAnalyses" Prelude.<$> shareAnalyses,
                            (JSON..=) "ShareDashboards" Prelude.<$> shareDashboards,
                            (JSON..=) "ShareDataSources" Prelude.<$> shareDataSources,
                            (JSON..=) "ShareDatasets" Prelude.<$> shareDatasets,
                            (JSON..=) "SubscribeDashboardEmailReports"
                              Prelude.<$> subscribeDashboardEmailReports,
                            (JSON..=) "ViewAccountSPICECapacity"
                              Prelude.<$> viewAccountSPICECapacity])}
instance JSON.ToJSON CapabilitiesProperty where
  toJSON CapabilitiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddOrRunAnomalyDetectionForAnalyses"
                 Prelude.<$> addOrRunAnomalyDetectionForAnalyses,
               (JSON..=) "Analysis" Prelude.<$> analysis,
               (JSON..=) "CreateAndUpdateDashboardEmailReports"
                 Prelude.<$> createAndUpdateDashboardEmailReports,
               (JSON..=) "CreateAndUpdateDataSources"
                 Prelude.<$> createAndUpdateDataSources,
               (JSON..=) "CreateAndUpdateDatasets"
                 Prelude.<$> createAndUpdateDatasets,
               (JSON..=) "CreateAndUpdateThemes"
                 Prelude.<$> createAndUpdateThemes,
               (JSON..=) "CreateAndUpdateThresholdAlerts"
                 Prelude.<$> createAndUpdateThresholdAlerts,
               (JSON..=) "CreateSPICEDataset" Prelude.<$> createSPICEDataset,
               (JSON..=) "CreateSharedFolders" Prelude.<$> createSharedFolders,
               (JSON..=) "Dashboard" Prelude.<$> dashboard,
               (JSON..=) "ExportToCsv" Prelude.<$> exportToCsv,
               (JSON..=) "ExportToCsvInScheduledReports"
                 Prelude.<$> exportToCsvInScheduledReports,
               (JSON..=) "ExportToExcel" Prelude.<$> exportToExcel,
               (JSON..=) "ExportToExcelInScheduledReports"
                 Prelude.<$> exportToExcelInScheduledReports,
               (JSON..=) "ExportToPdf" Prelude.<$> exportToPdf,
               (JSON..=) "ExportToPdfInScheduledReports"
                 Prelude.<$> exportToPdfInScheduledReports,
               (JSON..=) "IncludeContentInScheduledReportsEmail"
                 Prelude.<$> includeContentInScheduledReportsEmail,
               (JSON..=) "PrintReports" Prelude.<$> printReports,
               (JSON..=) "RenameSharedFolders" Prelude.<$> renameSharedFolders,
               (JSON..=) "ShareAnalyses" Prelude.<$> shareAnalyses,
               (JSON..=) "ShareDashboards" Prelude.<$> shareDashboards,
               (JSON..=) "ShareDataSources" Prelude.<$> shareDataSources,
               (JSON..=) "ShareDatasets" Prelude.<$> shareDatasets,
               (JSON..=) "SubscribeDashboardEmailReports"
                 Prelude.<$> subscribeDashboardEmailReports,
               (JSON..=) "ViewAccountSPICECapacity"
                 Prelude.<$> viewAccountSPICECapacity]))
instance Property "AddOrRunAnomalyDetectionForAnalyses" CapabilitiesProperty where
  type PropertyType "AddOrRunAnomalyDetectionForAnalyses" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {addOrRunAnomalyDetectionForAnalyses = Prelude.pure newValue, ..}
instance Property "Analysis" CapabilitiesProperty where
  type PropertyType "Analysis" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {analysis = Prelude.pure newValue, ..}
instance Property "CreateAndUpdateDashboardEmailReports" CapabilitiesProperty where
  type PropertyType "CreateAndUpdateDashboardEmailReports" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {createAndUpdateDashboardEmailReports = Prelude.pure newValue, ..}
instance Property "CreateAndUpdateDataSources" CapabilitiesProperty where
  type PropertyType "CreateAndUpdateDataSources" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {createAndUpdateDataSources = Prelude.pure newValue, ..}
instance Property "CreateAndUpdateDatasets" CapabilitiesProperty where
  type PropertyType "CreateAndUpdateDatasets" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {createAndUpdateDatasets = Prelude.pure newValue, ..}
instance Property "CreateAndUpdateThemes" CapabilitiesProperty where
  type PropertyType "CreateAndUpdateThemes" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {createAndUpdateThemes = Prelude.pure newValue, ..}
instance Property "CreateAndUpdateThresholdAlerts" CapabilitiesProperty where
  type PropertyType "CreateAndUpdateThresholdAlerts" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {createAndUpdateThresholdAlerts = Prelude.pure newValue, ..}
instance Property "CreateSPICEDataset" CapabilitiesProperty where
  type PropertyType "CreateSPICEDataset" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {createSPICEDataset = Prelude.pure newValue, ..}
instance Property "CreateSharedFolders" CapabilitiesProperty where
  type PropertyType "CreateSharedFolders" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {createSharedFolders = Prelude.pure newValue, ..}
instance Property "Dashboard" CapabilitiesProperty where
  type PropertyType "Dashboard" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {dashboard = Prelude.pure newValue, ..}
instance Property "ExportToCsv" CapabilitiesProperty where
  type PropertyType "ExportToCsv" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {exportToCsv = Prelude.pure newValue, ..}
instance Property "ExportToCsvInScheduledReports" CapabilitiesProperty where
  type PropertyType "ExportToCsvInScheduledReports" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {exportToCsvInScheduledReports = Prelude.pure newValue, ..}
instance Property "ExportToExcel" CapabilitiesProperty where
  type PropertyType "ExportToExcel" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {exportToExcel = Prelude.pure newValue, ..}
instance Property "ExportToExcelInScheduledReports" CapabilitiesProperty where
  type PropertyType "ExportToExcelInScheduledReports" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {exportToExcelInScheduledReports = Prelude.pure newValue, ..}
instance Property "ExportToPdf" CapabilitiesProperty where
  type PropertyType "ExportToPdf" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {exportToPdf = Prelude.pure newValue, ..}
instance Property "ExportToPdfInScheduledReports" CapabilitiesProperty where
  type PropertyType "ExportToPdfInScheduledReports" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {exportToPdfInScheduledReports = Prelude.pure newValue, ..}
instance Property "IncludeContentInScheduledReportsEmail" CapabilitiesProperty where
  type PropertyType "IncludeContentInScheduledReportsEmail" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {includeContentInScheduledReportsEmail = Prelude.pure newValue, ..}
instance Property "PrintReports" CapabilitiesProperty where
  type PropertyType "PrintReports" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {printReports = Prelude.pure newValue, ..}
instance Property "RenameSharedFolders" CapabilitiesProperty where
  type PropertyType "RenameSharedFolders" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {renameSharedFolders = Prelude.pure newValue, ..}
instance Property "ShareAnalyses" CapabilitiesProperty where
  type PropertyType "ShareAnalyses" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {shareAnalyses = Prelude.pure newValue, ..}
instance Property "ShareDashboards" CapabilitiesProperty where
  type PropertyType "ShareDashboards" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {shareDashboards = Prelude.pure newValue, ..}
instance Property "ShareDataSources" CapabilitiesProperty where
  type PropertyType "ShareDataSources" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {shareDataSources = Prelude.pure newValue, ..}
instance Property "ShareDatasets" CapabilitiesProperty where
  type PropertyType "ShareDatasets" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty {shareDatasets = Prelude.pure newValue, ..}
instance Property "SubscribeDashboardEmailReports" CapabilitiesProperty where
  type PropertyType "SubscribeDashboardEmailReports" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {subscribeDashboardEmailReports = Prelude.pure newValue, ..}
instance Property "ViewAccountSPICECapacity" CapabilitiesProperty where
  type PropertyType "ViewAccountSPICECapacity" CapabilitiesProperty = Value Prelude.Text
  set newValue CapabilitiesProperty {..}
    = CapabilitiesProperty
        {viewAccountSPICECapacity = Prelude.pure newValue, ..}