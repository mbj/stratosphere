module Stratosphere.LakeFormation.TagAssociation.TableWithColumnsResourceProperty (
        TableWithColumnsResourceProperty(..),
        mkTableWithColumnsResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableWithColumnsResourceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-tablewithcolumnsresource.html>
    TableWithColumnsResourceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-tablewithcolumnsresource.html#cfn-lakeformation-tagassociation-tablewithcolumnsresource-catalogid>
                                      catalogId :: (Value Prelude.Text),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-tablewithcolumnsresource.html#cfn-lakeformation-tagassociation-tablewithcolumnsresource-columnnames>
                                      columnNames :: (ValueList Prelude.Text),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-tablewithcolumnsresource.html#cfn-lakeformation-tagassociation-tablewithcolumnsresource-databasename>
                                      databaseName :: (Value Prelude.Text),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-tagassociation-tablewithcolumnsresource.html#cfn-lakeformation-tagassociation-tablewithcolumnsresource-name>
                                      name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableWithColumnsResourceProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> TableWithColumnsResourceProperty
mkTableWithColumnsResourceProperty
  catalogId
  columnNames
  databaseName
  name
  = TableWithColumnsResourceProperty
      {catalogId = catalogId, columnNames = columnNames,
       databaseName = databaseName, name = name}
instance ToResourceProperties TableWithColumnsResourceProperty where
  toResourceProperties TableWithColumnsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::TagAssociation.TableWithColumnsResource",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "ColumnNames" JSON..= columnNames,
                       "DatabaseName" JSON..= databaseName, "Name" JSON..= name]}
instance JSON.ToJSON TableWithColumnsResourceProperty where
  toJSON TableWithColumnsResourceProperty {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId, "ColumnNames" JSON..= columnNames,
         "DatabaseName" JSON..= databaseName, "Name" JSON..= name]
instance Property "CatalogId" TableWithColumnsResourceProperty where
  type PropertyType "CatalogId" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty {catalogId = newValue, ..}
instance Property "ColumnNames" TableWithColumnsResourceProperty where
  type PropertyType "ColumnNames" TableWithColumnsResourceProperty = ValueList Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty {columnNames = newValue, ..}
instance Property "DatabaseName" TableWithColumnsResourceProperty where
  type PropertyType "DatabaseName" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty {databaseName = newValue, ..}
instance Property "Name" TableWithColumnsResourceProperty where
  type PropertyType "Name" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty {name = newValue, ..}