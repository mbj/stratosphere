module Stratosphere.LakeFormation.Permissions.ResourceProperty (
        module Exports, ResourceProperty(..), mkResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.DataLocationResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.DatabaseResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.TableResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.TableWithColumnsResourceProperty as Exports
import Stratosphere.ResourceProperties
data ResourceProperty
  = ResourceProperty {dataLocationResource :: (Prelude.Maybe DataLocationResourceProperty),
                      databaseResource :: (Prelude.Maybe DatabaseResourceProperty),
                      tableResource :: (Prelude.Maybe TableResourceProperty),
                      tableWithColumnsResource :: (Prelude.Maybe TableWithColumnsResourceProperty)}
mkResourceProperty :: ResourceProperty
mkResourceProperty
  = ResourceProperty
      {dataLocationResource = Prelude.Nothing,
       databaseResource = Prelude.Nothing,
       tableResource = Prelude.Nothing,
       tableWithColumnsResource = Prelude.Nothing}
instance ToResourceProperties ResourceProperty where
  toResourceProperties ResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.Resource",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLocationResource" Prelude.<$> dataLocationResource,
                            (JSON..=) "DatabaseResource" Prelude.<$> databaseResource,
                            (JSON..=) "TableResource" Prelude.<$> tableResource,
                            (JSON..=) "TableWithColumnsResource"
                              Prelude.<$> tableWithColumnsResource])}
instance JSON.ToJSON ResourceProperty where
  toJSON ResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLocationResource" Prelude.<$> dataLocationResource,
               (JSON..=) "DatabaseResource" Prelude.<$> databaseResource,
               (JSON..=) "TableResource" Prelude.<$> tableResource,
               (JSON..=) "TableWithColumnsResource"
                 Prelude.<$> tableWithColumnsResource]))
instance Property "DataLocationResource" ResourceProperty where
  type PropertyType "DataLocationResource" ResourceProperty = DataLocationResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty
        {dataLocationResource = Prelude.pure newValue, ..}
instance Property "DatabaseResource" ResourceProperty where
  type PropertyType "DatabaseResource" ResourceProperty = DatabaseResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {databaseResource = Prelude.pure newValue, ..}
instance Property "TableResource" ResourceProperty where
  type PropertyType "TableResource" ResourceProperty = TableResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty {tableResource = Prelude.pure newValue, ..}
instance Property "TableWithColumnsResource" ResourceProperty where
  type PropertyType "TableWithColumnsResource" ResourceProperty = TableWithColumnsResourceProperty
  set newValue ResourceProperty {..}
    = ResourceProperty
        {tableWithColumnsResource = Prelude.pure newValue, ..}