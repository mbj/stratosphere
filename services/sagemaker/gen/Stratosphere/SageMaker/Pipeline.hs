module Stratosphere.SageMaker.Pipeline (
        module Exports, Pipeline(..), mkPipeline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Pipeline.ParallelismConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Pipeline.PipelineDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Pipeline
  = Pipeline {parallelismConfiguration :: (Prelude.Maybe ParallelismConfigurationProperty),
              pipelineDefinition :: PipelineDefinitionProperty,
              pipelineDescription :: (Prelude.Maybe (Value Prelude.Text)),
              pipelineDisplayName :: (Prelude.Maybe (Value Prelude.Text)),
              pipelineName :: (Value Prelude.Text),
              roleArn :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag])}
mkPipeline ::
  PipelineDefinitionProperty
  -> Value Prelude.Text -> Value Prelude.Text -> Pipeline
mkPipeline pipelineDefinition pipelineName roleArn
  = Pipeline
      {pipelineDefinition = pipelineDefinition,
       pipelineName = pipelineName, roleArn = roleArn,
       parallelismConfiguration = Prelude.Nothing,
       pipelineDescription = Prelude.Nothing,
       pipelineDisplayName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Pipeline where
  toResourceProperties Pipeline {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Pipeline", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PipelineDefinition" JSON..= pipelineDefinition,
                            "PipelineName" JSON..= pipelineName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ParallelismConfiguration"
                                 Prelude.<$> parallelismConfiguration,
                               (JSON..=) "PipelineDescription" Prelude.<$> pipelineDescription,
                               (JSON..=) "PipelineDisplayName" Prelude.<$> pipelineDisplayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Pipeline where
  toJSON Pipeline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PipelineDefinition" JSON..= pipelineDefinition,
               "PipelineName" JSON..= pipelineName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ParallelismConfiguration"
                    Prelude.<$> parallelismConfiguration,
                  (JSON..=) "PipelineDescription" Prelude.<$> pipelineDescription,
                  (JSON..=) "PipelineDisplayName" Prelude.<$> pipelineDisplayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ParallelismConfiguration" Pipeline where
  type PropertyType "ParallelismConfiguration" Pipeline = ParallelismConfigurationProperty
  set newValue Pipeline {..}
    = Pipeline {parallelismConfiguration = Prelude.pure newValue, ..}
instance Property "PipelineDefinition" Pipeline where
  type PropertyType "PipelineDefinition" Pipeline = PipelineDefinitionProperty
  set newValue Pipeline {..}
    = Pipeline {pipelineDefinition = newValue, ..}
instance Property "PipelineDescription" Pipeline where
  type PropertyType "PipelineDescription" Pipeline = Value Prelude.Text
  set newValue Pipeline {..}
    = Pipeline {pipelineDescription = Prelude.pure newValue, ..}
instance Property "PipelineDisplayName" Pipeline where
  type PropertyType "PipelineDisplayName" Pipeline = Value Prelude.Text
  set newValue Pipeline {..}
    = Pipeline {pipelineDisplayName = Prelude.pure newValue, ..}
instance Property "PipelineName" Pipeline where
  type PropertyType "PipelineName" Pipeline = Value Prelude.Text
  set newValue Pipeline {..} = Pipeline {pipelineName = newValue, ..}
instance Property "RoleArn" Pipeline where
  type PropertyType "RoleArn" Pipeline = Value Prelude.Text
  set newValue Pipeline {..} = Pipeline {roleArn = newValue, ..}
instance Property "Tags" Pipeline where
  type PropertyType "Tags" Pipeline = [Tag]
  set newValue Pipeline {..}
    = Pipeline {tags = Prelude.pure newValue, ..}