module Stratosphere.LakeFormation.TagAssociation.ResourceProperty (
        module Exports, ResourceProperty(..), mkResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.TagAssociation.DatabaseResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.TagAssociation.TableResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.TagAssociation.TableWithColumnsResourceProperty as Exports
import Stratosphere.ResourceProperties
data ResourceProperty
  = ResourceProperty {catalog :: (Prelude.Maybe JSON.Object),
                      database :: (Prelude.Maybe DatabaseResourceProperty),
                      table :: (Prelude.Maybe TableResourceProperty),
                      tableWithColumns :: (Prelude.Maybe TableWithColumnsResourceProperty)}
mkResourceProperty :: ResourceProperty
mkResourceProperty
  = ResourceProperty
      {catalog = Prelude.Nothing, database = Prelude.Nothing,
       table = Prelude.Nothing, tableWithColumns = Prelude.Nothing}
instance ToResourceProperties ResourceProperty where
  toResourceProperties ResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::TagAssociation.Resource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Catalog" Prelude.<$> catalog,
                            (JSON..=) "Database" Prelude.<$> database,
                            (JSON..=) "Table" Prelude.<$> table,
                            (JSON..=) "TableWithColumns" Prelude.<$> tableWithColumns])}
instance JSON.ToJSON ResourceProperty where
  toJSON ResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Catalog" Prelude.<$> catalog,
               (JSON..=) "Database" Prelude.<$> database,
               (JSON..=) "Table" Prelude.<$> table,
               (JSON..=) "TableWithColumns" Prelude.<$> tableWithColumns]))
instance Property "Catalog" ResourceProperty where
  type PropertyType "Catalog" ResourceProperty = JSON.Object
  set newValue ResourceProperty {..}
    = ResourceProperty {catalog = Prelude.pure newValue, ..}
instance Property "Database" ResourceProperty where
  type PropertyType "Database" ResourceProperty = DatabaseResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {database = Prelude.pure newValue, ..}
instance Property "Table" ResourceProperty where
  type PropertyType "Table" ResourceProperty = TableResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {table = Prelude.pure newValue, ..}
instance Property "TableWithColumns" ResourceProperty where
  type PropertyType "TableWithColumns" ResourceProperty = TableWithColumnsResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {tableWithColumns = Prelude.pure newValue, ..}