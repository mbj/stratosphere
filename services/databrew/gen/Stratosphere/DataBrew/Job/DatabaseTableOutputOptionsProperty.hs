module Stratosphere.DataBrew.Job.DatabaseTableOutputOptionsProperty (
        module Exports, DatabaseTableOutputOptionsProperty(..),
        mkDatabaseTableOutputOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseTableOutputOptionsProperty
  = DatabaseTableOutputOptionsProperty {tableName :: (Value Prelude.Text),
                                        tempDirectory :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseTableOutputOptionsProperty ::
  Value Prelude.Text -> DatabaseTableOutputOptionsProperty
mkDatabaseTableOutputOptionsProperty tableName
  = DatabaseTableOutputOptionsProperty
      {tableName = tableName, tempDirectory = Prelude.Nothing}
instance ToResourceProperties DatabaseTableOutputOptionsProperty where
  toResourceProperties DatabaseTableOutputOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.DatabaseTableOutputOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "TempDirectory" Prelude.<$> tempDirectory]))}
instance JSON.ToJSON DatabaseTableOutputOptionsProperty where
  toJSON DatabaseTableOutputOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "TempDirectory" Prelude.<$> tempDirectory])))
instance Property "TableName" DatabaseTableOutputOptionsProperty where
  type PropertyType "TableName" DatabaseTableOutputOptionsProperty = Value Prelude.Text
  set newValue DatabaseTableOutputOptionsProperty {..}
    = DatabaseTableOutputOptionsProperty {tableName = newValue, ..}
instance Property "TempDirectory" DatabaseTableOutputOptionsProperty where
  type PropertyType "TempDirectory" DatabaseTableOutputOptionsProperty = S3LocationProperty
  set newValue DatabaseTableOutputOptionsProperty {..}
    = DatabaseTableOutputOptionsProperty
        {tempDirectory = Prelude.pure newValue, ..}