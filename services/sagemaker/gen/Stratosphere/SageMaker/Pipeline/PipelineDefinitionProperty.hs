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
  = PipelineDefinitionProperty {pipelineDefinitionBody :: (Prelude.Maybe (Value Prelude.Text)),
                                pipelineDefinitionS3Location :: (Prelude.Maybe S3LocationProperty)}
mkPipelineDefinitionProperty :: PipelineDefinitionProperty
mkPipelineDefinitionProperty
  = PipelineDefinitionProperty
      {pipelineDefinitionBody = Prelude.Nothing,
       pipelineDefinitionS3Location = Prelude.Nothing}
instance ToResourceProperties PipelineDefinitionProperty where
  toResourceProperties PipelineDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Pipeline.PipelineDefinition",
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