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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html>
    TableResourceProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-catalogid>
                           catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-databasename>
                           databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-tablewildcard>
                           tableWildcard :: (Prelude.Maybe TableWildcardProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableResourceProperty :: TableResourceProperty
mkTableResourceProperty
  = TableResourceProperty
      {haddock_workaround_ = (), catalogId = Prelude.Nothing,
       databaseName = Prelude.Nothing, name = Prelude.Nothing,
       tableWildcard = Prelude.Nothing}
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