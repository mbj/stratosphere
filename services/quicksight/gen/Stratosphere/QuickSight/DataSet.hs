module Stratosphere.QuickSight.DataSet (
        module Exports, DataSet(..), mkDataSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ColumnGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ColumnLevelPermissionRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DataSetRefreshPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DataSetUsageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DatasetParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.FieldFolderProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.IngestionWaitPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.LogicalTableProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.PerformanceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.PhysicalTableProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RowLevelPermissionDataSetProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RowLevelPermissionTagConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html>
    DataSet {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-awsaccountid>
             awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-columngroups>
             columnGroups :: (Prelude.Maybe [ColumnGroupProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-columnlevelpermissionrules>
             columnLevelPermissionRules :: (Prelude.Maybe [ColumnLevelPermissionRuleProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-datasetid>
             dataSetId :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-datasetrefreshproperties>
             dataSetRefreshProperties :: (Prelude.Maybe DataSetRefreshPropertiesProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-datasetusageconfiguration>
             dataSetUsageConfiguration :: (Prelude.Maybe DataSetUsageConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-datasetparameters>
             datasetParameters :: (Prelude.Maybe [DatasetParameterProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-fieldfolders>
             fieldFolders :: (Prelude.Maybe (Prelude.Map Prelude.Text FieldFolderProperty)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-folderarns>
             folderArns :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-importmode>
             importMode :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-ingestionwaitpolicy>
             ingestionWaitPolicy :: (Prelude.Maybe IngestionWaitPolicyProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-logicaltablemap>
             logicalTableMap :: (Prelude.Maybe (Prelude.Map Prelude.Text LogicalTableProperty)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-performanceconfiguration>
             performanceConfiguration :: (Prelude.Maybe PerformanceConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-permissions>
             permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-physicaltablemap>
             physicalTableMap :: (Prelude.Maybe (Prelude.Map Prelude.Text PhysicalTableProperty)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-rowlevelpermissiondataset>
             rowLevelPermissionDataSet :: (Prelude.Maybe RowLevelPermissionDataSetProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-rowlevelpermissiontagconfiguration>
             rowLevelPermissionTagConfiguration :: (Prelude.Maybe RowLevelPermissionTagConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dataset.html#cfn-quicksight-dataset-useas>
             useAs :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSet :: DataSet
mkDataSet
  = DataSet
      {haddock_workaround_ = (), awsAccountId = Prelude.Nothing,
       columnGroups = Prelude.Nothing,
       columnLevelPermissionRules = Prelude.Nothing,
       dataSetId = Prelude.Nothing,
       dataSetRefreshProperties = Prelude.Nothing,
       dataSetUsageConfiguration = Prelude.Nothing,
       datasetParameters = Prelude.Nothing,
       fieldFolders = Prelude.Nothing, folderArns = Prelude.Nothing,
       importMode = Prelude.Nothing,
       ingestionWaitPolicy = Prelude.Nothing,
       logicalTableMap = Prelude.Nothing, name = Prelude.Nothing,
       performanceConfiguration = Prelude.Nothing,
       permissions = Prelude.Nothing, physicalTableMap = Prelude.Nothing,
       rowLevelPermissionDataSet = Prelude.Nothing,
       rowLevelPermissionTagConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing, useAs = Prelude.Nothing}
instance ToResourceProperties DataSet where
  toResourceProperties DataSet {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "ColumnGroups" Prelude.<$> columnGroups,
                            (JSON..=) "ColumnLevelPermissionRules"
                              Prelude.<$> columnLevelPermissionRules,
                            (JSON..=) "DataSetId" Prelude.<$> dataSetId,
                            (JSON..=) "DataSetRefreshProperties"
                              Prelude.<$> dataSetRefreshProperties,
                            (JSON..=) "DataSetUsageConfiguration"
                              Prelude.<$> dataSetUsageConfiguration,
                            (JSON..=) "DatasetParameters" Prelude.<$> datasetParameters,
                            (JSON..=) "FieldFolders" Prelude.<$> fieldFolders,
                            (JSON..=) "FolderArns" Prelude.<$> folderArns,
                            (JSON..=) "ImportMode" Prelude.<$> importMode,
                            (JSON..=) "IngestionWaitPolicy" Prelude.<$> ingestionWaitPolicy,
                            (JSON..=) "LogicalTableMap" Prelude.<$> logicalTableMap,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PerformanceConfiguration"
                              Prelude.<$> performanceConfiguration,
                            (JSON..=) "Permissions" Prelude.<$> permissions,
                            (JSON..=) "PhysicalTableMap" Prelude.<$> physicalTableMap,
                            (JSON..=) "RowLevelPermissionDataSet"
                              Prelude.<$> rowLevelPermissionDataSet,
                            (JSON..=) "RowLevelPermissionTagConfiguration"
                              Prelude.<$> rowLevelPermissionTagConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "UseAs" Prelude.<$> useAs])}
instance JSON.ToJSON DataSet where
  toJSON DataSet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "ColumnGroups" Prelude.<$> columnGroups,
               (JSON..=) "ColumnLevelPermissionRules"
                 Prelude.<$> columnLevelPermissionRules,
               (JSON..=) "DataSetId" Prelude.<$> dataSetId,
               (JSON..=) "DataSetRefreshProperties"
                 Prelude.<$> dataSetRefreshProperties,
               (JSON..=) "DataSetUsageConfiguration"
                 Prelude.<$> dataSetUsageConfiguration,
               (JSON..=) "DatasetParameters" Prelude.<$> datasetParameters,
               (JSON..=) "FieldFolders" Prelude.<$> fieldFolders,
               (JSON..=) "FolderArns" Prelude.<$> folderArns,
               (JSON..=) "ImportMode" Prelude.<$> importMode,
               (JSON..=) "IngestionWaitPolicy" Prelude.<$> ingestionWaitPolicy,
               (JSON..=) "LogicalTableMap" Prelude.<$> logicalTableMap,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PerformanceConfiguration"
                 Prelude.<$> performanceConfiguration,
               (JSON..=) "Permissions" Prelude.<$> permissions,
               (JSON..=) "PhysicalTableMap" Prelude.<$> physicalTableMap,
               (JSON..=) "RowLevelPermissionDataSet"
                 Prelude.<$> rowLevelPermissionDataSet,
               (JSON..=) "RowLevelPermissionTagConfiguration"
                 Prelude.<$> rowLevelPermissionTagConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "UseAs" Prelude.<$> useAs]))
instance Property "AwsAccountId" DataSet where
  type PropertyType "AwsAccountId" DataSet = Value Prelude.Text
  set newValue DataSet {..}
    = DataSet {awsAccountId = Prelude.pure newValue, ..}
instance Property "ColumnGroups" DataSet where
  type PropertyType "ColumnGroups" DataSet = [ColumnGroupProperty]
  set newValue DataSet {..}
    = DataSet {columnGroups = Prelude.pure newValue, ..}
instance Property "ColumnLevelPermissionRules" DataSet where
  type PropertyType "ColumnLevelPermissionRules" DataSet = [ColumnLevelPermissionRuleProperty]
  set newValue DataSet {..}
    = DataSet {columnLevelPermissionRules = Prelude.pure newValue, ..}
instance Property "DataSetId" DataSet where
  type PropertyType "DataSetId" DataSet = Value Prelude.Text
  set newValue DataSet {..}
    = DataSet {dataSetId = Prelude.pure newValue, ..}
instance Property "DataSetRefreshProperties" DataSet where
  type PropertyType "DataSetRefreshProperties" DataSet = DataSetRefreshPropertiesProperty
  set newValue DataSet {..}
    = DataSet {dataSetRefreshProperties = Prelude.pure newValue, ..}
instance Property "DataSetUsageConfiguration" DataSet where
  type PropertyType "DataSetUsageConfiguration" DataSet = DataSetUsageConfigurationProperty
  set newValue DataSet {..}
    = DataSet {dataSetUsageConfiguration = Prelude.pure newValue, ..}
instance Property "DatasetParameters" DataSet where
  type PropertyType "DatasetParameters" DataSet = [DatasetParameterProperty]
  set newValue DataSet {..}
    = DataSet {datasetParameters = Prelude.pure newValue, ..}
instance Property "FieldFolders" DataSet where
  type PropertyType "FieldFolders" DataSet = Prelude.Map Prelude.Text FieldFolderProperty
  set newValue DataSet {..}
    = DataSet {fieldFolders = Prelude.pure newValue, ..}
instance Property "FolderArns" DataSet where
  type PropertyType "FolderArns" DataSet = ValueList Prelude.Text
  set newValue DataSet {..}
    = DataSet {folderArns = Prelude.pure newValue, ..}
instance Property "ImportMode" DataSet where
  type PropertyType "ImportMode" DataSet = Value Prelude.Text
  set newValue DataSet {..}
    = DataSet {importMode = Prelude.pure newValue, ..}
instance Property "IngestionWaitPolicy" DataSet where
  type PropertyType "IngestionWaitPolicy" DataSet = IngestionWaitPolicyProperty
  set newValue DataSet {..}
    = DataSet {ingestionWaitPolicy = Prelude.pure newValue, ..}
instance Property "LogicalTableMap" DataSet where
  type PropertyType "LogicalTableMap" DataSet = Prelude.Map Prelude.Text LogicalTableProperty
  set newValue DataSet {..}
    = DataSet {logicalTableMap = Prelude.pure newValue, ..}
instance Property "Name" DataSet where
  type PropertyType "Name" DataSet = Value Prelude.Text
  set newValue DataSet {..}
    = DataSet {name = Prelude.pure newValue, ..}
instance Property "PerformanceConfiguration" DataSet where
  type PropertyType "PerformanceConfiguration" DataSet = PerformanceConfigurationProperty
  set newValue DataSet {..}
    = DataSet {performanceConfiguration = Prelude.pure newValue, ..}
instance Property "Permissions" DataSet where
  type PropertyType "Permissions" DataSet = [ResourcePermissionProperty]
  set newValue DataSet {..}
    = DataSet {permissions = Prelude.pure newValue, ..}
instance Property "PhysicalTableMap" DataSet where
  type PropertyType "PhysicalTableMap" DataSet = Prelude.Map Prelude.Text PhysicalTableProperty
  set newValue DataSet {..}
    = DataSet {physicalTableMap = Prelude.pure newValue, ..}
instance Property "RowLevelPermissionDataSet" DataSet where
  type PropertyType "RowLevelPermissionDataSet" DataSet = RowLevelPermissionDataSetProperty
  set newValue DataSet {..}
    = DataSet {rowLevelPermissionDataSet = Prelude.pure newValue, ..}
instance Property "RowLevelPermissionTagConfiguration" DataSet where
  type PropertyType "RowLevelPermissionTagConfiguration" DataSet = RowLevelPermissionTagConfigurationProperty
  set newValue DataSet {..}
    = DataSet
        {rowLevelPermissionTagConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" DataSet where
  type PropertyType "Tags" DataSet = [Tag]
  set newValue DataSet {..}
    = DataSet {tags = Prelude.pure newValue, ..}
instance Property "UseAs" DataSet where
  type PropertyType "UseAs" DataSet = Value Prelude.Text
  set newValue DataSet {..}
    = DataSet {useAs = Prelude.pure newValue, ..}