module Stratosphere.Pipes.Pipe.PipeTargetSageMakerPipelineParametersProperty (
        module Exports, PipeTargetSageMakerPipelineParametersProperty(..),
        mkPipeTargetSageMakerPipelineParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.SageMakerPipelineParameterProperty as Exports
import Stratosphere.ResourceProperties
data PipeTargetSageMakerPipelineParametersProperty
  = PipeTargetSageMakerPipelineParametersProperty {pipelineParameterList :: (Prelude.Maybe [SageMakerPipelineParameterProperty])}
mkPipeTargetSageMakerPipelineParametersProperty ::
  PipeTargetSageMakerPipelineParametersProperty
mkPipeTargetSageMakerPipelineParametersProperty
  = PipeTargetSageMakerPipelineParametersProperty
      {pipelineParameterList = Prelude.Nothing}
instance ToResourceProperties PipeTargetSageMakerPipelineParametersProperty where
  toResourceProperties
    PipeTargetSageMakerPipelineParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetSageMakerPipelineParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PipelineParameterList"
                              Prelude.<$> pipelineParameterList])}
instance JSON.ToJSON PipeTargetSageMakerPipelineParametersProperty where
  toJSON PipeTargetSageMakerPipelineParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PipelineParameterList"
                 Prelude.<$> pipelineParameterList]))
instance Property "PipelineParameterList" PipeTargetSageMakerPipelineParametersProperty where
  type PropertyType "PipelineParameterList" PipeTargetSageMakerPipelineParametersProperty = [SageMakerPipelineParameterProperty]
  set newValue PipeTargetSageMakerPipelineParametersProperty {}
    = PipeTargetSageMakerPipelineParametersProperty
        {pipelineParameterList = Prelude.pure newValue, ..}