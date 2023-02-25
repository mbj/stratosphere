module Stratosphere.DataBrew.Job.DatabaseOutputProperty (
        module Exports, DatabaseOutputProperty(..),
        mkDatabaseOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.DatabaseTableOutputOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseOutputProperty
  = DatabaseOutputProperty {databaseOptions :: DatabaseTableOutputOptionsProperty,
                            databaseOutputMode :: (Prelude.Maybe (Value Prelude.Text)),
                            glueConnectionName :: (Value Prelude.Text)}
mkDatabaseOutputProperty ::
  DatabaseTableOutputOptionsProperty
  -> Value Prelude.Text -> DatabaseOutputProperty
mkDatabaseOutputProperty databaseOptions glueConnectionName
  = DatabaseOutputProperty
      {databaseOptions = databaseOptions,
       glueConnectionName = glueConnectionName,
       databaseOutputMode = Prelude.Nothing}
instance ToResourceProperties DatabaseOutputProperty where
  toResourceProperties DatabaseOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.DatabaseOutput",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseOptions" JSON..= databaseOptions,
                            "GlueConnectionName" JSON..= glueConnectionName]
                           (Prelude.catMaybes
                              [(JSON..=) "DatabaseOutputMode" Prelude.<$> databaseOutputMode]))}
instance JSON.ToJSON DatabaseOutputProperty where
  toJSON DatabaseOutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseOptions" JSON..= databaseOptions,
               "GlueConnectionName" JSON..= glueConnectionName]
              (Prelude.catMaybes
                 [(JSON..=) "DatabaseOutputMode" Prelude.<$> databaseOutputMode])))
instance Property "DatabaseOptions" DatabaseOutputProperty where
  type PropertyType "DatabaseOptions" DatabaseOutputProperty = DatabaseTableOutputOptionsProperty
  set newValue DatabaseOutputProperty {..}
    = DatabaseOutputProperty {databaseOptions = newValue, ..}
instance Property "DatabaseOutputMode" DatabaseOutputProperty where
  type PropertyType "DatabaseOutputMode" DatabaseOutputProperty = Value Prelude.Text
  set newValue DatabaseOutputProperty {..}
    = DatabaseOutputProperty
        {databaseOutputMode = Prelude.pure newValue, ..}
instance Property "GlueConnectionName" DatabaseOutputProperty where
  type PropertyType "GlueConnectionName" DatabaseOutputProperty = Value Prelude.Text
  set newValue DatabaseOutputProperty {..}
    = DatabaseOutputProperty {glueConnectionName = newValue, ..}