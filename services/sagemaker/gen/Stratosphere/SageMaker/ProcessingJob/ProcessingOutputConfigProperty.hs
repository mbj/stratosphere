module Stratosphere.SageMaker.ProcessingJob.ProcessingOutputConfigProperty (
        module Exports, ProcessingOutputConfigProperty(..),
        mkProcessingOutputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ProcessingJob.ProcessingOutputsObjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessingOutputConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputconfig.html>
    ProcessingOutputConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputconfig.html#cfn-sagemaker-processingjob-processingoutputconfig-kmskeyid>
                                    kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputconfig.html#cfn-sagemaker-processingjob-processingoutputconfig-outputs>
                                    outputs :: [ProcessingOutputsObjectProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessingOutputConfigProperty ::
  [ProcessingOutputsObjectProperty] -> ProcessingOutputConfigProperty
mkProcessingOutputConfigProperty outputs
  = ProcessingOutputConfigProperty
      {haddock_workaround_ = (), outputs = outputs,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties ProcessingOutputConfigProperty where
  toResourceProperties ProcessingOutputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.ProcessingOutputConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Outputs" JSON..= outputs]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON ProcessingOutputConfigProperty where
  toJSON ProcessingOutputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Outputs" JSON..= outputs]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" ProcessingOutputConfigProperty where
  type PropertyType "KmsKeyId" ProcessingOutputConfigProperty = Value Prelude.Text
  set newValue ProcessingOutputConfigProperty {..}
    = ProcessingOutputConfigProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Outputs" ProcessingOutputConfigProperty where
  type PropertyType "Outputs" ProcessingOutputConfigProperty = [ProcessingOutputsObjectProperty]
  set newValue ProcessingOutputConfigProperty {..}
    = ProcessingOutputConfigProperty {outputs = newValue, ..}