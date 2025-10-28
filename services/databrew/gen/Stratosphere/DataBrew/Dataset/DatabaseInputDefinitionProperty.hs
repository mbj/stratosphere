module Stratosphere.DataBrew.Dataset.DatabaseInputDefinitionProperty (
        module Exports, DatabaseInputDefinitionProperty(..),
        mkDatabaseInputDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseInputDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-databaseinputdefinition.html>
    DatabaseInputDefinitionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-databaseinputdefinition.html#cfn-databrew-dataset-databaseinputdefinition-databasetablename>
                                     databaseTableName :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-databaseinputdefinition.html#cfn-databrew-dataset-databaseinputdefinition-glueconnectionname>
                                     glueConnectionName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-databaseinputdefinition.html#cfn-databrew-dataset-databaseinputdefinition-querystring>
                                     queryString :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-databaseinputdefinition.html#cfn-databrew-dataset-databaseinputdefinition-tempdirectory>
                                     tempDirectory :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseInputDefinitionProperty ::
  Value Prelude.Text -> DatabaseInputDefinitionProperty
mkDatabaseInputDefinitionProperty glueConnectionName
  = DatabaseInputDefinitionProperty
      {haddock_workaround_ = (), glueConnectionName = glueConnectionName,
       databaseTableName = Prelude.Nothing, queryString = Prelude.Nothing,
       tempDirectory = Prelude.Nothing}
instance ToResourceProperties DatabaseInputDefinitionProperty where
  toResourceProperties DatabaseInputDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.DatabaseInputDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GlueConnectionName" JSON..= glueConnectionName]
                           (Prelude.catMaybes
                              [(JSON..=) "DatabaseTableName" Prelude.<$> databaseTableName,
                               (JSON..=) "QueryString" Prelude.<$> queryString,
                               (JSON..=) "TempDirectory" Prelude.<$> tempDirectory]))}
instance JSON.ToJSON DatabaseInputDefinitionProperty where
  toJSON DatabaseInputDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GlueConnectionName" JSON..= glueConnectionName]
              (Prelude.catMaybes
                 [(JSON..=) "DatabaseTableName" Prelude.<$> databaseTableName,
                  (JSON..=) "QueryString" Prelude.<$> queryString,
                  (JSON..=) "TempDirectory" Prelude.<$> tempDirectory])))
instance Property "DatabaseTableName" DatabaseInputDefinitionProperty where
  type PropertyType "DatabaseTableName" DatabaseInputDefinitionProperty = Value Prelude.Text
  set newValue DatabaseInputDefinitionProperty {..}
    = DatabaseInputDefinitionProperty
        {databaseTableName = Prelude.pure newValue, ..}
instance Property "GlueConnectionName" DatabaseInputDefinitionProperty where
  type PropertyType "GlueConnectionName" DatabaseInputDefinitionProperty = Value Prelude.Text
  set newValue DatabaseInputDefinitionProperty {..}
    = DatabaseInputDefinitionProperty
        {glueConnectionName = newValue, ..}
instance Property "QueryString" DatabaseInputDefinitionProperty where
  type PropertyType "QueryString" DatabaseInputDefinitionProperty = Value Prelude.Text
  set newValue DatabaseInputDefinitionProperty {..}
    = DatabaseInputDefinitionProperty
        {queryString = Prelude.pure newValue, ..}
instance Property "TempDirectory" DatabaseInputDefinitionProperty where
  type PropertyType "TempDirectory" DatabaseInputDefinitionProperty = S3LocationProperty
  set newValue DatabaseInputDefinitionProperty {..}
    = DatabaseInputDefinitionProperty
        {tempDirectory = Prelude.pure newValue, ..}