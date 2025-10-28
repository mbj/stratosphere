module Stratosphere.SageMaker.Pipeline.PipelineDefinitionProperty (
        module Exports, PipelineDefinitionProperty(..),
        mkPipelineDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Pipeline.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipelineDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-pipeline-pipelinedefinition.html>
    PipelineDefinitionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-pipeline-pipelinedefinition.html#cfn-sagemaker-pipeline-pipelinedefinition-pipelinedefinitionbody>
                                pipelineDefinitionBody :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-pipeline-pipelinedefinition.html#cfn-sagemaker-pipeline-pipelinedefinition-pipelinedefinitions3location>
                                pipelineDefinitionS3Location :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipelineDefinitionProperty :: PipelineDefinitionProperty
mkPipelineDefinitionProperty
  = PipelineDefinitionProperty
      {haddock_workaround_ = (),
       pipelineDefinitionBody = Prelude.Nothing,
       pipelineDefinitionS3Location = Prelude.Nothing}
instance ToResourceProperties PipelineDefinitionProperty where
  toResourceProperties PipelineDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Pipeline.PipelineDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PipelineDefinitionBody"
                              Prelude.<$> pipelineDefinitionBody,
                            (JSON..=) "PipelineDefinitionS3Location"
                              Prelude.<$> pipelineDefinitionS3Location])}
instance JSON.ToJSON PipelineDefinitionProperty where
  toJSON PipelineDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PipelineDefinitionBody"
                 Prelude.<$> pipelineDefinitionBody,
               (JSON..=) "PipelineDefinitionS3Location"
                 Prelude.<$> pipelineDefinitionS3Location]))
instance Property "PipelineDefinitionBody" PipelineDefinitionProperty where
  type PropertyType "PipelineDefinitionBody" PipelineDefinitionProperty = Value Prelude.Text
  set newValue PipelineDefinitionProperty {..}
    = PipelineDefinitionProperty
        {pipelineDefinitionBody = Prelude.pure newValue, ..}
instance Property "PipelineDefinitionS3Location" PipelineDefinitionProperty where
  type PropertyType "PipelineDefinitionS3Location" PipelineDefinitionProperty = S3LocationProperty
  set newValue PipelineDefinitionProperty {..}
    = PipelineDefinitionProperty
        {pipelineDefinitionS3Location = Prelude.pure newValue, ..}