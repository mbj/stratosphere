module Stratosphere.Timestream.Database (
        Database(..), mkDatabase
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Database
  = Database {databaseName :: (Prelude.Maybe (Value Prelude.Text)),
              kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag])}
mkDatabase :: Database
mkDatabase
  = Database
      {databaseName = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Database where
  toResourceProperties Database {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::Database",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Database where
  toJSON Database {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DatabaseName" Database where
  type PropertyType "DatabaseName" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {databaseName = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Database where
  type PropertyType "KmsKeyId" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Tags" Database where
  type PropertyType "Tags" Database = [Tag]
  set newValue Database {..}
    = Database {tags = Prelude.pure newValue, ..}