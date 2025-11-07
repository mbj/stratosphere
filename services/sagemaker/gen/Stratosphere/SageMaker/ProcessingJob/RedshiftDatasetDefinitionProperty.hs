module Stratosphere.SageMaker.ProcessingJob.RedshiftDatasetDefinitionProperty (
        RedshiftDatasetDefinitionProperty(..),
        mkRedshiftDatasetDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftDatasetDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html>
    RedshiftDatasetDefinitionProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-clusterid>
                                       clusterId :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-clusterrolearn>
                                       clusterRoleArn :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-database>
                                       database :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-dbuser>
                                       dbUser :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-kmskeyid>
                                       kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-outputcompression>
                                       outputCompression :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-outputformat>
                                       outputFormat :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-outputs3uri>
                                       outputS3Uri :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-redshiftdatasetdefinition.html#cfn-sagemaker-processingjob-redshiftdatasetdefinition-querystring>
                                       queryString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftDatasetDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Text -> RedshiftDatasetDefinitionProperty
mkRedshiftDatasetDefinitionProperty
  clusterId
  clusterRoleArn
  database
  dbUser
  outputFormat
  outputS3Uri
  queryString
  = RedshiftDatasetDefinitionProperty
      {haddock_workaround_ = (), clusterId = clusterId,
       clusterRoleArn = clusterRoleArn, database = database,
       dbUser = dbUser, outputFormat = outputFormat,
       outputS3Uri = outputS3Uri, queryString = queryString,
       kmsKeyId = Prelude.Nothing, outputCompression = Prelude.Nothing}
instance ToResourceProperties RedshiftDatasetDefinitionProperty where
  toResourceProperties RedshiftDatasetDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.RedshiftDatasetDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterId" JSON..= clusterId,
                            "ClusterRoleArn" JSON..= clusterRoleArn,
                            "Database" JSON..= database, "DbUser" JSON..= dbUser,
                            "OutputFormat" JSON..= outputFormat,
                            "OutputS3Uri" JSON..= outputS3Uri,
                            "QueryString" JSON..= queryString]
                           (Prelude.catMaybes
                              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "OutputCompression" Prelude.<$> outputCompression]))}
instance JSON.ToJSON RedshiftDatasetDefinitionProperty where
  toJSON RedshiftDatasetDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterId" JSON..= clusterId,
               "ClusterRoleArn" JSON..= clusterRoleArn,
               "Database" JSON..= database, "DbUser" JSON..= dbUser,
               "OutputFormat" JSON..= outputFormat,
               "OutputS3Uri" JSON..= outputS3Uri,
               "QueryString" JSON..= queryString]
              (Prelude.catMaybes
                 [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "OutputCompression" Prelude.<$> outputCompression])))
instance Property "ClusterId" RedshiftDatasetDefinitionProperty where
  type PropertyType "ClusterId" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty {clusterId = newValue, ..}
instance Property "ClusterRoleArn" RedshiftDatasetDefinitionProperty where
  type PropertyType "ClusterRoleArn" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty {clusterRoleArn = newValue, ..}
instance Property "Database" RedshiftDatasetDefinitionProperty where
  type PropertyType "Database" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty {database = newValue, ..}
instance Property "DbUser" RedshiftDatasetDefinitionProperty where
  type PropertyType "DbUser" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty {dbUser = newValue, ..}
instance Property "KmsKeyId" RedshiftDatasetDefinitionProperty where
  type PropertyType "KmsKeyId" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "OutputCompression" RedshiftDatasetDefinitionProperty where
  type PropertyType "OutputCompression" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty
        {outputCompression = Prelude.pure newValue, ..}
instance Property "OutputFormat" RedshiftDatasetDefinitionProperty where
  type PropertyType "OutputFormat" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty {outputFormat = newValue, ..}
instance Property "OutputS3Uri" RedshiftDatasetDefinitionProperty where
  type PropertyType "OutputS3Uri" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty {outputS3Uri = newValue, ..}
instance Property "QueryString" RedshiftDatasetDefinitionProperty where
  type PropertyType "QueryString" RedshiftDatasetDefinitionProperty = Value Prelude.Text
  set newValue RedshiftDatasetDefinitionProperty {..}
    = RedshiftDatasetDefinitionProperty {queryString = newValue, ..}