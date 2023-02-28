module Stratosphere.QuickSight.DataSet (
        module Exports, DataSet(..), mkDataSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ColumnGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ColumnLevelPermissionRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DataSetUsageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.FieldFolderProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.IngestionWaitPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.LogicalTableProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.PhysicalTableProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RowLevelPermissionDataSetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataSet
  = DataSet {awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
             columnGroups :: (Prelude.Maybe [ColumnGroupProperty]),
             columnLevelPermissionRules :: (Prelude.Maybe [ColumnLevelPermissionRuleProperty]),
             dataSetId :: (Prelude.Maybe (Value Prelude.Text)),
             dataSetUsageConfiguration :: (Prelude.Maybe DataSetUsageConfigurationProperty),
             fieldFolders :: (Prelude.Maybe (Prelude.Map Prelude.Text FieldFolderProperty)),
             importMode :: (Prelude.Maybe (Value Prelude.Text)),
             ingestionWaitPolicy :: (Prelude.Maybe IngestionWaitPolicyProperty),
             logicalTableMap :: (Prelude.Maybe (Prelude.Map Prelude.Text LogicalTableProperty)),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
             physicalTableMap :: (Prelude.Maybe (Prelude.Map Prelude.Text PhysicalTableProperty)),
             rowLevelPermissionDataSet :: (Prelude.Maybe RowLevelPermissionDataSetProperty),
             tags :: (Prelude.Maybe [Tag])}
mkDataSet :: DataSet
mkDataSet
  = DataSet
      {awsAccountId = Prelude.Nothing, columnGroups = Prelude.Nothing,
       columnLevelPermissionRules = Prelude.Nothing,
       dataSetId = Prelude.Nothing,
       dataSetUsageConfiguration = Prelude.Nothing,
       fieldFolders = Prelude.Nothing, importMode = Prelude.Nothing,
       ingestionWaitPolicy = Prelude.Nothing,
       logicalTableMap = Prelude.Nothing, name = Prelude.Nothing,
       permissions = Prelude.Nothing, physicalTableMap = Prelude.Nothing,
       rowLevelPermissionDataSet = Prelude.Nothing,
       tags = Prelude.Nothing}
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
                            (JSON..=) "DataSetUsageConfiguration"
                              Prelude.<$> dataSetUsageConfiguration,
                            (JSON..=) "FieldFolders" Prelude.<$> fieldFolders,
                            (JSON..=) "ImportMode" Prelude.<$> importMode,
                            (JSON..=) "IngestionWaitPolicy" Prelude.<$> ingestionWaitPolicy,
                            (JSON..=) "LogicalTableMap" Prelude.<$> logicalTableMap,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Permissions" Prelude.<$> permissions,
                            (JSON..=) "PhysicalTableMap" Prelude.<$> physicalTableMap,
                            (JSON..=) "RowLevelPermissionDataSet"
                              Prelude.<$> rowLevelPermissionDataSet,
                            (JSON..=) "Tags" Prelude.<$> tags])}
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
               (JSON..=) "DataSetUsageConfiguration"
                 Prelude.<$> dataSetUsageConfiguration,
               (JSON..=) "FieldFolders" Prelude.<$> fieldFolders,
               (JSON..=) "ImportMode" Prelude.<$> importMode,
               (JSON..=) "IngestionWaitPolicy" Prelude.<$> ingestionWaitPolicy,
               (JSON..=) "LogicalTableMap" Prelude.<$> logicalTableMap,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Permissions" Prelude.<$> permissions,
               (JSON..=) "PhysicalTableMap" Prelude.<$> physicalTableMap,
               (JSON..=) "RowLevelPermissionDataSet"
                 Prelude.<$> rowLevelPermissionDataSet,
               (JSON..=) "Tags" Prelude.<$> tags]))
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
instance Property "DataSetUsageConfiguration" DataSet where
  type PropertyType "DataSetUsageConfiguration" DataSet = DataSetUsageConfigurationProperty
  set newValue DataSet {..}
    = DataSet {dataSetUsageConfiguration = Prelude.pure newValue, ..}
instance Property "FieldFolders" DataSet where
  type PropertyType "FieldFolders" DataSet = Prelude.Map Prelude.Text FieldFolderProperty
  set newValue DataSet {..}
    = DataSet {fieldFolders = Prelude.pure newValue, ..}
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
instance Property "Tags" DataSet where
  type PropertyType "Tags" DataSet = [Tag]
  set newValue DataSet {..}
    = DataSet {tags = Prelude.pure newValue, ..}