module Stratosphere.LakeFormation.PrincipalPermissions.DataCellsFilterResourceProperty (
        DataCellsFilterResourceProperty(..),
        mkDataCellsFilterResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCellsFilterResourceProperty
  = DataCellsFilterResourceProperty {databaseName :: (Value Prelude.Text),
                                     name :: (Value Prelude.Text),
                                     tableCatalogId :: (Value Prelude.Text),
                                     tableName :: (Value Prelude.Text)}
mkDataCellsFilterResourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> DataCellsFilterResourceProperty
mkDataCellsFilterResourceProperty
  databaseName
  name
  tableCatalogId
  tableName
  = DataCellsFilterResourceProperty
      {databaseName = databaseName, name = name,
       tableCatalogId = tableCatalogId, tableName = tableName}
instance ToResourceProperties DataCellsFilterResourceProperty where
  toResourceProperties DataCellsFilterResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.DataCellsFilterResource",
         properties = ["DatabaseName" JSON..= databaseName,
                       "Name" JSON..= name, "TableCatalogId" JSON..= tableCatalogId,
                       "TableName" JSON..= tableName]}
instance JSON.ToJSON DataCellsFilterResourceProperty where
  toJSON DataCellsFilterResourceProperty {..}
    = JSON.object
        ["DatabaseName" JSON..= databaseName, "Name" JSON..= name,
         "TableCatalogId" JSON..= tableCatalogId,
         "TableName" JSON..= tableName]
instance Property "DatabaseName" DataCellsFilterResourceProperty where
  type PropertyType "DatabaseName" DataCellsFilterResourceProperty = Value Prelude.Text
  set newValue DataCellsFilterResourceProperty {..}
    = DataCellsFilterResourceProperty {databaseName = newValue, ..}
instance Property "Name" DataCellsFilterResourceProperty where
  type PropertyType "Name" DataCellsFilterResourceProperty = Value Prelude.Text
  set newValue DataCellsFilterResourceProperty {..}
    = DataCellsFilterResourceProperty {name = newValue, ..}
instance Property "TableCatalogId" DataCellsFilterResourceProperty where
  type PropertyType "TableCatalogId" DataCellsFilterResourceProperty = Value Prelude.Text
  set newValue DataCellsFilterResourceProperty {..}
    = DataCellsFilterResourceProperty {tableCatalogId = newValue, ..}
instance Property "TableName" DataCellsFilterResourceProperty where
  type PropertyType "TableName" DataCellsFilterResourceProperty = Value Prelude.Text
  set newValue DataCellsFilterResourceProperty {..}
    = DataCellsFilterResourceProperty {tableName = newValue, ..}