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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html>
    ResourceProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-datalocationresource>
                      dataLocationResource :: (Prelude.Maybe DataLocationResourceProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-databaseresource>
                      databaseResource :: (Prelude.Maybe DatabaseResourceProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tableresource>
                      tableResource :: (Prelude.Maybe TableResourceProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tablewithcolumnsresource>
                      tableWithColumnsResource :: (Prelude.Maybe TableWithColumnsResourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceProperty :: ResourceProperty
mkResourceProperty
  = ResourceProperty
      {haddock_workaround_ = (), dataLocationResource = Prelude.Nothing,
       databaseResource = Prelude.Nothing,
       tableResource = Prelude.Nothing,
       tableWithColumnsResource = Prelude.Nothing}
instance ToResourceProperties ResourceProperty where
  toResourceProperties ResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.Resource",
         supportsTags = Prelude.False,
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