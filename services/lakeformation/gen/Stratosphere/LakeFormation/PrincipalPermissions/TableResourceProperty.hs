module Stratosphere.LakeFormation.PrincipalPermissions.TableResourceProperty (
        TableResourceProperty(..), mkTableResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableResourceProperty
  = TableResourceProperty {catalogId :: (Value Prelude.Text),
                           databaseName :: (Value Prelude.Text),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           tableWildcard :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableResourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TableResourceProperty
mkTableResourceProperty catalogId databaseName
  = TableResourceProperty
      {catalogId = catalogId, databaseName = databaseName,
       name = Prelude.Nothing, tableWildcard = Prelude.Nothing}
instance ToResourceProperties TableResourceProperty where
  toResourceProperties TableResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.TableResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CatalogId" JSON..= catalogId,
                            "DatabaseName" JSON..= databaseName]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "TableWildcard" Prelude.<$> tableWildcard]))}
instance JSON.ToJSON TableResourceProperty where
  toJSON TableResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CatalogId" JSON..= catalogId,
               "DatabaseName" JSON..= databaseName]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "TableWildcard" Prelude.<$> tableWildcard])))
instance Property "CatalogId" TableResourceProperty where
  type PropertyType "CatalogId" TableResourceProperty = Value Prelude.Text
  set newValue TableResourceProperty {..}
    = TableResourceProperty {catalogId = newValue, ..}
instance Property "DatabaseName" TableResourceProperty where
  type PropertyType "DatabaseName" TableResourceProperty = Value Prelude.Text
  set newValue TableResourceProperty {..}
    = TableResourceProperty {databaseName = newValue, ..}
instance Property "Name" TableResourceProperty where
  type PropertyType "Name" TableResourceProperty = Value Prelude.Text
  set newValue TableResourceProperty {..}
    = TableResourceProperty {name = Prelude.pure newValue, ..}
instance Property "TableWildcard" TableResourceProperty where
  type PropertyType "TableWildcard" TableResourceProperty = JSON.Object
  set newValue TableResourceProperty {..}
    = TableResourceProperty {tableWildcard = Prelude.pure newValue, ..}