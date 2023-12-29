module Stratosphere.LakeFormation.PrincipalPermissions.ResourceProperty (
        module Exports, ResourceProperty(..), mkResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.DataCellsFilterResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.DataLocationResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.DatabaseResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.LFTagKeyResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.LFTagPolicyResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.TableResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.TableWithColumnsResourceProperty as Exports
import Stratosphere.ResourceProperties
data ResourceProperty
  = ResourceProperty {catalog :: (Prelude.Maybe JSON.Object),
                      dataCellsFilter :: (Prelude.Maybe DataCellsFilterResourceProperty),
                      dataLocation :: (Prelude.Maybe DataLocationResourceProperty),
                      database :: (Prelude.Maybe DatabaseResourceProperty),
                      lFTag :: (Prelude.Maybe LFTagKeyResourceProperty),
                      lFTagPolicy :: (Prelude.Maybe LFTagPolicyResourceProperty),
                      table :: (Prelude.Maybe TableResourceProperty),
                      tableWithColumns :: (Prelude.Maybe TableWithColumnsResourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceProperty :: ResourceProperty
mkResourceProperty
  = ResourceProperty
      {catalog = Prelude.Nothing, dataCellsFilter = Prelude.Nothing,
       dataLocation = Prelude.Nothing, database = Prelude.Nothing,
       lFTag = Prelude.Nothing, lFTagPolicy = Prelude.Nothing,
       table = Prelude.Nothing, tableWithColumns = Prelude.Nothing}
instance ToResourceProperties ResourceProperty where
  toResourceProperties ResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.Resource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Catalog" Prelude.<$> catalog,
                            (JSON..=) "DataCellsFilter" Prelude.<$> dataCellsFilter,
                            (JSON..=) "DataLocation" Prelude.<$> dataLocation,
                            (JSON..=) "Database" Prelude.<$> database,
                            (JSON..=) "LFTag" Prelude.<$> lFTag,
                            (JSON..=) "LFTagPolicy" Prelude.<$> lFTagPolicy,
                            (JSON..=) "Table" Prelude.<$> table,
                            (JSON..=) "TableWithColumns" Prelude.<$> tableWithColumns])}
instance JSON.ToJSON ResourceProperty where
  toJSON ResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Catalog" Prelude.<$> catalog,
               (JSON..=) "DataCellsFilter" Prelude.<$> dataCellsFilter,
               (JSON..=) "DataLocation" Prelude.<$> dataLocation,
               (JSON..=) "Database" Prelude.<$> database,
               (JSON..=) "LFTag" Prelude.<$> lFTag,
               (JSON..=) "LFTagPolicy" Prelude.<$> lFTagPolicy,
               (JSON..=) "Table" Prelude.<$> table,
               (JSON..=) "TableWithColumns" Prelude.<$> tableWithColumns]))
instance Property "Catalog" ResourceProperty where
  type PropertyType "Catalog" ResourceProperty = JSON.Object
  set newValue ResourceProperty {..}
    = ResourceProperty {catalog = Prelude.pure newValue, ..}
instance Property "DataCellsFilter" ResourceProperty where
  type PropertyType "DataCellsFilter" ResourceProperty = DataCellsFilterResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {dataCellsFilter = Prelude.pure newValue, ..}
instance Property "DataLocation" ResourceProperty where
  type PropertyType "DataLocation" ResourceProperty = DataLocationResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {dataLocation = Prelude.pure newValue, ..}
instance Property "Database" ResourceProperty where
  type PropertyType "Database" ResourceProperty = DatabaseResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {database = Prelude.pure newValue, ..}
instance Property "LFTag" ResourceProperty where
  type PropertyType "LFTag" ResourceProperty = LFTagKeyResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {lFTag = Prelude.pure newValue, ..}
instance Property "LFTagPolicy" ResourceProperty where
  type PropertyType "LFTagPolicy" ResourceProperty = LFTagPolicyResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {lFTagPolicy = Prelude.pure newValue, ..}
instance Property "Table" ResourceProperty where
  type PropertyType "Table" ResourceProperty = TableResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {table = Prelude.pure newValue, ..}
instance Property "TableWithColumns" ResourceProperty where
  type PropertyType "TableWithColumns" ResourceProperty = TableWithColumnsResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {tableWithColumns = Prelude.pure newValue, ..}