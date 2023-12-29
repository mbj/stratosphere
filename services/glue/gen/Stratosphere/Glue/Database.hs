module Stratosphere.Glue.Database (
        module Exports, Database(..), mkDatabase
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Database.DatabaseInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Database
  = Database {catalogId :: (Value Prelude.Text),
              databaseInput :: DatabaseInputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabase ::
  Value Prelude.Text -> DatabaseInputProperty -> Database
mkDatabase catalogId databaseInput
  = Database {catalogId = catalogId, databaseInput = databaseInput}
instance ToResourceProperties Database where
  toResourceProperties Database {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database", supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "DatabaseInput" JSON..= databaseInput]}
instance JSON.ToJSON Database where
  toJSON Database {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId,
         "DatabaseInput" JSON..= databaseInput]
instance Property "CatalogId" Database where
  type PropertyType "CatalogId" Database = Value Prelude.Text
  set newValue Database {..} = Database {catalogId = newValue, ..}
instance Property "DatabaseInput" Database where
  type PropertyType "DatabaseInput" Database = DatabaseInputProperty
  set newValue Database {..}
    = Database {databaseInput = newValue, ..}