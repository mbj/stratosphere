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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html>
    Database {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-catalogid>
              catalogId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-databaseinput>
              databaseInput :: DatabaseInputProperty,
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-databasename>
              databaseName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabase ::
  Value Prelude.Text -> DatabaseInputProperty -> Database
mkDatabase catalogId databaseInput
  = Database
      {haddock_workaround_ = (), catalogId = catalogId,
       databaseInput = databaseInput, databaseName = Prelude.Nothing}
instance ToResourceProperties Database where
  toResourceProperties Database {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CatalogId" JSON..= catalogId,
                            "DatabaseInput" JSON..= databaseInput]
                           (Prelude.catMaybes
                              [(JSON..=) "DatabaseName" Prelude.<$> databaseName]))}
instance JSON.ToJSON Database where
  toJSON Database {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CatalogId" JSON..= catalogId,
               "DatabaseInput" JSON..= databaseInput]
              (Prelude.catMaybes
                 [(JSON..=) "DatabaseName" Prelude.<$> databaseName])))
instance Property "CatalogId" Database where
  type PropertyType "CatalogId" Database = Value Prelude.Text
  set newValue Database {..} = Database {catalogId = newValue, ..}
instance Property "DatabaseInput" Database where
  type PropertyType "DatabaseInput" Database = DatabaseInputProperty
  set newValue Database {..}
    = Database {databaseInput = newValue, ..}
instance Property "DatabaseName" Database where
  type PropertyType "DatabaseName" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {databaseName = Prelude.pure newValue, ..}