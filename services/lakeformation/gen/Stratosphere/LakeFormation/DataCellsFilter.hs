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
  = DataCellsFilter {columnNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                     columnWildcard :: (Prelude.Maybe ColumnWildcardProperty),
                     databaseName :: (Value Prelude.Text),
                     name :: (Value Prelude.Text),
                     rowFilter :: (Prelude.Maybe RowFilterProperty),
                     tableCatalogId :: (Value Prelude.Text),
                     tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCellsFilter ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> DataCellsFilter
mkDataCellsFilter databaseName name tableCatalogId tableName
  = DataCellsFilter
      {databaseName = databaseName, name = name,
       tableCatalogId = tableCatalogId, tableName = tableName,
       columnNames = Prelude.Nothing, columnWildcard = Prelude.Nothing,
       rowFilter = Prelude.Nothing}
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