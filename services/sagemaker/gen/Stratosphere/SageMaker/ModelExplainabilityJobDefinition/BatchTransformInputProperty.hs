module Stratosphere.SageMaker.ModelExplainabilityJobDefinition.BatchTransformInputProperty (
        module Exports, BatchTransformInputProperty(..),
        mkBatchTransformInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelExplainabilityJobDefinition.DatasetFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchTransformInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html>
    BatchTransformInputProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-datacaptureddestinations3uri>
                                 dataCapturedDestinationS3Uri :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-datasetformat>
                                 datasetFormat :: DatasetFormatProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-featuresattribute>
                                 featuresAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-inferenceattribute>
                                 inferenceAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-localpath>
                                 localPath :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-probabilityattribute>
                                 probabilityAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-s3datadistributiontype>
                                 s3DataDistributionType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-batchtransforminput.html#cfn-sagemaker-modelexplainabilityjobdefinition-batchtransforminput-s3inputmode>
                                 s3InputMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchTransformInputProperty ::
  Value Prelude.Text
  -> DatasetFormatProperty
     -> Value Prelude.Text -> BatchTransformInputProperty
mkBatchTransformInputProperty
  dataCapturedDestinationS3Uri
  datasetFormat
  localPath
  = BatchTransformInputProperty
      {haddock_workaround_ = (),
       dataCapturedDestinationS3Uri = dataCapturedDestinationS3Uri,
       datasetFormat = datasetFormat, localPath = localPath,
       featuresAttribute = Prelude.Nothing,
       inferenceAttribute = Prelude.Nothing,
       probabilityAttribute = Prelude.Nothing,
       s3DataDistributionType = Prelude.Nothing,
       s3InputMode = Prelude.Nothing}
instance ToResourceProperties BatchTransformInputProperty where
  toResourceProperties BatchTransformInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition.BatchTransformInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataCapturedDestinationS3Uri"
                              JSON..= dataCapturedDestinationS3Uri,
                            "DatasetFormat" JSON..= datasetFormat,
                            "LocalPath" JSON..= localPath]
                           (Prelude.catMaybes
                              [(JSON..=) "FeaturesAttribute" Prelude.<$> featuresAttribute,
                               (JSON..=) "InferenceAttribute" Prelude.<$> inferenceAttribute,
                               (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
                               (JSON..=) "S3DataDistributionType"
                                 Prelude.<$> s3DataDistributionType,
                               (JSON..=) "S3InputMode" Prelude.<$> s3InputMode]))}
instance JSON.ToJSON BatchTransformInputProperty where
  toJSON BatchTransformInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataCapturedDestinationS3Uri"
                 JSON..= dataCapturedDestinationS3Uri,
               "DatasetFormat" JSON..= datasetFormat,
               "LocalPath" JSON..= localPath]
              (Prelude.catMaybes
                 [(JSON..=) "FeaturesAttribute" Prelude.<$> featuresAttribute,
                  (JSON..=) "InferenceAttribute" Prelude.<$> inferenceAttribute,
                  (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
                  (JSON..=) "S3DataDistributionType"
                    Prelude.<$> s3DataDistributionType,
                  (JSON..=) "S3InputMode" Prelude.<$> s3InputMode])))
instance Property "DataCapturedDestinationS3Uri" BatchTransformInputProperty where
  type PropertyType "DataCapturedDestinationS3Uri" BatchTransformInputProperty = Value Prelude.Text
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty
        {dataCapturedDestinationS3Uri = newValue, ..}
instance Property "DatasetFormat" BatchTransformInputProperty where
  type PropertyType "DatasetFormat" BatchTransformInputProperty = DatasetFormatProperty
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty {datasetFormat = newValue, ..}
instance Property "FeaturesAttribute" BatchTransformInputProperty where
  type PropertyType "FeaturesAttribute" BatchTransformInputProperty = Value Prelude.Text
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty
        {featuresAttribute = Prelude.pure newValue, ..}
instance Property "InferenceAttribute" BatchTransformInputProperty where
  type PropertyType "InferenceAttribute" BatchTransformInputProperty = Value Prelude.Text
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty
        {inferenceAttribute = Prelude.pure newValue, ..}
instance Property "LocalPath" BatchTransformInputProperty where
  type PropertyType "LocalPath" BatchTransformInputProperty = Value Prelude.Text
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty {localPath = newValue, ..}
instance Property "ProbabilityAttribute" BatchTransformInputProperty where
  type PropertyType "ProbabilityAttribute" BatchTransformInputProperty = Value Prelude.Text
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty
        {probabilityAttribute = Prelude.pure newValue, ..}
instance Property "S3DataDistributionType" BatchTransformInputProperty where
  type PropertyType "S3DataDistributionType" BatchTransformInputProperty = Value Prelude.Text
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty
        {s3DataDistributionType = Prelude.pure newValue, ..}
instance Property "S3InputMode" BatchTransformInputProperty where
  type PropertyType "S3InputMode" BatchTransformInputProperty = Value Prelude.Text
  set newValue BatchTransformInputProperty {..}
    = BatchTransformInputProperty
        {s3InputMode = Prelude.pure newValue, ..}