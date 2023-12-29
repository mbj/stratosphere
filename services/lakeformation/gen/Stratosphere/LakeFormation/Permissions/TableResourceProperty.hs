module Stratosphere.LakeFormation.Permissions.TableResourceProperty (
        module Exports, TableResourceProperty(..), mkTableResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.TableWildcardProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableResourceProperty
  = TableResourceProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                           databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           tableWildcard :: (Prelude.Maybe TableWildcardProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableResourceProperty :: TableResourceProperty
mkTableResourceProperty
  = TableResourceProperty
      {catalogId = Prelude.Nothing, databaseName = Prelude.Nothing,
       name = Prelude.Nothing, tableWildcard = Prelude.Nothing}
instance ToResourceProperties TableResourceProperty where
  toResourceProperties TableResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.TableResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "TableWildcard" Prelude.<$> tableWildcard])}
instance JSON.ToJSON TableResourceProperty where
  toJSON TableResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "TableWildcard" Prelude.<$> tableWildcard]))
instance Property "CatalogId" TableResourceProperty where
  type PropertyType "CatalogId" TableResourceProperty = Value Prelude.Text
  set newValue TableResourceProperty {..}
    = TableResourceProperty {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" TableResourceProperty where
  type PropertyType "DatabaseName" TableResourceProperty = Value Prelude.Text
  set newValue TableResourceProperty {..}
    = TableResourceProperty {databaseName = Prelude.pure newValue, ..}
instance Property "Name" TableResourceProperty where
  type PropertyType "Name" TableResourceProperty = Value Prelude.Text
  set newValue TableResourceProperty {..}
    = TableResourceProperty {name = Prelude.pure newValue, ..}
instance Property "TableWildcard" TableResourceProperty where
  type PropertyType "TableWildcard" TableResourceProperty = TableWildcardProperty
  set newValue TableResourceProperty {..}
    = TableResourceProperty {tableWildcard = Prelude.pure newValue, ..}