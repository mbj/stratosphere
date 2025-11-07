module Stratosphere.SageMaker.ProcessingJob.ProcessingOutputsObjectProperty (
        module Exports, ProcessingOutputsObjectProperty(..),
        mkProcessingOutputsObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.FeatureStoreOutputProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.S3OutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessingOutputsObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html>
    ProcessingOutputsObjectProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-appmanaged>
                                     appManaged :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-featurestoreoutput>
                                     featureStoreOutput :: (Prelude.Maybe FeatureStoreOutputProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-outputname>
                                     outputName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-s3output>
                                     s3Output :: (Prelude.Maybe S3OutputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessingOutputsObjectProperty ::
  Value Prelude.Text -> ProcessingOutputsObjectProperty
mkProcessingOutputsObjectProperty outputName
  = ProcessingOutputsObjectProperty
      {haddock_workaround_ = (), outputName = outputName,
       appManaged = Prelude.Nothing, featureStoreOutput = Prelude.Nothing,
       s3Output = Prelude.Nothing}
instance ToResourceProperties ProcessingOutputsObjectProperty where
  toResourceProperties ProcessingOutputsObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.ProcessingOutputsObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutputName" JSON..= outputName]
                           (Prelude.catMaybes
                              [(JSON..=) "AppManaged" Prelude.<$> appManaged,
                               (JSON..=) "FeatureStoreOutput" Prelude.<$> featureStoreOutput,
                               (JSON..=) "S3Output" Prelude.<$> s3Output]))}
instance JSON.ToJSON ProcessingOutputsObjectProperty where
  toJSON ProcessingOutputsObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutputName" JSON..= outputName]
              (Prelude.catMaybes
                 [(JSON..=) "AppManaged" Prelude.<$> appManaged,
                  (JSON..=) "FeatureStoreOutput" Prelude.<$> featureStoreOutput,
                  (JSON..=) "S3Output" Prelude.<$> s3Output])))
instance Property "AppManaged" ProcessingOutputsObjectProperty where
  type PropertyType "AppManaged" ProcessingOutputsObjectProperty = Value Prelude.Bool
  set newValue ProcessingOutputsObjectProperty {..}
    = ProcessingOutputsObjectProperty
        {appManaged = Prelude.pure newValue, ..}
instance Property "FeatureStoreOutput" ProcessingOutputsObjectProperty where
  type PropertyType "FeatureStoreOutput" ProcessingOutputsObjectProperty = FeatureStoreOutputProperty
  set newValue ProcessingOutputsObjectProperty {..}
    = ProcessingOutputsObjectProperty
        {featureStoreOutput = Prelude.pure newValue, ..}
instance Property "OutputName" ProcessingOutputsObjectProperty where
  type PropertyType "OutputName" ProcessingOutputsObjectProperty = Value Prelude.Text
  set newValue ProcessingOutputsObjectProperty {..}
    = ProcessingOutputsObjectProperty {outputName = newValue, ..}
instance Property "S3Output" ProcessingOutputsObjectProperty where
  type PropertyType "S3Output" ProcessingOutputsObjectProperty = S3OutputProperty
  set newValue ProcessingOutputsObjectProperty {..}
    = ProcessingOutputsObjectProperty
        {s3Output = Prelude.pure newValue, ..}