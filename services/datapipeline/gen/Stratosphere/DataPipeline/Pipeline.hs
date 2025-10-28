module Stratosphere.DataPipeline.Pipeline (
        module Exports, Pipeline(..), mkPipeline
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataPipeline.Pipeline.ParameterObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.DataPipeline.Pipeline.ParameterValueProperty as Exports
import {-# SOURCE #-} Stratosphere.DataPipeline.Pipeline.PipelineObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.DataPipeline.Pipeline.PipelineTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Pipeline
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html>
    Pipeline {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-activate>
              activate :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-parameterobjects>
              parameterObjects :: (Prelude.Maybe [ParameterObjectProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-parametervalues>
              parameterValues :: (Prelude.Maybe [ParameterValueProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-pipelineobjects>
              pipelineObjects :: (Prelude.Maybe [PipelineObjectProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-pipelinetags>
              pipelineTags :: (Prelude.Maybe [PipelineTagProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeline :: Value Prelude.Text -> Pipeline
mkPipeline name
  = Pipeline
      {haddock_workaround_ = (), name = name, activate = Prelude.Nothing,
       description = Prelude.Nothing, parameterObjects = Prelude.Nothing,
       parameterValues = Prelude.Nothing,
       pipelineObjects = Prelude.Nothing, pipelineTags = Prelude.Nothing}
instance ToResourceProperties Pipeline where
  toResourceProperties Pipeline {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Activate" Prelude.<$> activate,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ParameterObjects" Prelude.<$> parameterObjects,
                               (JSON..=) "ParameterValues" Prelude.<$> parameterValues,
                               (JSON..=) "PipelineObjects" Prelude.<$> pipelineObjects,
                               (JSON..=) "PipelineTags" Prelude.<$> pipelineTags]))}
instance JSON.ToJSON Pipeline where
  toJSON Pipeline {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Activate" Prelude.<$> activate,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ParameterObjects" Prelude.<$> parameterObjects,
                  (JSON..=) "ParameterValues" Prelude.<$> parameterValues,
                  (JSON..=) "PipelineObjects" Prelude.<$> pipelineObjects,
                  (JSON..=) "PipelineTags" Prelude.<$> pipelineTags])))
instance Property "Activate" Pipeline where
  type PropertyType "Activate" Pipeline = Value Prelude.Bool
  set newValue Pipeline {..}
    = Pipeline {activate = Prelude.pure newValue, ..}
instance Property "Description" Pipeline where
  type PropertyType "Description" Pipeline = Value Prelude.Text
  set newValue Pipeline {..}
    = Pipeline {description = Prelude.pure newValue, ..}
instance Property "Name" Pipeline where
  type PropertyType "Name" Pipeline = Value Prelude.Text
  set newValue Pipeline {..} = Pipeline {name = newValue, ..}
instance Property "ParameterObjects" Pipeline where
  type PropertyType "ParameterObjects" Pipeline = [ParameterObjectProperty]
  set newValue Pipeline {..}
    = Pipeline {parameterObjects = Prelude.pure newValue, ..}
instance Property "ParameterValues" Pipeline where
  type PropertyType "ParameterValues" Pipeline = [ParameterValueProperty]
  set newValue Pipeline {..}
    = Pipeline {parameterValues = Prelude.pure newValue, ..}
instance Property "PipelineObjects" Pipeline where
  type PropertyType "PipelineObjects" Pipeline = [PipelineObjectProperty]
  set newValue Pipeline {..}
    = Pipeline {pipelineObjects = Prelude.pure newValue, ..}
instance Property "PipelineTags" Pipeline where
  type PropertyType "PipelineTags" Pipeline = [PipelineTagProperty]
  set newValue Pipeline {..}
    = Pipeline {pipelineTags = Prelude.pure newValue, ..}