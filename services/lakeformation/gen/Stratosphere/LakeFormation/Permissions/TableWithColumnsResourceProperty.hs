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
  = TableWithColumnsResourceProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                      columnNames :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                      columnWildcard :: (Prelude.Maybe ColumnWildcardProperty),
                                      databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                      name :: (Prelude.Maybe (Value Prelude.Text))}
mkTableWithColumnsResourceProperty ::
  TableWithColumnsResourceProperty
mkTableWithColumnsResourceProperty
  = TableWithColumnsResourceProperty
      {catalogId = Prelude.Nothing, columnNames = Prelude.Nothing,
       columnWildcard = Prelude.Nothing, databaseName = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties TableWithColumnsResourceProperty where
  toResourceProperties TableWithColumnsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.TableWithColumnsResource",
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
  type PropertyType "ColumnNames" TableWithColumnsResourceProperty = ValueList (Value Prelude.Text)
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