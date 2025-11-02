module Stratosphere.LakeFormation.PrincipalPermissions.TableWithColumnsResourceProperty (
        module Exports, TableWithColumnsResourceProperty(..),
        mkTableWithColumnsResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.ColumnWildcardProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableWithColumnsResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-tablewithcolumnsresource.html>
    TableWithColumnsResourceProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-tablewithcolumnsresource.html#cfn-lakeformation-principalpermissions-tablewithcolumnsresource-catalogid>
                                      catalogId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-tablewithcolumnsresource.html#cfn-lakeformation-principalpermissions-tablewithcolumnsresource-columnnames>
                                      columnNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-tablewithcolumnsresource.html#cfn-lakeformation-principalpermissions-tablewithcolumnsresource-columnwildcard>
                                      columnWildcard :: (Prelude.Maybe ColumnWildcardProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-tablewithcolumnsresource.html#cfn-lakeformation-principalpermissions-tablewithcolumnsresource-databasename>
                                      databaseName :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-principalpermissions-tablewithcolumnsresource.html#cfn-lakeformation-principalpermissions-tablewithcolumnsresource-name>
                                      name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableWithColumnsResourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TableWithColumnsResourceProperty
mkTableWithColumnsResourceProperty catalogId databaseName name
  = TableWithColumnsResourceProperty
      {haddock_workaround_ = (), catalogId = catalogId,
       databaseName = databaseName, name = name,
       columnNames = Prelude.Nothing, columnWildcard = Prelude.Nothing}
instance ToResourceProperties TableWithColumnsResourceProperty where
  toResourceProperties TableWithColumnsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.TableWithColumnsResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CatalogId" JSON..= catalogId,
                            "DatabaseName" JSON..= databaseName, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ColumnNames" Prelude.<$> columnNames,
                               (JSON..=) "ColumnWildcard" Prelude.<$> columnWildcard]))}
instance JSON.ToJSON TableWithColumnsResourceProperty where
  toJSON TableWithColumnsResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CatalogId" JSON..= catalogId,
               "DatabaseName" JSON..= databaseName, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ColumnNames" Prelude.<$> columnNames,
                  (JSON..=) "ColumnWildcard" Prelude.<$> columnWildcard])))
instance Property "CatalogId" TableWithColumnsResourceProperty where
  type PropertyType "CatalogId" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty {catalogId = newValue, ..}
instance Property "ColumnNames" TableWithColumnsResourceProperty where
  type PropertyType "ColumnNames" TableWithColumnsResourceProperty = ValueList Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty
        {columnNames = Prelude.pure newValue, ..}
instance Property "ColumnWildcard" TableWithColumnsResourceProperty where
  type PropertyType "ColumnWildcard" TableWithColumnsResourceProperty = ColumnWildcardProperty
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty
        {columnWildcard = Prelude.pure newValue, ..}
instance Property "DatabaseName" TableWithColumnsResourceProperty where
  type PropertyType "DatabaseName" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty {databaseName = newValue, ..}
instance Property "Name" TableWithColumnsResourceProperty where
  type PropertyType "Name" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty {name = newValue, ..}