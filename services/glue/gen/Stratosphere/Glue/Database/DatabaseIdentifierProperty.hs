module Stratosphere.Glue.Database.DatabaseIdentifierProperty (
        DatabaseIdentifierProperty(..), mkDatabaseIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseIdentifierProperty
  = DatabaseIdentifierProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseIdentifierProperty :: DatabaseIdentifierProperty
mkDatabaseIdentifierProperty
  = DatabaseIdentifierProperty
      {catalogId = Prelude.Nothing, databaseName = Prelude.Nothing,
       region = Prelude.Nothing}
instance ToResourceProperties DatabaseIdentifierProperty where
  toResourceProperties DatabaseIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database.DatabaseIdentifier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON DatabaseIdentifierProperty where
  toJSON DatabaseIdentifierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "Region" Prelude.<$> region]))
instance Property "CatalogId" DatabaseIdentifierProperty where
  type PropertyType "CatalogId" DatabaseIdentifierProperty = Value Prelude.Text
  set newValue DatabaseIdentifierProperty {..}
    = DatabaseIdentifierProperty
        {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" DatabaseIdentifierProperty where
  type PropertyType "DatabaseName" DatabaseIdentifierProperty = Value Prelude.Text
  set newValue DatabaseIdentifierProperty {..}
    = DatabaseIdentifierProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "Region" DatabaseIdentifierProperty where
  type PropertyType "Region" DatabaseIdentifierProperty = Value Prelude.Text
  set newValue DatabaseIdentifierProperty {..}
    = DatabaseIdentifierProperty {region = Prelude.pure newValue, ..}