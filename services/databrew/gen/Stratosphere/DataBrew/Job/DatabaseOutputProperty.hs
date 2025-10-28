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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-databaseoutput.html>
    DatabaseOutputProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-databaseoutput.html#cfn-databrew-job-databaseoutput-databaseoptions>
                            databaseOptions :: DatabaseTableOutputOptionsProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-databaseoutput.html#cfn-databrew-job-databaseoutput-databaseoutputmode>
                            databaseOutputMode :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-databaseoutput.html#cfn-databrew-job-databaseoutput-glueconnectionname>
                            glueConnectionName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseOutputProperty ::
  DatabaseTableOutputOptionsProperty
  -> Value Prelude.Text -> DatabaseOutputProperty
mkDatabaseOutputProperty databaseOptions glueConnectionName
  = DatabaseOutputProperty
      {haddock_workaround_ = (), databaseOptions = databaseOptions,
       glueConnectionName = glueConnectionName,
       databaseOutputMode = Prelude.Nothing}
instance ToResourceProperties DatabaseOutputProperty where
  toResourceProperties DatabaseOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.DatabaseOutput",
         supportsTags = Prelude.False,
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