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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datacellsfilterresource.html>
    DataCellsFilterResourceProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datacellsfilterresource.html#cfn-lakeformation-principalpermissions-datacellsfilterresource-databasename>
                                     databaseName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datacellsfilterresource.html#cfn-lakeformation-principalpermissions-datacellsfilterresource-name>
                                     name :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datacellsfilterresource.html#cfn-lakeformation-principalpermissions-datacellsfilterresource-tablecatalogid>
                                     tableCatalogId :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-datacellsfilterresource.html#cfn-lakeformation-principalpermissions-datacellsfilterresource-tablename>
                                     tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), databaseName = databaseName,
       name = name, tableCatalogId = tableCatalogId,
       tableName = tableName}
instance ToResourceProperties DataCellsFilterResourceProperty where
  toResourceProperties DataCellsFilterResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.DataCellsFilterResource",
         supportsTags = Prelude.False,
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