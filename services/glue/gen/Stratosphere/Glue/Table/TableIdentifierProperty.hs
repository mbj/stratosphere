module Stratosphere.Glue.Table.TableIdentifierProperty (
        TableIdentifierProperty(..), mkTableIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableIdentifierProperty
  = TableIdentifierProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                             databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                             name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableIdentifierProperty :: TableIdentifierProperty
mkTableIdentifierProperty
  = TableIdentifierProperty
      {catalogId = Prelude.Nothing, databaseName = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties TableIdentifierProperty where
  toResourceProperties TableIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table.TableIdentifier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON TableIdentifierProperty where
  toJSON TableIdentifierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "CatalogId" TableIdentifierProperty where
  type PropertyType "CatalogId" TableIdentifierProperty = Value Prelude.Text
  set newValue TableIdentifierProperty {..}
    = TableIdentifierProperty {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" TableIdentifierProperty where
  type PropertyType "DatabaseName" TableIdentifierProperty = Value Prelude.Text
  set newValue TableIdentifierProperty {..}
    = TableIdentifierProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Name" TableIdentifierProperty where
  type PropertyType "Name" TableIdentifierProperty = Value Prelude.Text
  set newValue TableIdentifierProperty {..}
    = TableIdentifierProperty {name = Prelude.pure newValue, ..}