module Stratosphere.LakeFormation.Permissions.TableWithColumnsResourceProperty (
        module Exports, TableWithColumnsResourceProperty(..),
        mkTableWithColumnsResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.ColumnWildcardProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableWithColumnsResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html>
    TableWithColumnsResourceProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-catalogid>
                                      catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnnames>
                                      columnNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnwildcard>
                                      columnWildcard :: (Prelude.Maybe ColumnWildcardProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-databasename>
                                      databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-name>
                                      name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableWithColumnsResourceProperty ::
  TableWithColumnsResourceProperty
mkTableWithColumnsResourceProperty
  = TableWithColumnsResourceProperty
      {haddock_workaround_ = (), catalogId = Prelude.Nothing,
       columnNames = Prelude.Nothing, columnWildcard = Prelude.Nothing,
       databaseName = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties TableWithColumnsResourceProperty where
  toResourceProperties TableWithColumnsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.TableWithColumnsResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "ColumnNames" Prelude.<$> columnNames,
                            (JSON..=) "ColumnWildcard" Prelude.<$> columnWildcard,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON TableWithColumnsResourceProperty where
  toJSON TableWithColumnsResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "ColumnNames" Prelude.<$> columnNames,
               (JSON..=) "ColumnWildcard" Prelude.<$> columnWildcard,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "CatalogId" TableWithColumnsResourceProperty where
  type PropertyType "CatalogId" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty
        {catalogId = Prelude.pure newValue, ..}
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
    = TableWithColumnsResourceProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Name" TableWithColumnsResourceProperty where
  type PropertyType "Name" TableWithColumnsResourceProperty = Value Prelude.Text
  set newValue TableWithColumnsResourceProperty {..}
    = TableWithColumnsResourceProperty
        {name = Prelude.pure newValue, ..}