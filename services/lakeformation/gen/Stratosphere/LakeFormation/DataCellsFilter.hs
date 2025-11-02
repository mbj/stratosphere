module Stratosphere.LakeFormation.DataCellsFilter (
        module Exports, DataCellsFilter(..), mkDataCellsFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.DataCellsFilter.ColumnWildcardProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.DataCellsFilter.RowFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCellsFilter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html>
    DataCellsFilter {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html#cfn-lakeformation-datacellsfilter-columnnames>
                     columnNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html#cfn-lakeformation-datacellsfilter-columnwildcard>
                     columnWildcard :: (Prelude.Maybe ColumnWildcardProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html#cfn-lakeformation-datacellsfilter-databasename>
                     databaseName :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html#cfn-lakeformation-datacellsfilter-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html#cfn-lakeformation-datacellsfilter-rowfilter>
                     rowFilter :: (Prelude.Maybe RowFilterProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html#cfn-lakeformation-datacellsfilter-tablecatalogid>
                     tableCatalogId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datacellsfilter.html#cfn-lakeformation-datacellsfilter-tablename>
                     tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCellsFilter ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> DataCellsFilter
mkDataCellsFilter databaseName name tableCatalogId tableName
  = DataCellsFilter
      {haddock_workaround_ = (), databaseName = databaseName,
       name = name, tableCatalogId = tableCatalogId,
       tableName = tableName, columnNames = Prelude.Nothing,
       columnWildcard = Prelude.Nothing, rowFilter = Prelude.Nothing}
instance ToResourceProperties DataCellsFilter where
  toResourceProperties DataCellsFilter {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataCellsFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName, "Name" JSON..= name,
                            "TableCatalogId" JSON..= tableCatalogId,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "ColumnNames" Prelude.<$> columnNames,
                               (JSON..=) "ColumnWildcard" Prelude.<$> columnWildcard,
                               (JSON..=) "RowFilter" Prelude.<$> rowFilter]))}
instance JSON.ToJSON DataCellsFilter where
  toJSON DataCellsFilter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName, "Name" JSON..= name,
               "TableCatalogId" JSON..= tableCatalogId,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "ColumnNames" Prelude.<$> columnNames,
                  (JSON..=) "ColumnWildcard" Prelude.<$> columnWildcard,
                  (JSON..=) "RowFilter" Prelude.<$> rowFilter])))
instance Property "ColumnNames" DataCellsFilter where
  type PropertyType "ColumnNames" DataCellsFilter = ValueList Prelude.Text
  set newValue DataCellsFilter {..}
    = DataCellsFilter {columnNames = Prelude.pure newValue, ..}
instance Property "ColumnWildcard" DataCellsFilter where
  type PropertyType "ColumnWildcard" DataCellsFilter = ColumnWildcardProperty
  set newValue DataCellsFilter {..}
    = DataCellsFilter {columnWildcard = Prelude.pure newValue, ..}
instance Property "DatabaseName" DataCellsFilter where
  type PropertyType "DatabaseName" DataCellsFilter = Value Prelude.Text
  set newValue DataCellsFilter {..}
    = DataCellsFilter {databaseName = newValue, ..}
instance Property "Name" DataCellsFilter where
  type PropertyType "Name" DataCellsFilter = Value Prelude.Text
  set newValue DataCellsFilter {..}
    = DataCellsFilter {name = newValue, ..}
instance Property "RowFilter" DataCellsFilter where
  type PropertyType "RowFilter" DataCellsFilter = RowFilterProperty
  set newValue DataCellsFilter {..}
    = DataCellsFilter {rowFilter = Prelude.pure newValue, ..}
instance Property "TableCatalogId" DataCellsFilter where
  type PropertyType "TableCatalogId" DataCellsFilter = Value Prelude.Text
  set newValue DataCellsFilter {..}
    = DataCellsFilter {tableCatalogId = newValue, ..}
instance Property "TableName" DataCellsFilter where
  type PropertyType "TableName" DataCellsFilter = Value Prelude.Text
  set newValue DataCellsFilter {..}
    = DataCellsFilter {tableName = newValue, ..}