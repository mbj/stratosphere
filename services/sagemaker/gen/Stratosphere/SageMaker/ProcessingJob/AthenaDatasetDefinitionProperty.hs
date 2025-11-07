module Stratosphere.SageMaker.ProcessingJob.AthenaDatasetDefinitionProperty (
        AthenaDatasetDefinitionProperty(..),
        mkAthenaDatasetDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AthenaDatasetDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html>
    AthenaDatasetDefinitionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-catalog>
                                     catalog :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-database>
                                     database :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-kmskeyid>
                                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-outputcompression>
                                     outputCompression :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-outputformat>
                                     outputFormat :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-outputs3uri>
                                     outputS3Uri :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-querystring>
                                     queryString :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-athenadatasetdefinition.html#cfn-sagemaker-processingjob-athenadatasetdefinition-workgroup>
                                     workGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAthenaDatasetDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> AthenaDatasetDefinitionProperty
mkAthenaDatasetDefinitionProperty
  catalog
  database
  outputFormat
  outputS3Uri
  queryString
  = AthenaDatasetDefinitionProperty
      {haddock_workaround_ = (), catalog = catalog, database = database,
       outputFormat = outputFormat, outputS3Uri = outputS3Uri,
       queryString = queryString, kmsKeyId = Prelude.Nothing,
       outputCompression = Prelude.Nothing, workGroup = Prelude.Nothing}
instance ToResourceProperties AthenaDatasetDefinitionProperty where
  toResourceProperties AthenaDatasetDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.AthenaDatasetDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Catalog" JSON..= catalog, "Database" JSON..= database,
                            "OutputFormat" JSON..= outputFormat,
                            "OutputS3Uri" JSON..= outputS3Uri,
                            "QueryString" JSON..= queryString]
                           (Prelude.catMaybes
                              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "OutputCompression" Prelude.<$> outputCompression,
                               (JSON..=) "WorkGroup" Prelude.<$> workGroup]))}
instance JSON.ToJSON AthenaDatasetDefinitionProperty where
  toJSON AthenaDatasetDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Catalog" JSON..= catalog, "Database" JSON..= database,
               "OutputFormat" JSON..= outputFormat,
               "OutputS3Uri" JSON..= outputS3Uri,
               "QueryString" JSON..= queryString]
              (Prelude.catMaybes
                 [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "OutputCompression" Prelude.<$> outputCompression,
                  (JSON..=) "WorkGroup" Prelude.<$> workGroup])))
instance Property "Catalog" AthenaDatasetDefinitionProperty where
  type PropertyType "Catalog" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty {catalog = newValue, ..}
instance Property "Database" AthenaDatasetDefinitionProperty where
  type PropertyType "Database" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty {database = newValue, ..}
instance Property "KmsKeyId" AthenaDatasetDefinitionProperty where
  type PropertyType "KmsKeyId" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "OutputCompression" AthenaDatasetDefinitionProperty where
  type PropertyType "OutputCompression" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty
        {outputCompression = Prelude.pure newValue, ..}
instance Property "OutputFormat" AthenaDatasetDefinitionProperty where
  type PropertyType "OutputFormat" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty {outputFormat = newValue, ..}
instance Property "OutputS3Uri" AthenaDatasetDefinitionProperty where
  type PropertyType "OutputS3Uri" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty {outputS3Uri = newValue, ..}
instance Property "QueryString" AthenaDatasetDefinitionProperty where
  type PropertyType "QueryString" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty {queryString = newValue, ..}
instance Property "WorkGroup" AthenaDatasetDefinitionProperty where
  type PropertyType "WorkGroup" AthenaDatasetDefinitionProperty = Value Prelude.Text
  set newValue AthenaDatasetDefinitionProperty {..}
    = AthenaDatasetDefinitionProperty
        {workGroup = Prelude.pure newValue, ..}